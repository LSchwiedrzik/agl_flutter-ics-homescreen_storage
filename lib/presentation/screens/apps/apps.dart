import '/export.dart';
import 'apps_content.dart';

class AppsPage extends StatelessWidget {
  const AppsPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: AppsPage());
  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // SizedBox(
        //   width: double.infinity,
        //   height: double.infinity,
        //   //color: Colors.black,
        //   // decoration:
        //   //   BoxDecoration(gradient: AGLDemoColors.gradientBackgroundColor),
        //   child: SvgPicture.asset(
        //     'assets/HVACBackground.svg',
        //     alignment: Alignment.center,
        //     fit: BoxFit.cover,
        //     //width: 200,
        //     //height: 200,
        //   ),
        // ),
        Apps(),
      ],
    );
  }
}
