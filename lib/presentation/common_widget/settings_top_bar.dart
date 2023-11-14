import '../../export.dart';

class SettingsTopBar extends ConsumerStatefulWidget
    implements PreferredSizeWidget {
  final String title;
  const SettingsTopBar(this.title, {super.key});

  @override
  SettingsTopBarState createState() => SettingsTopBarState();
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class SettingsTopBarState extends ConsumerState<SettingsTopBar> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF0D113F),
      leading: BackButton(
        onPressed: () {
          context.flow<AppState>().update((state) => AppState.settings);
        },
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 20),
      ),
      //centerTitle: true,
    );
  }
}
