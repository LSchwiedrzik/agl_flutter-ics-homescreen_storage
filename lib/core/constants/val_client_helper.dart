import 'package:protos/protos.dart';

class ValClientHelper {
  final VALClient stub;
  final String authorization;

  ValClientHelper({required this.stub, required this.authorization});

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
    if (authorization.isNotEmpty) {
      metadata = {'authorization': "Bearer ${authorization}"};
    }
    await stub.set(request, options: CallOptions(metadata: metadata));
  }
}
