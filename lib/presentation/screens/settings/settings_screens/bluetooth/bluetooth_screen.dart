import 'package:flutter_ics_homescreen/export.dart';
import 'widgets/bluetooth_content.dart';

class BluetoothPage extends ConsumerWidget {
  const BluetoothPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: BluetoothPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(body: BluetoothContent());
  }
}
