import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Palm extends StatefulWidget {
  const Palm({super.key});

  @override
  State<Palm> createState() => _PalmState();
}

class _PalmState extends State<Palm> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.2,
                top: MediaQuery.of(context).size.width * 0.05),
            child: Text(
              "Palm",
              style: GoogleFonts.lato(
                textStyle: Theme.of(context).textTheme.headline4,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          expandedHeight: MediaQuery.of(context).size.width * 0.2,
          pinned: true,
          flexibleSpace: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.1,
                left: MediaQuery.of(context).size.width * 0.03),
            child: Row(
              children: [
                Image.asset("assets/flower.png",
                    height: MediaQuery.of(context).size.width * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.57,
                ),
                Icon(Icons.favorite_outline_rounded),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Icon(Icons.share_rounded),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            color: Color(0xffF5F6FB),
            width: double.infinity,
            height: MediaQuery.of(context).size.width * 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(
                                MediaQuery.of(context).size.width * 0.05))),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.width * 0.9,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Choose your pot",
                                style: GoogleFonts.lato(
                                    textStyle:
                                        Theme.of(context).textTheme.bodyText1,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.03,
                              ),
                              Text(
                                "    --------------------------------------------------------------  ",
                                style: GoogleFonts.lato(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Pot.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    "  Pot 1",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  Text(
                                    "450 INR",
                                    style: GoogleFonts.lato(
                                        color: Color(0xff5E0000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Color(0xff109D10),
                                  )
                                ],
                              ),
                              Text(
                                "    --------------------------------------------------------------  ",
                                style: GoogleFonts.lato(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Pot.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    "  Pot 2",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  Text(
                                    "450 INR",
                                    style: GoogleFonts.lato(
                                        color: Color(0xff5E0000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Color(0xff109D10),
                                  )
                                ],
                              ),
                              Text(
                                "    --------------------------------------------------------------  ",
                                style: GoogleFonts.lato(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Pot.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    "  Pot 3",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  Text(
                                    "450 INR",
                                    style: GoogleFonts.lato(
                                        color: Color(0xff5E0000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Color(0xff109D10),
                                  )
                                ],
                              ),
                              Text(
                                "    --------------------------------------------------------------  ",
                                style: GoogleFonts.lato(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Pot.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    "  Pot 4",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  Text(
                                    "450 INR",
                                    style: GoogleFonts.lato(
                                        color: Color(0xff5E0000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Color(0xff109D10),
                                  )
                                ],
                              ),
                              Text(
                                "    --------------------------------------------------------------  ",
                                style: GoogleFonts.lato(
                                    color: Color(0xff868686),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.none),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Pot.png",
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    height:
                                        MediaQuery.of(context).size.width * 0.1,
                                  ),
                                  Text(
                                    "  Pot 5",
                                    style: GoogleFonts.lato(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                  ),
                                  Text(
                                    "450 INR",
                                    style: GoogleFonts.lato(
                                        color: Color(0xff5E0000),
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Color(0xff109D10),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.width * 0.1,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              // Align children to the top

                              children: [
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      index = index + 1;
                                    });
                                  },
                                  icon: const FaIcon(
                                    FontAwesomeIcons.cartPlus,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  index.toString(),
                                  style: GoogleFonts.lato(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.none),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      index = index - 1;
                                    });
                                  },
                                  icon: const Icon(Icons.maximize_outlined,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.1,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            height: MediaQuery.of(context).size.width * 0.1,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xff109D10),
                            ),
                            child: Center(
                                child: TextButton(
                                    onPressed: () => Null,
                                    child: Text("Add item 14.00 INR",style: GoogleFonts.lato(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.none),))))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


