import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';

class PlayListTable extends StatefulWidget {
  const PlayListTable(
      {super.key,
      required this.type,
      required this.tableName,
      required this.playList,
      required this.selectedPlayListSongName});
  final String type;
  final String tableName;
  final List<PlayListModel> playList;
  final String selectedPlayListSongName;

  @override
  State<PlayListTable> createState() => _PlayListTableState();
}

class _PlayListTableState extends State<PlayListTable> {
  bool isAudioSettingsEnabled = false;
  late String tableName;
  late List<PlayListModel> playList;
  late String selectedPlayListSongName;

  @override
  void initState() {
    tableName = widget.tableName;
    playList = widget.playList;
    selectedPlayListSongName = widget.selectedPlayListSongName;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      tableName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 40),
                    ),
                    if (widget.type == "media")
                      InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {},
                          child: Opacity(
                            opacity: 0.5,
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(
                                  "assets/AppleMusic.svg",
                                  width: 32,
                                )),
                          )),
                  ],
                ),
                InkWell(
                    customBorder: const CircleBorder(),
                    onTap: () {
                      setState(() {
                        isAudioSettingsEnabled = !isAudioSettingsEnabled;
                      });
                    },
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          "assets/${isAudioSettingsEnabled ? "AudioSettingsPressed.svg" : "AudioSettings.svg"}",
                          width: 48,
                        )))
              ],
            ),
            SizedBox(
              height: 325,
              child: SingleChildScrollView(
                child: Column(
                    children: playList.map((index) {
                  return Container(
                    height: 100,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    decoration: BoxDecoration(
                        border: Border(
                            left: selectedPlayListSongName == index.songName
                                ? const BorderSide(
                                    color: Colors.white, width: 4)
                                : BorderSide.none),
                        gradient: LinearGradient(
                            colors: selectedPlayListSongName == index.songName
                                ? [
                                    AGLDemoColors.neonBlueColor,
                                    AGLDemoColors.neonBlueColor
                                        .withOpacity(0.15)
                                  ]
                                : [
                                    Colors.black,
                                    Colors.black.withOpacity(0.20)
                                  ])),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          selectedPlayListSongName = index.songName;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 17, horizontal: 24),
                        child: Row(
                          children: [
                            Expanded(
                                flex: 6,
                                child: AutoSizeText(
                                  index.songName,
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      shadows: [Helpers.dropShadowRegular]),
                                )),
                            Expanded(
                                flex: 4,
                                child: Text(
                                  index.albumName,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 26,
                                      shadows: [Helpers.dropShadowRegular]),
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList()),
              ),
            ),
          ],
        ));
  }
}

class PlayListModel {
  final String songName;
  final String albumName;

  PlayListModel({required this.songName, required this.albumName});
}
