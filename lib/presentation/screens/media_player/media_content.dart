import 'package:flutter_ics_homescreen/export.dart';

class MediaPlayer extends StatefulWidget {
  const MediaPlayer({super.key});

  @override
  State<MediaPlayer> createState() => _MediaPlayerState();
}

class _MediaPlayerState extends State<MediaPlayer> {
  String selectedNav = "Bluetooth";
  List<String> navItems = ["Bluetooth", "SD", "USB"];

  late String songName = "Feel Good Inc.";

  String tableName = "2000’s Dance Hits";
  List<PlayListModel> playList = [
    PlayListModel(songName: "Feel Good Inc.", albumName: "Gorillaz"),
    PlayListModel(
        songName: "Hips Don’t Lie", albumName: "Shakira, Wyclef Jean"),
    PlayListModel(songName: "AG1", albumName: "Paid Advertisement"),
    PlayListModel(songName: "Hey Ya!", albumName: "Outkast"),
    PlayListModel(songName: "One, Two, Step", albumName: "Ciara, Missy Elliot"),
    PlayListModel(songName: "Don’t Trust Me", albumName: "3OH!3"),
  ];
  String selectedPlayListSongName = "Feel Good Inc.";

  @override
  Widget build(BuildContext context) {
    double albumArtSize = 460;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //    const PlayerNavigation(),
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
              "assets/AlbumArtMedia.png",
              width: albumArtSize,
              height: albumArtSize,
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MediaControls(
              songName: songName,
              songLengthStart: "-1:23",
              songLengthStop: "5:03",
              type: "media",
            ),
            const SizedBox(
              height: 72,
            ),
            PlayListTable(
              playList: playList,
              selectedPlayListSongName: selectedPlayListSongName,
              tableName: tableName,
              type: "media",
            ),
          ],
        )
      ],
    );
  }
}
