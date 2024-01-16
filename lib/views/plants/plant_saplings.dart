import 'package:figma/models/nursery/nursery_model.dart';
import 'package:figma/widgets/bottom_sheets.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/dividers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Plants extends StatelessWidget {
  const Plants({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                      onTap: () {},
                      child: ContainerNurseryItem(
                          data: NurseryModel(
                              title: 'Hibiscus Flower', isSaved: true),
                          onDetailPressed: () {},
                          onAddPressed: () {
                            showBottomSheetAddNursery(context);
                          })),
                  separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(vertical: 4),
                        child: DottedDivider(),
                      ),
                  itemCount: 10),
            ),
            const SizedBox(height: 75)
          ],
        ));
  }
}

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                "Plam",
                style: GoogleFonts.lato(
                    color: const Color(0xff5E0000),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 10,
                  ),
                  Text(
                    "162 ratings",
                    style: GoogleFonts.lato(
                        color: const Color(0xff000000),
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                "450 INR",
                style: GoogleFonts.lato(
                    color: const Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                "Plam is one of the most\nfavourite indoor plant.",
                style: GoogleFonts.lato(
                    color: const Color(0xff5E0000),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none),
              ),
            ),
            Padding(
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
          ],
        ),
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.2),
          child: Image.asset("assets/flower.png"),
        ),
      ],
    );
  }
}
