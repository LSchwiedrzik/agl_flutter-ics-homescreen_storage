import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:flutter_ics_homescreen/presentation/screens/media/widgets/gradient_progress_indicator.dart';

class MediaPlayerControls extends StatefulWidget {
  const MediaPlayerControls(
      {super.key,
      required this.songName,
      required this.songLengthStart,
      required this.songLengthStop});

  final String songName;
  final String songLengthStart;
  final String songLengthStop;

  @override
  State<MediaPlayerControls> createState() => _MediaPlayerControlsState();
}

class _MediaPlayerControlsState extends State<MediaPlayerControls> {
  late String songName;
  late String songLengthStart;
  late String songLengthStop;
  final String albumName = "Gorillaz";

  int songProgress = 20;

  @override
  void initState() {
    songName = widget.songName;
    songLengthStart = widget.songLengthStart;
    songLengthStop = widget.songLengthStop;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          songName,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              shadows: [Helpers.dropShadowRegular],
              fontSize: 44),
        ),
        MediaPlayerControlsubDetails(
          albumName: albumName,
        ),
        Column(children: [
          GradientProgressIndicator(
            percent: songProgress,
            type: "media",
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AGLDemoColors.jordyBlueColor,
                  AGLDemoColors.jordyBlueColor.withOpacity(0.8),
                ]),
            backgroundColor: AGLDemoColors.gradientBackgroundDarkColor,
          ),
          // const LinearProgressIndicator(
          //   backgroundColor: AGLDemoColors.gradientBackgroundDarkColor,
          //   color: Colors.white70,
          //   minHeight: 8,
          //   value: 0.7,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  songLengthStart,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      shadows: [Helpers.dropShadowRegular]),
                ),
                Text(
                  songLengthStop,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      shadows: [Helpers.dropShadowRegular]),
                )
              ],
            ),
          ),
        ]),
        const MediaPlayerActions(),
      ]),
    );
  }
}

class MediaPlayerControlsubDetails extends StatefulWidget {
  const MediaPlayerControlsubDetails({super.key, required this.albumName});
  final String albumName;

  @override
  State<MediaPlayerControlsubDetails> createState() =>
      _MediaPlayerControlsubDetailsState();
}

class _MediaPlayerControlsubDetailsState
    extends State<MediaPlayerControlsubDetails> {
  bool isShuffleEnabled = false;
  bool isRepeatEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.albumName,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 40,
              shadows: [Helpers.dropShadowRegular]),
        ),
        Row(
          children: [
            InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  setState(() {
                    isShuffleEnabled = !isShuffleEnabled;
                  });
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/${isShuffleEnabled ? "ShufflePressed.svg" : "Shuffle.svg"}",
                      width: 48,
                    ))),
            InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  setState(() {
                    isRepeatEnabled = !isRepeatEnabled;
                  });
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      "assets/${isRepeatEnabled ? "RepeatPressed.svg" : "Repeat.svg"}",
                      width: 48,
                    ))),
          ],
        )
      ],
    );
  }
}

class MediaPlayerActions extends StatefulWidget {
  const MediaPlayerActions({super.key});

  @override
  State<MediaPlayerActions> createState() => _MediaPlayerActionsState();
}

class _MediaPlayerActionsState extends State<MediaPlayerActions> {
  bool isPressed = false;
  bool isPlaying = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/SkipPrevious.svg",
                width: 48,
              ),
            )),
        const SizedBox(
          width: 120,
        ),
        InkWell(
            customBorder: const CircleBorder(),
            onTap: () {
              setState(() {
                isPlaying = !isPlaying;
              });
            },
            onTapDown: (details) {
              setState(() {
                isPressed = true;
              });
            },
            onTapUp: (details) {
              isPressed = false;
            },
            child: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      isPressed ? Colors.white : AGLDemoColors.periwinkleColor,
                  boxShadow: [Helpers.boxDropShadowRegular]),
              child: Icon(
                isPlaying ? Icons.pause : Icons.play_arrow,
                color: AGLDemoColors.resolutionBlueColor,
                size: 60,
              ),
            )),
        const SizedBox(
          width: 120,
        ),
        InkWell(
            customBorder: const CircleBorder(),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                "assets/SkipNext.svg",
                width: 48,
              ),
            )),
      ],
    );
  }
}
