import 'package:flutter/material.dart';

class AutoText extends StatelessWidget {
  final String text;
  final double? spacing;
  final double? baseFontSize;
  final Color? color;
  final FontWeight? weight;
  final FontStyle? fontStyle;
  final String? fontFamily;
  final TextAlign? textAlign;
  final double? padding;

  const AutoText({
    super.key,
    required this.text,
    this.spacing,
    this.baseFontSize,
    this.color,
    this.weight,
    this.fontStyle,
    this.fontFamily,
    this.textAlign,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Font size: Uses user-defined size or scales based on screen width
    double fontSize = baseFontSize ?? (screenWidth * 0.05).clamp(12.0, 24.0);

    // Padding: Uses user-defined padding or defaults to dynamic scaling
    double appliedPadding = padding ?? screenWidth * 0.02;

    return Padding(
      padding: EdgeInsets.all(appliedPadding),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start, // Default alignment
        style: TextStyle(
          fontSize: fontSize,
          letterSpacing: spacing,
          fontWeight: weight,
          fontStyle: fontStyle,
          fontFamily: fontFamily,
          color: color ?? Colors.black, // Default color
        ),
      ),
    );
  }
}
