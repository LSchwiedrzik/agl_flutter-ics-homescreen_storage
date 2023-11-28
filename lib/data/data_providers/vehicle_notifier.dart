// ignore_for_file: unused_local_variable

import 'dart:async';

import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter/services.dart';
import 'package:protos/protos.dart';

class KuksaConfig {
  final String hostname;
  final int port;
  final String authorization;
  final bool use_tls;
  final List<int> ca_certificate;
  final String tls_server_name;

  static String configFilePath = '/etc/xdg/AGL/ics-homescreen.yaml';
  static String defaultHostname = 'localhost';
  static int defaultPort = 55555;
  static String defaultCaCertPath = '/etc/kuksa-val/CA.pem';

  KuksaConfig(
      {required this.hostname,
      required this.port,
      required this.authorization,
      required this.use_tls,
      required this.ca_certificate,
      required this.tls_server_name});
}

class VehicleNotifier extends StateNotifier<Vehicle> {
  VehicleNotifier(super.state);

  late ClientChannel channel;
  late String authorization;
  late VALClient stub;

  void updateSpeed(double newValue) {
    state = state.copyWith(speed: newValue);
  }

  void handleSignalsUpdate(EntryUpdate update) {
    switch (update.entry.path) {
      case VSSPath.vehicleSpeed:
        if (update.entry.value.hasFloat()) {
          state = state.copyWith(speed: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleInsideTemperature:
        if (update.entry.value.hasFloat()) {
          state = state.copyWith(insideTemperature: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleOutsideTemperature:
        if (update.entry.value.hasFloat()) {
          state = state.copyWith(outsideTemperature: update.entry.value.float);
        }
        break;
      case VSSPath.vehicleRange:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(range: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleFuelLevel:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(fuelLevel: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleMediaVolume:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(mediaVolume: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleIsChildLockActiveLeft:
        if (update.entry.value.hasBool_12()) {
          state =
              state.copyWith(isChildLockActiveLeft: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleIsChildLockActiveRight:
        if (update.entry.value.hasBool_12()) {
          state = state.copyWith(
              isChildLockActiveRight: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleEngineSpeed:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(engineSpeed: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleFrontLeftTire:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(frontLeftTire: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleFrontRightTire:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(frontRightTire: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleRearLeftTire:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(rearLeftTire: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleRearRightTire:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(rearRightTire: update.entry.value.uint32);
        }
        break;

      case VSSPath.vehicleIsAirConditioningActive:
        if (update.entry.value.hasBool_12()) {
          state = state.copyWith(
              isAirConditioningActive: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleIsFrontDefrosterActive:
        if (update.entry.value.hasBool_12()) {
          state = state.copyWith(
              isFrontDefrosterActive: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleIsRearDefrosterActive:
        if (update.entry.value.hasBool_12()) {
          state =
              state.copyWith(isRearDefrosterActive: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleIsRecirculationActive:
        if (update.entry.value.hasBool_12()) {
          state =
              state.copyWith(isRecirculationActive: update.entry.value.bool_12);
        }
        break;
      case VSSPath.vehicleFanSpeed:
        if (update.entry.value.hasUint32()) {
          state = state.copyWith(fanSpeed: update.entry.value.uint32);
        }
        break;
      case VSSPath.vehicleDriverTemperature:
        if (update.entry.value.hasInt32()) {
          state = state.copyWith(driverTemperature: update.entry.value.int32);
        }
        break;
      case VSSPath.vehiclePassengerTemperature:
        if (update.entry.value.hasInt32()) {
          state =
              state.copyWith(passengerTemperature: update.entry.value.int32);
        }
        break;
      // default:
      //   debugPrint("ERROR: Unexpected path ${update.entry.path}");
      //   break;
    }
  }

  Future<KuksaConfig> readConfig() async {
    String hostname = KuksaConfig.defaultHostname;
    int port = KuksaConfig.defaultPort;
    bool useTls = false;
    String caPath = KuksaConfig.defaultCaCertPath;
    List<int> caCert = [];
    String tlsServerName = "";
    String token = "";

    // Read build time configuration from bundle
    try {
      var data = await rootBundle.loadString('app-config/config.yaml');
      final dynamic yamlMap = loadYaml(data);

      if (yamlMap.containsKey('hostname')) {
        hostname = yamlMap['hostname'];
      }

      if (yamlMap.containsKey('port')) {
        port = yamlMap['port'];
      }

      if (yamlMap.containsKey('use-tls')) {
        var value = yamlMap['use-tls'];
        if (value is bool) {
          useTls = value;
        }
      }

      if (useTls) {
        if (yamlMap.containsKey('ca-certificate')) {
          caPath = yamlMap['ca-certificate'];
        }

        if (yamlMap.containsKey('tls-server-name')) {
          tlsServerName = yamlMap['tls_server_name'];
        }
      }

      if (yamlMap.containsKey('authorization')) {
        token = yamlMap['authorization'];
      }
    } catch (e) {
      //debugPrint('ERROR: Could not read from file: $configFile');
      debugPrint(e.toString());
    }

    // Try reading from configuration file in /etc
    final configFile = File(KuksaConfig.configFilePath);
    try {
      print("Reading configuration ${KuksaConfig.configFilePath}");
      String content = await configFile.readAsString();
      final dynamic yamlMap = loadYaml(content);

      if (yamlMap.containsKey('hostname')) {
        hostname = yamlMap['hostname'];
      }

      if (yamlMap.containsKey('port')) {
        port = yamlMap['port'];
      }

      if (yamlMap.containsKey('use-tls')) {
        var value = yamlMap['use-tls'];
        if (value is bool) {
          useTls = value;
        }
      }
      //debugPrint("Use TLS = $use_tls");

      if (useTls) {
        if (yamlMap.containsKey('ca-certificate')) {
          caPath = yamlMap['ca-certificate'];
        }
        try {
          caCert = File(caPath).readAsBytesSync();
        } on Exception catch (_) {
          print("ERROR: Could not read CA certificate file $caPath");
          caCert = [];
        }
        //debugPrint("CA cert = $ca_cert");

        if (yamlMap.containsKey('tls-server-name')) {
          tlsServerName = yamlMap['tls_server_name'];
        }
      }

      if (yamlMap.containsKey('authorization')) {
        token = yamlMap['authorization'];
      }
      if (token.isNotEmpty) {
        if (token.startsWith("/")) {
          debugPrint("Reading authorization token $token");
          String tokenFile = token;
          try {
            token = await File(tokenFile).readAsString();
          } on Exception catch (_) {
            print("ERROR: Could not read authorization token file $token");
            token = "";
          }
        }
      }
      //debugPrint("authorization = $token");
    } catch (e) {
      debugPrint('WARNING: Could not read from file: $configFile');
      //debugPrint(e.toString());
    }
    return KuksaConfig(
        hostname: hostname,
        port: port,
        authorization: token,
        use_tls: useTls,
        ca_certificate: caCert,
        tls_server_name: tlsServerName);
  }

  void startListen() async {
    KuksaConfig config = await readConfig();
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
    authorization = config.authorization;
    List<String> fewSignals = VSSPath().getSignalsList();
    var request = SubscribeRequest();
    for (int i = 0; i < fewSignals.length; i++) {
      var entry = SubscribeEntry();
      entry.path = fewSignals[i];
      entry.fields.add(Field.FIELD_PATH);
      entry.fields.add(Field.FIELD_VALUE);
      request.entries.add(entry);
      // _stub.subscribe(request).listen((value) async {
      //   //debugPrint(value.toString());
      // });
    }
    try {
      Map<String, String> metadata = {};
      //var responseStream = _stub.subscribe(request);
      stub.subscribe(request).listen((value) async {
        for (var update in value.updates) {
          if (!(update.hasEntry() && update.entry.hasPath())) continue;
          handleSignalsUpdate(update);
        }
      }, onError: (stacktrace, errorDescriptor) {
        debugPrint(stacktrace.toString());
        state = const Vehicle.initialForDebug();
      });
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setChildLock({required String side}) async {
    var helper = ValClientHelper(stub: stub, authorization: authorization);
    try {
      switch (side) {
        case 'left':
          helper.setBool(
            VSSPath.vehicleIsChildLockActiveLeft,
            !state.isChildLockActiveLeft,
            false,
          );
          state = state.copyWith(
              isChildLockActiveLeft: !state.isChildLockActiveLeft);
          break;
        case 'right':
          helper.setBool(
            VSSPath.vehicleIsChildLockActiveRight,
            !state.isChildLockActiveRight,
            false,
          );
          state = state.copyWith(
              isChildLockActiveRight: !state.isChildLockActiveRight);
          break;
        default:
          debugPrint("ERROR: Unexpected side value $side}");
          break;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setVolume(double newVal) {
    state = state.copyWith(mediaVolume: newVal.toInt());
    var helper = ValClientHelper(stub: stub, authorization: authorization);
    helper.setUint32(
      VSSPath.vehicleMediaVolume,
      newVal.toInt(),
      false,
    );
  }

  void setTemperature({required Side side, required int value}) {
    var helper = ValClientHelper(stub: stub, authorization: authorization);
    try {
      switch (side) {
        case Side.left:
          helper.setInt32(
            VSSPath.vehicleDriverTemperature,
            value,
            false,
          );
          state = state.copyWith(driverTemperature: value);
          break;
        case Side.right:
          helper.setInt32(
            VSSPath.vehiclePassengerTemperature,
            value,
            false,
          );
          state = state.copyWith(passengerTemperature: value);
          break;
        default:
          debugPrint("ERROR: Unexpected side value $side}");
          break;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void updateFanSpeed(int newValue) {
    state = state.copyWith(fanSpeed: newValue);
  }

  void setHVACMode({required String mode}) {
    var helper = ValClientHelper(stub: stub, authorization: authorization);
    try {
      switch (mode) {
        case 'airCondition':
          helper.setBool(
            VSSPath.vehicleIsAirConditioningActive,
            !state.isAirConditioningActive,
            false,
          );
          state = state.copyWith(
              isAirConditioningActive: !state.isAirConditioningActive);
          break;
        case 'frontDefrost':
          helper.setBool(
            VSSPath.vehicleIsFrontDefrosterActive,
            !state.isFrontDefrosterActive,
            false,
          );
          state = state.copyWith(
              isFrontDefrosterActive: !state.isFrontDefrosterActive);
          break;
        case 'rearDefrost':
          helper.setBool(
            VSSPath.vehicleIsRearDefrosterActive,
            !state.isRearDefrosterActive,
            false,
          );
          state = state.copyWith(
              isRearDefrosterActive: !state.isRearDefrosterActive);
          break;
        case 'recirculation':
          helper.setBool(
            VSSPath.vehicleIsRecirculationActive,
            !state.isRecirculationActive,
            false,
          );
          state = state.copyWith(
              isRecirculationActive: !state.isRecirculationActive);
          break;
        default:
          debugPrint("ERROR: Unexpected mode value $mode}");
          break;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void setInitialState() {
    var speed = state.speed;
    var rpm = state.engineSpeed;
    var fuelLevel = state.fuelLevel;
    var insideTemp = state.insideTemperature;
    var outsideTemp = state.outsideTemperature;
    var range = state.range;
    var psi = state.frontLeftTire;
    var actualSpeed = 0.0;
    var actualRpm = 0;
    var actualFuelLevel = 0.0;
    var actualInsideTemp = 0.0;
    var actualOutsideTemp = 0.0;
    var actualRange = 0;
    var actualPsi = 0;

    state = const Vehicle.initial();
    Timer speedTimer =
        Timer.periodic(const Duration(milliseconds: 600), (timer) {
      actualSpeed = actualSpeed + 10;

      if (actualSpeed > speed) {
        actualSpeed = speed;

        timer.cancel();
      }
      state = state.copyWith(speed: actualSpeed);
    });
    Timer rpmTimer = Timer.periodic(const Duration(milliseconds: 400), (timer) {
      actualRpm = actualRpm + 150;

      if (actualRpm > rpm) {
        actualRpm = rpm;
        timer.cancel();
      }
      state = state.copyWith(engineSpeed: actualRpm);
    });
    Timer fuelLevelTimer =
        Timer.periodic(const Duration(milliseconds: 400), (timer) {
      actualFuelLevel = actualFuelLevel + 1;

      if (actualFuelLevel > fuelLevel) {
        actualFuelLevel = fuelLevel.toDouble();

        timer.cancel();
      }
      state = state.copyWith(fuelLevel: actualFuelLevel.toInt());
    });
    Timer outsideTemperatureTimer =
        Timer.periodic(const Duration(milliseconds: 300), (timer) {
      actualOutsideTemp = actualOutsideTemp + 0.5;

      if (actualOutsideTemp > outsideTemp) {
        actualOutsideTemp = outsideTemp;

        timer.cancel();
      }
      state = state.copyWith(outsideTemperature: actualOutsideTemp);
    });
    Timer insideTemperatureTimer =
        Timer.periodic(const Duration(milliseconds: 300), (timer) {
      actualInsideTemp = actualInsideTemp + 0.5;

      if (actualInsideTemp > insideTemp) {
        actualInsideTemp = insideTemp;

        timer.cancel();
      }
      state = state.copyWith(insideTemperature: actualInsideTemp);
    });
    Timer rangeTimer =
        Timer.periodic(const Duration(milliseconds: 300), (timer) {
      actualRange = actualRange + 5;

      if (actualRange > range) {
        actualRange = range;

        timer.cancel();
      }
      state = state.copyWith(range: actualRange);
    });
    Timer psiTimer =
        Timer.periodic(const Duration(milliseconds: 1200), (timer) {
      actualPsi = actualPsi + 5;

      if (actualPsi > psi) {
        actualPsi = psi;

        timer.cancel();
      }
      state = state.copyWith(
        frontLeftTire: actualPsi,
        rearLeftTire: actualPsi,
        frontRightTire: actualPsi,
        rearRightTire: actualPsi,
      );
    });
  }
}
