import 'package:figma/models/nursery/nursery_model.dart';
import 'package:figma/routers/route.dart';
import 'package:figma/views/nurseries/nurseries.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/dividers.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class NurserySearch extends StatelessWidget {
  const NurserySearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios,
              color: Color(0xff109D10), size: 25),
        ),
        title: const TextLato('Search',
            fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ListView(
          children: [
            SearchBarTemplate('Rose Flower',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.black,
                  ),
                  onPressed: () {
              
                  },
                ),
                onPressed: () { context.pop();}),
            const SizedBox(height: 11),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Showing results for ',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 16))),
              TextSpan(
                  text: 'Rose Flower',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)))
            ])),
            const SizedBox(height: 20),
            ListView.separated(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: ContainerNurseryItem(
                        data: NurseryModel(
                            title: 'Hibiscus Flower', isSaved: false),
                        onDetailPressed: () {})),
                separatorBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: DottedDivider(),
                    ),
                itemCount: 3),
            const SizedBox(height: 25),
            InkWell(
                onTap: () {
                  context.push(Routes.detailNursery);
                },
                child: const ContainerNursery()),
            const SizedBox(height: 80)
          ],
        ),
      ),
    );
  }
}
