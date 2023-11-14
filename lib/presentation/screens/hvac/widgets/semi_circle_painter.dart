import 'package:flutter_ics_homescreen/export.dart';
import 'dart:math' as math;

class AnimatedColorPainter extends CustomPainter {
  final AnimationController animationController;
  final double progress;
  final Color progressColor; // New parameter for progress color
  final Color backgroundColor;
  final double strokeWidth;

  AnimatedColorPainter(this.animationController, this.progress,
      this.progressColor, this.backgroundColor, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    //  const strokeWidth = 25.0;
    const borderWidth = 2.0;

    // Divide the arc into equal parts based on the number of colors
    const arcAngle = math.pi;
    const arcPart = arcAngle / 3;
    const gapAngle = arcAngle / 150;

    // Calculate the current color index based on animation progress and progress value
    final double normalizedProgress = progress * 3;
    int currentColorIndex =
        (animationController.value * normalizedProgress).floor();
    if (progress == 0.0) {
      currentColorIndex = -1; // Force background color when progress is 0
    }
    // Draw each part with a border and inner color
    double startAngle = -math.pi; // Start from left
    for (int i = 0; i < 3; i++) {
      Color? currentColor = backgroundColor;
      if (i <= currentColorIndex) {
        // Use progress color if within progress range
        currentColor = progressColor;
      } else {
        // Use background color if outside progress range
        currentColor = backgroundColor;
      }

      // Draw border
      final borderPaint = Paint()
        ..strokeWidth = strokeWidth + borderWidth
        ..style = PaintingStyle.stroke
        ..color = Colors.white12;
      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        startAngle,
        arcPart - 2 * gapAngle,
        false, // Draw clockwise
        borderPaint,
      );

      // Draw inner color
      final colorPaint = Paint()
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke
        ..shader = _createColorShader(currentColor, size);
      canvas.drawArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
        startAngle,
        arcPart - 2 * gapAngle,
        false, // Draw clockwise
        colorPaint,
      );

      startAngle += arcPart + gapAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  Shader _createColorShader(Color color, Size size) {
    if (color == progressColor) {
      return const RadialGradient(
        center: Alignment.center,
        radius: 2,
        tileMode: TileMode.repeated,
        focal: Alignment.center,
        focalRadius: 8,
        colors: [
          AGLDemoColors.blueGlowFillColor,
          AGLDemoColors.jordyBlueColor,
          AGLDemoColors.neonBlueColor
        ],
      ).createShader(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2,
        ),
      );
    }
    return LinearGradient(colors: [color, color]).createShader(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2,
      ),
    );
  }
}
