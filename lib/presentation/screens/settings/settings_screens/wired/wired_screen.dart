import 'package:flutter_ics_homescreen/export.dart';

class WiredPage extends ConsumerWidget {
  const WiredPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: WiredPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          CommonTitle(
            title: 'Wired',
            hasBackButton: true,
            onPressed: () {
              context.flow<AppState>().update((state) => AppState.settings);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 80),
            child: Container(
              height: 130,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [
                      0,
                      0.01,
                      0.8
                    ],
                    colors: <Color>[
                      Colors.white,
                      Colors.blue,
                      Color.fromARGB(16, 41, 98, 255)
                    ]),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 41, horizontal: 24),

                title: const Text(
                  'hernet_0090451v407b_cable',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
                subtitle: const Text(
                  'connected, 192.168.234.120',
                  style: TextStyle(color: Colors.white, fontSize: 26),
                ),
                trailing: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1C2D92),
                    side: const BorderSide(color: Color(0xFF285DF4), width: 2),
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 0),
                    child: Text(
                      
                      'Configure',
                      style: TextStyle(
                        color: Color(0xFFC1D8FF),
                        fontSize: 26,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
