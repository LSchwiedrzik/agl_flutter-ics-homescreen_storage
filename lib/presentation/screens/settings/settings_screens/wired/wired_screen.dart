import 'package:flutter_ics_homescreen/core/utils/helpers.dart';
import 'package:flutter_ics_homescreen/export.dart';
import 'package:get_ip_address/get_ip_address.dart';

class WiredPage extends ConsumerWidget {
  const WiredPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: WiredPage());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(body: WiredScreen());
  }
}

class WiredScreen extends StatefulWidget {
  const WiredScreen({super.key});

  @override
  State<WiredScreen> createState() => _WiredScreenState();
}

class _WiredScreenState extends State<WiredScreen> {
  String deviceIP = "192.168.234.120";
  @override
  void initState() {
    super.initState();
    getIPAddress();
  }

  getIPAddress() async {
    try {
      /// Initialize Ip Address
      var ipAddress = IpAddress(type: RequestType.text);

      /// Get the IpAddress based on requestType.
      dynamic data = await ipAddress.getIpAddress();
      setState(() {
        deviceIP = data.toString();
      });
    } on IpAddressException catch (exception) {
      /// Handle the exception.
      print(exception.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonTitle(
          title: 'Wired',
          hasBackButton: true,
          onPressed: () {
            context.flow<AppState>().update((state) => AppState.settings);
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 120, vertical: 40),
          padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 24),
          height: 140,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: const [
                  0,
                  0.01,
                  0.8
                ],
                colors: <Color>[
                  Colors.white,
                  AGLDemoColors.neonBlueColor,
                  AGLDemoColors.neonBlueColor.withOpacity(0.15)
                ]),
          ),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const SizedBox(
                //   width: 20,
                // ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'hernet_0090451v407b_cable',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                      Text(
                        'connected, $deviceIP',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 26),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: AGLDemoColors.buttonFillEnabledColor,
                      border: Border.all(color: AGLDemoColors.neonBlueColor),
                      boxShadow: [Helpers.boxDropShadowRegular]),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(4),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                        child: Text(
                          "Configure",
                          style: TextStyle(
                              color: AGLDemoColors.periwinkleColor,
                              fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: const Color(0xFF1C2D92),
                //     side:
                //         const BorderSide(color: Color(0xFF285DF4), width: 2),
                //   ),
                //   child: const Padding(
                //     padding:
                //         EdgeInsets.symmetric(vertical: 15.0, horizontal: 0),
                //     child: Text(
                //       'Configure',
                //       style: TextStyle(
                //         color: Color(0xFFC1D8FF),
                //         fontSize: 26,
                //       ),
                //     ),
                //   ),
                //   onPressed: () {},
                // ),
              ]),
        ),
      ],
    );
  }
}
