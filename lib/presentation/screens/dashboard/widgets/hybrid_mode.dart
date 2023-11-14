import 'package:flutter_ics_homescreen/export.dart';

class HybridModel extends StatefulWidget {
  const HybridModel({super.key});

  @override
  State<HybridModel> createState() => _HybridModelState();
}

class _HybridModelState extends State<HybridModel> {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      child: const SizedBox(
        width: 500,
        height: 500,
        child: Stack(
          children: [
            HybridBackround(),
            TopArrow(),
            LeftArrow(),
            RightArrow(),
            BatteryHybrid(),
          ],
        ),
      ),
    );
  }
}
