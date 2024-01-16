// Helper method to build small button container
import 'dart:developer';

import 'package:figma/models/home/drop_down_home_model.dart';
import 'package:figma/models/nursery/nursery_model.dart';
import 'package:figma/models/payments/payments_model.dart';
import 'package:figma/routers/route.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

Widget smallButtonContainer(String text, Color color, Function() onPressed) {
  return Container(
    padding: EdgeInsets.zero,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(width: 1, color: const Color(0xffC1C2C6))),
    child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(12),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        child: TextLato(text, color: const Color(0xffA9A9B1), fontSize: 14, textOverflow: TextOverflow.ellipsis,)),
  );
}

class ContainerOTPDigits extends StatelessWidget {
  final TextEditingController? controller;
  final int digit;
  const ContainerOTPDigits(this.digit, {this.controller, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        digit,
        (index) => SizedBox(
          height: 45,
          width: 46,
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
                    fontSize: 18, fontWeight: FontWeight.normal)),
            onChanged: (value) {
              // Automatically move to the next input field when a digit is entered
              if (value.isNotEmpty) {
                FocusScope.of(context).nextFocus();
              }
            },
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              counterText: '', // Hide the character counter
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black)),
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerDropwDown extends StatelessWidget {
  final DropwDownModel dropDown;
  const ContainerDropwDown(this.dropDown, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6.5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: const Color(0xffE8E8F1))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextLato(dropDown.title, color: Colors.black),
          const SizedBox(width: 5),
          dropDown.isDropDown ?? false
              ? const Icon(Icons.keyboard_arrow_down, size: 16)
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class ContainerNurseryItem extends StatelessWidget {
  final NurseryModel data;
  final Function()? onDetailPressed;
  final Function()? onAddPressed;
  const ContainerNurseryItem(
      {required this.data, this.onDetailPressed, this.onAddPressed, super.key});

  @override
  Widget build(BuildContext context) {
      bool isSelected = true;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(
                data.title ?? 'Plam',
                style: GoogleFonts.lato(
                    color: const Color(0xff5E0000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: InkWell(
                onTap: (){
                    context.push(Routes.reviews);
                },
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color(0xffEFEDE0), width: 1),
                          color: const Color(0xffFFFAE7)),
                      child: Row(
                          children: List.generate(
                              4,
                              (index) => const Icon(Icons.star,
                                  color: Colors.yellow, size: 10))),
                    ),
                    const SizedBox(width: 8),
                    const TextLato("162 ratings",
                        fontSize: 10, color: Colors.black),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: TextLato("450 INR",
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: TextLato(
                "Plam is one of the most\nfavourite indoor plant.",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color(0xff5E0000),
              ),
            ),
            InkWell(
              onTap: onDetailPressed,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                  "read more",
                  style: GoogleFonts.lato(
                      color: const Color(0xff7E818B),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Image.asset("assets/flower.png",
                        width: 140, height: 140)),
                Positioned(
                    top: 16,
                    right: 7,
                    child: Column(
                      children: [
                        StatefulBuilder(
                        builder: (BuildContext context, setState) {
                      return 
                      
                      Container(
                        decoration: BoxDecoration(
                            color: const Color(0xff000000).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(30)),
                        padding: const EdgeInsets.all(3),
                        child: InkWell(
                          onTap: () {
                            log('pr');
                            setState(() {
                              isSelected = !isSelected;
                            });
                          },
                          child: Icon(
                              // data.isSaved ?? false
                              isSelected
                                  ? Icons.bookmark
                                  : Icons.bookmark_outline,
                              size: 20,
                              color:

                                  //  data.isSaved ?? false
                                  isSelected
                                      ? const Color(0xff109D10)
                                      : Colors.white),
                        ),
                      );
                    }),
                 
                      ],
                    )),
                onAddPressed == null
                    ? const SizedBox.shrink()
                    : Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: InkWell(
                          onTap: onAddPressed,
                          child: Center(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 2),
                              decoration: BoxDecoration(
                                  color: const Color(0xffE7E7E7),
                                  borderRadius: BorderRadius.circular(5)),
                              child: const TextLato('+ Add',
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
            (onAddPressed == null) || (data.isSaved ?? false)
                ? const SizedBox.shrink()
                : const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: TextLato('Customize with Pot',
                        fontSize: 10, color: Color(0xff7E818B)),
                  )
          ],
        ),
      ],
    );
  }
}

