import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';

class DottedDivider extends StatelessWidget {
  const DottedDivider({super.key});

  @override
  Widget build(BuildContext context) {
    String dottedDivider() {
      var divider = '';
      for (var i = 1; i <= 100; i++) {
        divider += '-' * i;
      }
      return divider;
    }

    return TextLato(dottedDivider(),
        color: const Color(0xffD4D4D4), maxLines: 1);
  }
}
