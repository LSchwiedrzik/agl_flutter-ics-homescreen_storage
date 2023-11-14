import '../../../../../../export.dart';
import 'slider_widgets.dart';

class AudioContent extends ConsumerWidget {
  const AudioContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 144),
      child: Column(
        children: [
          const Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTrebleSlider(),
                CustomBassSlider(),
                CustomRearFrontSlider(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150),
            child: GenericButton(
              heigth: 130,
              width: 420,
              text: 'Reset to Default',
              onTap: () {
                ref.read(audioStateProvider.notifier).resetToDefaults();
                },
              ),
           
          ),
        ],
      ),
    );
  }
}