class ContainerDiscounts extends StatelessWidget {
  const ContainerDiscounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child:



      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Row(
              children: [
                Container(
                    padding:
                    const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
                    decoration: const BoxDecoration(color: Color(0xffEDF3FF)),
                    child: Image.asset("assets/ic-discount.png",
                        width: 50, height: 50)),
                const SizedBox(width: 15),
            const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLato('Up to 100 INR Mobikwik Cashback',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      SizedBox(height: 4),
                      TextLato('Use Code MBKFEST | above    199 INR  ',
                          textOverflow: TextOverflow.ellipsis,
                          color: Color(0xff7E818B)),
                    ],

                ),
              ],
            ),

          const SizedBox(width: 5),
          Column(
            children: [
              const TextLato("5/6", color: Color(0xff7E818B), fontSize: 13),
              const SizedBox(height: 4),
              Row(
                children: List.generate(
                    [false, true, false].length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Container(
                            color: Color([false, true, false][index]
                                ? 0xffDC3640
                                : 0xffCBCFD2),
                            width: [false, true, false][index] ? 10 : 3,
                            height: 3,
                          ),
                        )),
              )
            ],
          ),
          const SizedBox(width: 11),

        ],

      ),
    );
  }
}

class ContainerTips extends StatelessWidget {
  final bool? isMostTipped;
  final int? price;
  const ContainerTips({this.isMostTipped, this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xffE3E7E6))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8, vertical: isMostTipped ?? false ? 1 : 6),
            child: Row(
              children: [
                Image.asset('assets/ic-tip-1.png', width: 16, height: 16),
                const SizedBox(width: 4),
                TextLato('${price ?? '16'} INR',
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)
              ],
            ),
          ),
          isMostTipped ?? false
              ? Container(
                  width: 80,
                  color: const Color(0xff109D10),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 1),
                      child: TextLato(
                        'Most Tiped',
                        fontSize: 9,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}

class ContainerDelivery extends StatelessWidget {
  final String? desc;
  final IconData? icons;
  final bool? hasCheckBox;
  final Color? iconColor;
  final Function()? onPressed;
  const ContainerDelivery(
      {this.desc,
      this.icons,
      this.iconColor,
      this.hasCheckBox,
      this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.only(right: 10, top: 10, bottom: 10),
        width: MediaQuery.of(context).size.width / 3.8,
        //height: 140,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 10),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 9),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(icons ?? Icons.mic_rounded,
                        color: iconColor ?? const Color(0xff109D10), size: 22),
                    const SizedBox(width: 3),
                    hasCheckBox ?? false
                        ? SizedBox(
                        height: 15,
                        width: 15,
                        child: Checkbox(
                            value: false,
                            side: const BorderSide(
                                color: Color(0xff109D10), width: 2),
                            onChanged: (val) {}))
                        :

                    Flexible(child:
                    Text(
                      'Record',
                      style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff109D10)),
                    ),),
                  ],

              ),

              const SizedBox(height: 15),
              Text(
                desc ?? 'Tap here and hold',
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerPayment extends StatelessWidget {
  final PaymentModel payment;
  const ContainerPayment(this.payment, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: payment.icon == null
          ? const SizedBox()
          : Image.asset('assets/ic-${payment.icon}.png', width: 34, height: 20),
      title: TextLato(payment.label ?? 'Cash', color: Colors.black),
      subtitle: (payment.desc ?? '').isEmpty
          ? null
          : TextLato(payment.desc ?? '',
              color: const Color(0xff0F0F0F), fontSize: 12),
      trailing: payment.desc != null
          ? const SizedBox.shrink()
          : const Icon(Icons.arrow_forward_ios, size: 18),
    );
  }
}
