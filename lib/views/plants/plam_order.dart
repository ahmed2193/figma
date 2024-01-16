import 'package:figma/widgets/dividers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plam extends StatelessWidget {
  const Plam({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) => const ContainerNurseryPlam(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: 10),
          )
        ],
      ),
    );
  }
}

class ContainerNurseryPlam extends StatelessWidget {
  const ContainerNurseryPlam({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 14, left: 8, right: 8),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xffEAEAEA)),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("assets/flower.png",
                        height: 88, width: 116, fit: BoxFit.cover),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          "Plam",
                          style: GoogleFonts.lato(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          "Plam is one of the most \nfavorite indoor plants.",
                          style: GoogleFonts.lato(
                            color: const Color(0xff5E0000),
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Quantity:",
                              style: GoogleFonts.lato(
                                color: const Color(0xff868686),
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Text(
                              "X 1",
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(child:
              const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextLato('Order ID: 2956420',
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff868686)),
                  SizedBox(height: 4),
                  TextLato('09 Oct, 11:00 PM',
                      fontSize: 8,
                      fontWeight: FontWeight.normal,
                      color: Colors.black)
                ],
              )
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const DottedDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Order Status",
                      style: GoogleFonts.lato(
                          color: const Color(0xff8B8B8B),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Active",
                      style: GoogleFonts.lato(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    )
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Order Total",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
