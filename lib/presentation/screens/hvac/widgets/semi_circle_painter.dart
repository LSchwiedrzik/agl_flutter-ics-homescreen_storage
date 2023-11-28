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

    // Divide the arc into equal parts based on the number of colors
    const arcAngle = math.pi;
    const arcPart = arcAngle / 3;
    const gapAngle = arcAngle / 150;

    // Define drop shadow properties
    const shadowOffset = Offset(0, 0);
    const shadowBlur = 12.0;
    const shadowColor = AGLDemoColors.jordyBlueColor;

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

      // Create paths for drop shadow and actual color
      final shadowPath = Path()
        ..addArc(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2) + shadowOffset,
            radius: size.width / 2,
          ),
          startAngle,
          arcPart - 2 * gapAngle,
          // Draw clockwise
        );
      final colorPath = Path()
        ..addArc(
          Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2),
            radius: size.width / 2,
          ),
          startAngle,
          arcPart - 2 * gapAngle,
          // Draw clockwise
        );

      // Draw drop shadow using offset and blur
      final shadowPaint = Paint()
        ..color = shadowColor
        ..style = PaintingStyle.fill
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, shadowBlur);
      if (currentColor == progressColor) {
        canvas.drawPath(shadowPath, shadowPaint);
      }

      // Draw border
      final borderPaint = Paint()
        ..strokeWidth = strokeWidth + 2.0 // Add border width
        ..style = PaintingStyle.stroke
        ..color = Colors.white12;
      canvas.drawPath(colorPath, borderPaint);

      // Draw inner color
      final colorPaint = Paint()
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke
        ..shader = _createColorShader(currentColor, size, i);
      canvas.drawPath(colorPath, colorPaint);

      startAngle += arcPart + gapAngle;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  Shader _createColorShader(Color color, Size size, int index) {
    Alignment alignment = index == 0
        ? const Alignment(-0.78, -0.38)
        : index == 1
            ? const Alignment(0, -1)
            : const Alignment(0.78, -0.38);
    if (color == progressColor) {
      return RadialGradient(
        center: alignment,
        radius: 0.35,
        focal: alignment,
        focalRadius: 0.02,
        colors: const [
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
