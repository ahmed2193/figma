import 'package:figma/models/home/navigation_menu_home_model.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';

class BottomNavWidget extends StatelessWidget {
  final NavigationMenuHomeModel menu;
  final Function() onPressed;
  const BottomNavWidget(this.menu, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPressed,
        child: Container(

          child: Image.asset('assets/ic-${menu.icon}.png',
    width: 25,
    height: 25,
    color: menu.isSelected ?? false
    ? const Color(0xff109D10)
        : Colors.black),
        ));
  }
}

class MyProfileMenus extends StatelessWidget {
  final String icons;
  final String label;
  final Function()? onPressed;
  const MyProfileMenus(this.icons, this.label, {this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.82,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffEDEBEB),
                  ),
                  child: Center(child: Image.asset('assets/ic-$icons.png')),
                ),
                const SizedBox(width: 11),

                TextLato(label,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black)
              ],
            ),
            Flexible(child:
            const Icon(Icons.arrow_forward_ios, size: 14))
          ],
        ),
      ),
    );
  }
}
