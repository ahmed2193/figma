import 'package:figma/routers/route.dart';
import 'package:figma/views/locations/location_view.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/dividers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home/home_bloc.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(bottom: 60),
            height: 170,
            color: Colors.white,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextLato(
                          'PAY USING',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        TextLato(
                          'Personal',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        Row(
                          children: [
                            TextLato(
                              '**** 3409 | ',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            Flexible(child:
                            TextLato(
                              'Secured',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff109D10),
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  height: 80,
               //   width: MediaQuery.of(context).size.width / 1.5,
                  child: Row(       crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.redAccent)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextLato(
                                      '14.00',
                                      textAlign: TextAlign.center,
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    TextLato(
                                      'TOTAL',
                                      textAlign: TextAlign.center,
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Place Order',
                                  style: GoogleFonts.lato(
                                    textStyle: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(fontSize: 14),
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Icon(Icons.arrow_right, color: Colors.white,)
                            ],
                          ))
                    ],
                  ),
                )
              ],
            )),
        body: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xffF0F0FC),
            centerTitle: true,
            title: Text(
              "Cart",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            expandedHeight: MediaQuery.of(context).size.width * 0.2,
            pinned: true,
            automaticallyImplyLeading: false,
            /*    leading: const Icon(
          Icons.arrow_back_ios,
          color: Color(0xff109D10),
          size: 30,
        ),*/
          ),
          SliverToBoxAdapter(
            child: Container(
              color: const Color(0xffF0F0FC),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 18),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                              width: 1, color: const Color(0xffE3E7E6))),
                      child: Row(
                        children: [
                          Image.asset("assets/moto.png", width: 42, height: 42),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.07,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Get Hussle Free Delivery",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  "You will get hussle free Deliver with our\ndelivery partner.",
                                  style: GoogleFonts.lato(
                                      color: const Color(0xff000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "PLANTS ADDED",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.none),
                      ),
                    ),
                
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                              width: 1, color: const Color(0xffE3E7E6))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Plam",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                "450 INR (min)",
                                style: GoogleFonts.lato(
                                    color: const Color(0xff5E0000),
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                  color: Color(0xFF129312),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      // Align children to the top
                                      children: [
                                        Icon(Icons.add,
                                            color: Colors.white, size: 16),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: TextLato('1',
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.remove,
                                            color: Colors.white, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "450 INR (min)",
                                style: GoogleFonts.lato(
                                    color: const Color(0xff5E0000),
                                    fontSize: 10,
                                    fontWeight: FontWeight.normal,
                                    decoration: TextDecoration.none),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          color: Colors.white,
                          border: Border.all(
                              width: 1, color: const Color(0xffE3E7E6))),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Location()),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.add,
                                  color: Colors.black,
                                ),
                                Text(
                                  "Add address",
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                            const Icon(Icons.arrow_forward_ios_outlined,
                                color: Colors.black, size: 20),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "SAVING CORNER",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                    const SizedBox(height: 15),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              context.push(Routes.coupons);
                            },
                            child: const ContainerDiscounts(),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "BILL SUMMARY",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 10),
                        width: MediaQuery.of(context).size.width * 3,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                            border: Border.all(
                                width: 1, color: const Color(0xffE3E7E6))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Payment Summary",
                              style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                            const SizedBox(height: 14),
                            Column(
                              children: List.generate(
                                3,
                                (index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        [
                                          'Subtotal',
                                          'Delivery fee',
                                          'Discounts'
                                        ][index],
                                        style: GoogleFonts.lato(
                                            color: const Color(0xff868686),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                      ),
                                      Text(
                                        "${[
                                          '16.00',
                                          '1.00',
                                          '3.00'
                                        ][index]} INR",
                                        style: GoogleFonts.lato(
                                            color: const Color(0xff868686),
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            decoration: TextDecoration.none),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const DottedDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: GoogleFonts.lato(
                                        color: const Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  Text(
                                    "14.00 INR",
                                    style: GoogleFonts.lato(
                                        color: const Color(0xff000000),
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "ADD TIP",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 11, horizontal: 19),
                      width: MediaQuery.of(context).size.width * 3,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          border: Border.all(
                              width: 1, color: const Color(0xffE3E7E6))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tip your delivery partner",
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Your kindness means a lot! 100% of your tip will go directly to them",
                            style: GoogleFonts.lato(
                                color: const Color(0xff868686),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.03,
                          ),
                          const SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ContainerTips(
                                  price: 20,
                                ),
                                ContainerTips(price: 30, isMostTipped: true),
                                ContainerTips(price: 50),
                                ContainerTips(price: 50),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "BEFORE YOU PLACE THE ORDER",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.none),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 19, horizontal: 9),
                      width: MediaQuery.of(context).size.width * 3,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add delivery instructions",
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Help your delivery partner reach you faster",
                            style: GoogleFonts.lato(
                                color: const Color(0xff868686),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(height: 24),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: List.generate(
                                          3,
                                          (index) => ContainerDelivery(
                                                onPressed: () {
                                                  context.push(Routes.payment);
                                                },
                                                icons: [
                                                  Icons.mic,
                                                  Icons.door_back_door,
                                                  Icons.person
                                                ][index],
                                                iconColor: [
                                                  const Color(0xff109D10),
                                                  Colors.black,
                                                  Colors.black
                                                ][index],
                                                hasCheckBox: [
                                                  false,
                                                  true,
                                                  true
                                                ][index],
                                                desc: [
                                                  'Tap here\nand hold',
                                                  'Leave at\ndoor',
                                                  'Leave\nwith guard'
                                                ][index],
                                              )))))
                        ],
                      ),
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}

class CategoryContainer extends StatelessWidget {
  final FaIcon? icon;
  final String text;

  const CategoryContainer({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.2,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(width: 1),
          ),
          child: Row(
            children: [
              if (icon != null)
                Padding(padding: const EdgeInsets.only(right: 8), child: icon),
              Text(text,
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none)),
            ],
          ),
        );
      },
    );
  }
}
