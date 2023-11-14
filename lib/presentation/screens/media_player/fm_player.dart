import 'package:flutter_ics_homescreen/export.dart';

class FMPlayer extends StatefulWidget {
  const FMPlayer({super.key});

  @override
  State<FMPlayer> createState() => _FMPlayerState();
}

class _FMPlayerState extends State<FMPlayer> {
  String selectedNav = "Standard";
  List<String> navItems = [
    "Standard",
    "HD",
  ];
  String tableName = "Presets";
  List<PlayListModel> playList = [
    PlayListModel(songName: "93.1 The Mountain", albumName: "93.1"),
    PlayListModel(songName: "Mix 94.1", albumName: "94.1 MHz"),
    PlayListModel(songName: "96.3 KKLZ", albumName: "96.3 MHz"),
  ];
  String selectedPlayListSongName = "93.1 The Mountain";
  @override
  Widget build(BuildContext context) {
    double fmSignalHeight = 460;
    double fmSignalWidth = 460;

    return Container(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SegmentedButtons(
            navItems: navItems,
            selectedNav: selectedNav,
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/AlbumArtFM.png",
                width: fmSignalWidth,
                height: fmSignalHeight,
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Column(
            children: [
              const MediaControls(
                songName: "87.9",
                songLengthStart: "87.9 MHz",
                songLengthStop: "87.9 MHz",
                type: "fm",
              ),
              const SizedBox(
                height: 70,
              ),
              PlayListTable(
                playList: playList,
                selectedPlayListSongName: selectedPlayListSongName,
                tableName: tableName,
                type: "fm",
              ),
            ],
          )
        ],
      ),
    );
  }
}
