import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routers/route.dart';

class NurseriesOrder extends StatelessWidget {
  const NurseriesOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: ListView(padding: EdgeInsets.zero, children: [
        const SearchBarTemplate('Search for nursery or a plant'),
        const SizedBox(height: 18),
        ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => const ContainerNurseryOrder(),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: 10),

      ]),
    );
  }
}

class ContainerNurseryOrder extends StatelessWidget {
  const ContainerNurseryOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
                context.push(Routes.orderSummaryScreen);

      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: const Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("assets/nurse.png",
                              width: 97, height: 75)),
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            child: Text(
                              "Nursery 1",
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6.0),
                            child: Text(
                              "Sector 18, Chandigrah",
                              style: GoogleFonts.lato(
                                  color: const Color(0xff5E0000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none),
                            ),
                          ),
                          Text(
                            "20 mints",
                            style: GoogleFonts.lato(
                                color: const Color(0xff5E0000),
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Flexible(child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 6),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: const Color(0xffD9D9D9),
                        ),
                        child: const TextLato('Delivered',
                            fontSize: 12, color: Color(0xff868686)),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        "View More >",
                        style: GoogleFonts.lato(
                            color: const Color(0xff109D10),
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Quantity:",
                        style: GoogleFonts.lato(
                            color: const Color(0xff868686),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "1 X Palm",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Quantity:",
                        style: GoogleFonts.lato(
                            color: const Color(0xff868686),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "1 X Flowers",
                        style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                        height: 1, thickness: 0.5, color: Color(0xff979797)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "03 Nov 2023",
                        style: GoogleFonts.lato(
                            color: const Color(0xff8B8B8B),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                      Text(
                        "450 INR (min)",
                        style: GoogleFonts.lato(
                            color: const Color(0xff5E0000),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Divider(
                        height: 1, thickness: 0.5, color: Color(0xff979797)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Rate",
                            style: GoogleFonts.lato(
                                color: const Color(0xff109D10),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none),
                          ),
                          const SizedBox(width: 8),
                          Row(
                            children: List.generate(
                                5,
                                (index) => const Icon(Icons.star_outline_rounded,
                                    size: 22)),
                          ),
                        ],
                      ),
                      FilledButton.icon(
                          onPressed: () {},
                          style: const ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                            backgroundColor:
                                MaterialStatePropertyAll(Color(0xff109D10)),
                          ),
                          icon: const Icon(Icons.rotate_left),
                          label: const TextLato('Reorder',
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
