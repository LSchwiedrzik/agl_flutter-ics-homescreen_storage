import 'package:flutter_ics_homescreen/export.dart';

class HybridBackround extends StatelessWidget {
  const HybridBackround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset('animations/hybrid_model/hybrid_bg.svg');
  }
}

class TopArrow extends StatelessWidget {
  const TopArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.75),
      child: Consumer(builder: (context, ref, child) {
        final state = ref.watch(hybridtateProvider.select((hybrid) => hybrid));
        Widget? widget;
        switch (state.topArrowState) {
          case ArrowState.blue:
            widget = SvgPicture.asset(
              'animations/hybrid_model/top_blue.svg',
            );
            break;
          case ArrowState.red:
            widget = Lottie.asset('animations/hybrid_model/top_arrow_red.json');

            break;

          default:
        }

        return widget ??
            SvgPicture.asset(
              'animations/hybrid_model/left_blue.svg',
            );
      }),
    );
  }
}

class LeftArrow extends StatelessWidget {
  const LeftArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(-0.7, 0.5),
      child: Consumer(builder: (context, ref, child) {
        final state = ref.watch(hybridtateProvider.select((hybrid) => hybrid));
        Widget? widget;
        switch (state.leftArrowState) {
          case ArrowState.blue:
            widget = SvgPicture.asset(
              'animations/hybrid_model/left_blue.svg',
            );
            break;
          case ArrowState.red:
            widget =
                Lottie.asset('animations/hybrid_model/left_arrow_red.json');

            break;

          default:
        }

        return widget ??
            SvgPicture.asset(
              'animations/hybrid_model/left_blue.svg',
            );
      }),
    );
  }
}

class RightArrow extends StatelessWidget {
  const RightArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.70, 0.5),
      child: Consumer(builder: (context, ref, child) {
        final state = ref.watch(hybridtateProvider.select((hybrid) => hybrid));

        Widget? widget;
        switch (state.rightArrowState) {
          case ArrowState.blue:
            widget = SvgPicture.asset(
              'animations/hybrid_model/right_blue.svg',
            );
            break;
          case ArrowState.yellow:
            widget =
                Lottie.asset('animations/hybrid_model/right_arrow_yellow.json');

            break;
          case ArrowState.green:
            widget =
                Lottie.asset('animations/hybrid_model/right_arrow_green.json');

            break;
          default:
        }

        return widget ??
            SvgPicture.asset(
              'animations/hybrid_model/right_blue.svg',
            );
      }),
    );
  }
}

class BatteryHybrid extends ConsumerWidget {
  const BatteryHybrid({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batteryState =
        ref.watch(hybridtateProvider.select((hybrid) => hybrid.batteryState));
    return Align(
      alignment: const Alignment(0, 0.8),
      child: SvgPicture.asset(
        'animations/hybrid_model/battery_${batteryState.name}.svg',
      ),
    );
  }
}
