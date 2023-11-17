import 'package:flutter_ics_homescreen/presentation/screens/media_player/fm_player.dart';

import '/export.dart';
import 'widgets/media_volume_bar.dart';

class MediaPlayerPage extends StatelessWidget {
  const MediaPlayerPage({super.key});

  static Page<void> page() =>
      const MaterialPage<void>(child: MediaPlayerPage());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        // SizedBox(
        //   width: size.width,
        //   height: size.height,
        //   //color: Colors.black,
        //   // decoration:
        //   //   BoxDecoration(gradient: AGLDemoColors.gradientBackgroundColor),
        //   child: SvgPicture.asset(
        //     'assets/MediaPlayerBackground.svg',
        //     alignment: Alignment.center,
        //     fit: BoxFit.cover,
        //     //width: 200,
        //     //height: 200,
        //   ),
        // ),
        SizedBox(
          width: size.width,
          height: size.height,
          // color: Colors.black,
          child: SvgPicture.asset(
            'assets/MediaPlayerBackgroundTextures.svg',
            // alignment: Alignment.center,
            fit: BoxFit.cover,
            //width: 200,
            //height: 200,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal: 50),
          child: MediaPlayerBackground(),
        )
        //const MediaPlayer(),
      ],
    );
  }
}

class MediaPlayerBackground extends StatefulWidget {
  const MediaPlayerBackground({super.key});

  @override
  State<MediaPlayerBackground> createState() => _MediaPlayerBackgroundState();
}

class _MediaPlayerBackgroundState extends State<MediaPlayerBackground> {
  String selectedNav = "My Media";
  onPressed(type) {
    setState(() {
      selectedNav = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          PlayerNavigation(
            onPressed: (val) {
              onPressed(val);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: SingleChildScrollView(
              child: selectedNav == "My Media"
                  ? const MediaPlayer()
                  : selectedNav == "FM"
                      ? const FMPlayer()
                      : Container(),
            ),
          ),
          if (selectedNav == "My Media" || selectedNav == "FM")
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 144, vertical: 23.5),
              child: CustomVolumeSlider(),
            ),
        ],
      ),
    );
  }
}
