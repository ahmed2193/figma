import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextLato extends StatelessWidget {
  final String label;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? height;
  final TextOverflow? textOverflow;
  final int? maxLines;
  const TextLato(this.label,
      {this.color,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.textAlign,
      this.textOverflow,
      this.maxLines,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(label,
        textAlign: textAlign,
        overflow: textOverflow,
        maxLines: maxLines,

        style: GoogleFonts.lato(
            textStyle: TextStyle(
                height: height,
                color: color ?? const Color(0xff109D10),
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.normal)));
  }
}

class TextWithDivider extends StatelessWidget {
  final String label;
  final double? divierHeight;
  final Color? textColor;
  const TextWithDivider(this.label,
      {this.divierHeight, this.textColor, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(height: divierHeight ?? 0.8, color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: TextLato(
            label,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: textColor ?? const Color(0xff109D10),
          ),
        ),
        Expanded(
          child: Container(
            height: divierHeight ?? 0.8,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
