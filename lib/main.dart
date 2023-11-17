import 'package:device_preview/device_preview.dart';

import 'export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const debugDisplay = bool.fromEnvironment('DEBUG_DISPLAY');
  runApp(DevicePreview(
    enabled: debugDisplay,
    tools: const [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const App(),
  ));
}
