import '../../../../../../export.dart';

class Wifi {
  final Icon icon;
  final String name;
  final bool? isConnected;
  Wifi({
    required this.icon,
    required this.name,
    this.isConnected = false,
  });
}
