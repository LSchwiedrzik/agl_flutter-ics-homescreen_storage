import 'package:flutter_ics_homescreen/export.dart';
import 'package:protos/protos.dart';

class ValClient {
  final KuksaConfig config;
  final Ref ref;
  late ClientChannel channel;
  late VALClient stub;
  late String authorization;

  ValClient({required this.config, required this.ref}) {
    debugPrint("Using ${config.hostname}:${config.port}");
    ChannelCredentials creds;
    if (config.use_tls && config.ca_certificate.isNotEmpty) {
      print("Using TLS");
      if (config.tls_server_name.isNotEmpty) {
        creds = ChannelCredentials.secure(
            certificates: config.ca_certificate,
            authority: config.tls_server_name);
      } else {
        creds = ChannelCredentials.secure(certificates: config.ca_certificate);
      }
    } else {
      creds = const ChannelCredentials.insecure();
    }
    channel = ClientChannel(config.hostname,
        port: config.port, options: ChannelOptions(credentials: creds));
    debugPrint('Start Listen on port: ${config.port}');
    stub = VALClient(channel);
  }

  void startListen() async {
    List<String> fewSignals = VSSPath().getSignalsList();
    var request = SubscribeRequest();
    Map<String, String> metadata = {};
    if (config.authorization.isNotEmpty) {
      metadata = {'authorization': "Bearer ${config.authorization}"};
    }
    for (int i = 0; i < fewSignals.length; i++) {
      var entry = SubscribeEntry();
      entry.path = fewSignals[i];
      entry.fields.add(Field.FIELD_PATH);
      entry.fields.add(Field.FIELD_VALUE);
      request.entries.add(entry);
    }
    try {
      var responseStream =
          stub.subscribe(request, options: CallOptions(metadata: metadata));
      responseStream.listen((value) async {
        for (var update in value.updates) {
          if (!(update.hasEntry() && update.entry.hasPath())) continue;
          handleSignalsUpdate(update);
        }
      }, onError: (stacktrace, errorDescriptor) {
        debugPrint(stacktrace.toString());
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  bool handleSignalsUpdate(EntryUpdate update) {
    if (ref.read(vehicleProvider.notifier).handleSignalsUpdate(update)) {
      return true;
    }
    return ref.read(audioStateProvider.notifier).handleSignalsUpdate(update);
  }

  void setUint32(String path, int value, [bool actuator = true]) async {
    var dp = Datapoint()..uint32 = value;
    set(path, dp, actuator);
  }

  void setInt32(String path, int value, [bool actuator = true]) async {
    var dp = Datapoint()..int32 = value;
    set(path, dp, actuator);
  }

  void setBool(String path, bool value, [bool actuator = true]) async {
    var dp = Datapoint()..bool_12 = value;
    set(path, dp, actuator);
  }

  void setString(String path, String value, [bool actuator = true]) async {
    var dp = Datapoint()..string = value;
    set(path, dp, actuator);
  }

  void setFloat(String path, double value, [bool actuator = true]) async {
    var dp = Datapoint()..float = value;
    set(path, dp, actuator);
  }

  void setDouble(String path, double value, [bool actuator = true]) async {
    var dp = Datapoint()..double_18 = value;
    set(path, dp, actuator);
  }

  void set(String path, Datapoint dp, bool actuator) async {
    var entry = DataEntry()..path = path;
    var update = EntryUpdate();
    if (actuator) {
      entry.actuatorTarget = dp;
      update.fields.add(Field.FIELD_ACTUATOR_TARGET);
    } else {
      entry.value = dp;
      update.fields.add(Field.FIELD_VALUE);
    }
    update.entry = entry;
    var request = SetRequest();
    request.updates.add(update);
    Map<String, String> metadata = {};
    if (config.authorization.isNotEmpty) {
      metadata = {'authorization': "Bearer ${config.authorization}"};
    }
    await stub.set(request, options: CallOptions(metadata: metadata));
  }
}
