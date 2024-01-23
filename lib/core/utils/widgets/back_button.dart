import 'package:flutter_ics_homescreen/export.dart';

class CustomBackButton extends ConsumerWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BackButton(
      onPressed: () {
        ref.read(appProvider.notifier).update(AppState.home);
      },
    );
  }
}
