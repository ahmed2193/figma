import 'package:figma/routers/route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarTemplate extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final Function()? onPressed;
  const SearchBarTemplate(this.label,
      {this.backgroundColor, this.suffixIcon, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {
        context.push(Routes.nurserySearch);
      },
      child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? const Color(0xffE3E7E6),
        ),

          child: TextField(
            enabled: false,
            style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 16)),
            decoration: InputDecoration(
              filled: true,
              prefixIcon:
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: const Icon(Icons.search, size: 26, color: Color(0xff109D10)),
                  ),
              suffixIcon: suffixIcon ??
                  SizedBox(
                    width: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 1,
                          height: 26,
                          color: const Color(0xffCBCBCB),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.mic,
                            size: 26, color: Color(0xff109D10))
                      ],
                    ),
                  ),
              suffixIconConstraints: const BoxConstraints(minWidth: 40),

              hintText: label,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              border: const OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),

      ),
    );
  }
}
