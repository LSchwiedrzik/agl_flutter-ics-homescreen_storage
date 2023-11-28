import 'package:flutter_ics_homescreen/export.dart';
// import 'package:media_kit_video/media_kit_video.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // player.dispose();
    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Consumer(builder: (context, ref, child) {
      final state = ref.read(appProvider);
      const disableBkgAnimation = bool.fromEnvironment('DISABLE_BKG_ANIMATION');
      if (disableBkgAnimation) {
        print('Background animation: disabled');
      }
      return Scaffold(
        key: homeScaffoldKey,
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: const CustomTopBar(),
        body: Stack(
          children: [
            if (!disableBkgAnimation)
              Lottie.asset(
                'animations/BG-dotwaveform.json',
                fit: BoxFit.cover,
                repeat: true,
              ),
            FlowBuilder<AppState>(
              state: ref.watch(appProvider),
              onGeneratePages: onGenerateAppViewPages,
              observers: [
                HeroController(),
              ],
            ),
            if (state != AppState.splash)
              Positioned(
                top: 0,
                bottom: 0,
                child: Container(
                    padding: const EdgeInsets.only(left: 8),
                    height: 500,
                    child: const VolumeFanControl()),
              ),
          ],
        ),
        bottomNavigationBar:
            state == AppState.splash ? null : const CustomBottomBar(),
      );
    });
  }
}
