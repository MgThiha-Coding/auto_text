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
  final EdgeInsetsGeometry? padding;
  final TextOverflow? overFlow;
  final int? maxLines;
  final bool? softWrap;
  final double? lineHeight;

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
    this.overFlow,
    this.maxLines,
    this.softWrap,
    this.lineHeight,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // Adaptive font size based on both width and height
    double fontSize = baseFontSize ?? (screenWidth * 0.045).clamp(12.0, 26.0);

    return Padding(
      padding: padding ?? EdgeInsets.all(screenWidth * 0.02),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start,
        maxLines: maxLines,
        softWrap: softWrap,
        style: TextStyle(
          overflow: overFlow ?? TextOverflow.ellipsis,
          fontSize: fontSize,
          letterSpacing: spacing,
          fontWeight: weight,
          fontStyle: fontStyle,
          fontFamily: fontFamily,
          color: color ?? Colors.black,
          height: lineHeight, // Line height support
        ),
      ),
    );
  }
}
