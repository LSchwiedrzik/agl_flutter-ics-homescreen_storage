import '../../../../../../export.dart';

class Bluetooth {
  final Icon icon;
  final String name;
  final bool? isConnected;
  Bluetooth({
    required this.icon,
    required this.name,
    this.isConnected = false,
  });
}
