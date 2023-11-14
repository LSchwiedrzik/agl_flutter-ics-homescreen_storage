import 'package:flutter_ics_homescreen/presentation/custom_icons/custom_icons.dart';

import '../../../../export.dart';
import '../../settings/settings_screens/audio_settings/widget/slider_widgets.dart';

class CustomVolumeSlider extends ConsumerStatefulWidget {
  const CustomVolumeSlider({
    super.key,
  });

  @override
  CustomVolumeSliderState createState() => CustomVolumeSliderState();
}

class CustomVolumeSliderState extends ConsumerState<CustomVolumeSlider> {
  void _increase() {
    setState(() {
      if (_currentVal < 20) {
        _currentVal++;
        ref.read(audioStateProvider.notifier).setVolume(_currentVal);
      }
    });
  }

  void _dercrease() {
    setState(() {
      if (_currentVal > 0) {
        _currentVal--;
        ref.read(audioStateProvider.notifier).setVolume(_currentVal);
      }
    });
  }

  double _currentVal = 5;
  @override
  Widget build(BuildContext context) {
    final volumeValue =
        ref.watch(audioStateProvider.select((audio) => audio.volume));

    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const ShapeDecoration(
            color: AGLDemoColors.buttonFillEnabledColor,
            shape: StadiumBorder(
                side: BorderSide(
              color: Color(0xFF5477D4),
              width: 0.5,
            )),
          ),
          height: 160,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  width: 50,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        _dercrease();
                      },
                      icon: const Icon(
                        CustomIcons.vol_min,
                        color: AGLDemoColors.periwinkleColor,
                        size: 48,
                      )),
                ),
              ),
              Expanded(
                child: SliderTheme(
                  data: SliderThemeData(
                    overlayShape: SliderComponentShape.noOverlay,
                    valueIndicatorShape: SliderComponentShape.noOverlay,
                    activeTickMarkColor: Colors.transparent,
                    inactiveTickMarkColor: Colors.transparent,
                    inactiveTrackColor: AGLDemoColors.backgroundInsetColor,
                    thumbShape: const PolygonSliderThumb(
                        sliderValue: 3, thumbRadius: 23),
                    //trackHeight: 5,
                  ),
                  child: Slider(
                    divisions: 20,
                    min: 0,
                    max: 20,
                    value: volumeValue,
                    onChanged: (newValue) {
                      ref.read(audioStateProvider.notifier).setVolume(newValue);
                      _currentVal = newValue;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: SizedBox(
                  width: 60,
                  child: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        _increase();
                      },
                      icon: const Icon(
                        CustomIcons.vol_max,
                        color: AGLDemoColors.periwinkleColor,
                        size: 48,
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
