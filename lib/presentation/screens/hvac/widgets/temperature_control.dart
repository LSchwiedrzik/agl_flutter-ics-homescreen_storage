import 'package:flutter_ics_homescreen/export.dart';

class TemperatureControl extends StatefulWidget {
  const TemperatureControl({super.key, required this.temperature});
  final int temperature;

  @override
  State<TemperatureControl> createState() => _TemperatureControlState();
}

class _TemperatureControlState extends State<TemperatureControl> {
  int temperature = 0;
  bool isUpButtonHighlighted = false;
  bool isDownButtonHighlighted = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      temperature = widget.temperature;
    });
  }

  onPressed({required String type}) {
    setState(() {
      if (type == "add") {
        temperature = temperature + 1;
      } else if (type == "subtract") {
        temperature = temperature - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 32;
    double height = MediaQuery.sizeOf(context).height * 0.0417;
    double width = MediaQuery.sizeOf(context).width * 0.2112;

    return Column(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onHighlightChanged: (value) {
              setState(() {
                isUpButtonHighlighted = value;
              });
            },
            onTap: () {
              onPressed(type: "add");
            },
            child: SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                    "assets/${isUpButtonHighlighted ? 'UpPressed' : 'Up'}.png")),
          ),
        ),
        // ClipRect(
        //   clipper: MyCustomClipper(type: "top"),
        //   child: ClipRRect(
        //     borderRadius: const BorderRadius.only(
        //         bottomLeft: Radius.circular(22),
        //         bottomRight: Radius.circular(22)),
        //     child: Container(
        //       height: height,
        //       width: width,
        //       decoration: BoxDecoration(
        //           boxShadow: [
        //             BoxShadow(
        //                 offset: const Offset(1, 2),
        //                 blurRadius: 3,
        //                 color: Colors.black.withOpacity(0.7)),
        //           ],
        //           gradient: LinearGradient(colors: [
        //             AGLDemoColors.neonBlueColor,
        //             AGLDemoColors.neonBlueColor.withOpacity(0.20)
        //           ]),
        //           borderRadius: const BorderRadius.only(
        //               topLeft: Radius.circular(100),
        //               topRight: Radius.circular(100),
        //               bottomLeft: Radius.circular(10),
        //               bottomRight: Radius.circular(10))),
        //       child: Container(
        //         margin: const EdgeInsets.all(1),
        //         decoration: const BoxDecoration(
        //             color: AGLDemoColors.buttonFillEnabledColor,
        //             borderRadius: BorderRadius.only(
        //                 topLeft: Radius.circular(100),
        //                 topRight: Radius.circular(100),
        //                 bottomLeft: Radius.circular(10),
        //                 bottomRight: Radius.circular(10))),
        //         child: Material(
        //           color: Colors.transparent,
        //           child: InkWell(
        //             onTap: () {
        //               onPressed(type: "add");
        //             },
        //             child: Padding(
        //               padding: const EdgeInsets.only(bottom: 10),
        //               child: Icon(
        //                 Icons.arrow_upward,
        //                 color: Colors.white,
        //                 size: iconSize,
        //                 shadows: [
        //                   BoxShadow(
        //                       offset: const Offset(1, 2),
        //                       blurRadius: 3,
        //                       color: Colors.black.withOpacity(0.7)),
        //                 ],
        //               ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            "$temperature°C",
            style: GoogleFonts.brunoAce(fontSize: 44, height: 1.25),
          ),
        ),
        Material(
          color: Colors.transparent,
          child: InkWell(
            onHighlightChanged: (value) {
              setState(() {
                isDownButtonHighlighted = value;
              });
            },
            onTap: () {
              onPressed(type: "subtract");
            },
            child: SizedBox(
                height: height,
                width: width,
                child: Image.asset(
                    "assets/${isDownButtonHighlighted ? 'DownPressed' : 'Down'}.png")),
          ),
        ),
        // ClipRect(
        //     clipper: MyCustomClipper(type: "bottom"),
        //     child: ClipRRect(
        //       borderRadius: const BorderRadius.only(
        //           topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        //       child: Container(
        //           height: height,
        //           width: width,
        //           decoration: BoxDecoration(
        //               boxShadow: [
        //                 BoxShadow(
        //                     offset: const Offset(1, 2),
        //                     blurRadius: 3,
        //                     color: Colors.black.withOpacity(0.7)),
        //               ],
        //               gradient: LinearGradient(colors: [
        //                 AGLDemoColors.neonBlueColor,
        //                 AGLDemoColors.neonBlueColor.withOpacity(0.20)
        //               ]),
        //               border: Border.all(color: Colors.white12),
        //               borderRadius: const BorderRadius.only(
        //                   bottomLeft: Radius.circular(100),
        //                   bottomRight: Radius.circular(100),
        //                   topLeft: Radius.circular(10),
        //                   topRight: Radius.circular(10))),
        //           child: Container(
        //             margin: const EdgeInsets.all(1),
        //             decoration: const BoxDecoration(
        //                 color: AGLDemoColors.buttonFillEnabledColor,
        //                 borderRadius: BorderRadius.only(
        //                     bottomLeft: Radius.circular(100),
        //                     bottomRight: Radius.circular(100),
        //                     topLeft: Radius.circular(10),
        //                     topRight: Radius.circular(10))),
        //             child: Material(
        //               color: Colors.transparent,
        //               child: InkWell(
        //                 onTap: () {
        //                   onPressed(type: "subtract");
        //                 },
        //                 child: Padding(
        //                   padding: const EdgeInsets.only(top: 10),
        //                   child: Icon(
        //                     Icons.arrow_downward,
        //                     color: Colors.white,
        //                     size: iconSize,
        //                     shadows: [
        //                       BoxShadow(
        //                           offset: const Offset(1, 2),
        //                           blurRadius: 3,
        //                           color: Colors.black.withOpacity(0.7)),
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //             ),
        //           )),
        //     )),
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Rect> {
  final String type;

  MyCustomClipper({super.reclip, required this.type});
  @override
  Rect getClip(Size size) {
    // Clip 10 pixels from the top of the container
    return Rect.fromPoints(
      Offset(0, type == "top" ? 0 : 10),
      Offset(size.width, type == "top" ? size.height - 10 : size.height),
    );
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return false;
  }
}

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 5.0;

    final path = Path();

    // Draw the top part of the oval
    path.moveTo(0.0, size.height / 2.0);
    path.quadraticBezierTo(
        size.width / 3.0, size.height / 2.0, size.width / 2.0, size.height);

    // Draw the straight line for the bottom part
    path.lineTo(size.width / 2.0, size.height);

    // Draw the left part of the oval
    path.quadraticBezierTo(size.width / 3.0, 0.0, 0.0, 0.0);

    // Close the path
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
