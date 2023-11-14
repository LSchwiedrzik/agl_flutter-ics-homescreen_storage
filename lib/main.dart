import 'package:device_preview/device_preview.dart';

import 'export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // MediaKit.ensureInitialized(); //replace with lottie
  runApp(DevicePreview(
    enabled: false, // Chnage to false to disable device preview
    tools: const [
      ...DevicePreview.defaultTools,
    ],
    builder: (context) => const App(),
  ));
}
