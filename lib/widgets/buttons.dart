import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonTemplate extends StatelessWidget {
  final String label;
  final double? height;
  final double? width;
  final Function() onPressed;
  const ButtonTemplate(this.label,
      {this.width, this.height, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height ?? 60,
        width: width ?? MediaQuery.of(context).size.width,
        child: FilledButton(
            onPressed: onPressed,
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                backgroundColor:
                    MaterialStateProperty.all(const Color(0xff109D10))),
            child: Text(label,
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 18),
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ))));
  }
}

class TextButtonTemplate extends StatelessWidget {
  final String label;
  final Color? color;
  final double? fonSize;
  final FontWeight? fontWeight;
  final Function() onPressed;
  const TextButtonTemplate(this.label, this.onPressed,
      {this.color, this.fontWeight, this.fonSize, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: TextLato(label,
            color: color, fontSize: fonSize, fontWeight: fontWeight));
  }
}

class ButtonWithIconAndText extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String? label;
  final double? size;
  final EdgeInsetsGeometry? padding;
  final Function()? onPressed;
  const ButtonWithIconAndText(this.icon,
      {this.label, this.iconColor, this.size, this.padding, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: padding ?? const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffE5E4E9), width: 1),
            color: Colors.white,
            borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Icon(icon,
                color: iconColor ?? const Color(0xff109D10), size: size ?? 22),
            (label ?? '').isEmpty
                ? const SizedBox.shrink()
                : Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextLato(label ?? '', fontSize: 16))
          ],
        ),
      ),
    );
  }
}
