import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/screens/media/media_player.dart';
import 'package:flutter_ics_homescreen/presentation/screens/media/radio_player.dart';
import 'widgets/media_volume_bar.dart';
import 'media_nav_notifier.dart';
import 'player_navigation.dart';

class MediaPage extends StatelessWidget {
  const MediaPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: MediaPage());
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
        //     'assets/Media.svg',
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
          child: Media(),
        )
      ],
    );
  }
}

class Media extends ConsumerStatefulWidget {
  const Media({super.key});

  @override
  ConsumerState<Media> createState() => _MediaState();
}

class _MediaState extends ConsumerState<Media> {
  //late MediaNavState selectedNav;

  //@override
  //initState() {
  //  selectedNav = ref.read(mediaNavStateProvider);
  //  super.initState();
  //}

  onPressed(MediaNavState type) {
    setState(() {
      if (type == MediaNavState.fm) {
        ref.read(mediaNavStateProvider.notifier).set(MediaNavState.fm);
        ref.read(radioClientProvider).start();
      } else if (type == MediaNavState.media) {
        ref.read(mediaNavStateProvider.notifier).set(MediaNavState.media);
        ref.read(radioClientProvider).stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var navState = ref.watch(mediaNavStateProvider);

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
              child: navState == MediaNavState.media
                  ? const MediaPlayer()
                  : navState == MediaNavState.fm
                      ? const RadioPlayer()
                      : Container(),
            ),
          ),
          if (navState == MediaNavState.media || navState == MediaNavState.fm)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 144, vertical: 23.5),
              child: CustomVolumeSlider(),
            ),
        ],
      ),
    );
  }
}
