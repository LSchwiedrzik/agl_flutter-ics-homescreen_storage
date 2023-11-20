import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';

class AppButton extends StatefulWidget {
  const AppButton(
      {super.key,
      required this.image,
      required this.title,
      required this.onPressed});
  final String image;
  final String title;
  final VoidCallback onPressed;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          boxShadow: [Helpers.boxDropShadowRegular],
          border: Border.all(color: AGLDemoColors.neonBlueColor),
          color: AGLDemoColors.buttonFillEnabledColor,
          borderRadius: BorderRadius.circular(4)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          onTap: widget.onPressed,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 6, bottom: 6),
                child: SvgPicture.asset(
                  "assets/${widget.image}",
                ),
              ),
              Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  shadows: [Helpers.dropShadowRegular],
                  color: AGLDemoColors.periwinkleColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
