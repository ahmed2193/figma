import 'package:figma/models/frequently/frequntly_model.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Frequently extends StatefulWidget {
  const Frequently({Key? key}) : super(key: key);

  @override
  State<Frequently> createState() => _FrequentlyState();
}

class _FrequentlyState extends State<Frequently> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const TextLato(
              "Frequently Asked Questions",
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.black,
            ),
            expandedHeight: MediaQuery.of(context).size.width * 0.2,
            pinned: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff109D10),
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Material(
                  child: index == FrequentlyModel.questions.length - 1
                      ? const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call, color: Color(0xff4CB151)),
                              SizedBox(width: 8),
                              TextLato('Need Help? Call Us',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)
                            ],
                          )),
                        )
                      : ExpansionTile(
                          title: Text(
                            FrequentlyModel.questions[index],
                            style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.titleLarge,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                FrequentlyModel.answers[index],
                                style: GoogleFonts.lato(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyLarge,
                                    color: Colors.black,
                                    fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                );
              },
              childCount: FrequentlyModel.questions.length,
            ),
          ),
        ],
      ),
    );
  }
}
