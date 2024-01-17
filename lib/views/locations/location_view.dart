import 'package:figma/routers/route.dart';
import 'package:figma/views/deliveries/cdl_view.dart';
import 'package:figma/widgets/bottom_sheets.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const TextLato(
          "Select a location",
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: Colors.black,
        ),
        leading: InkWell(
          onTap: () {
            context.pop();
          },
          child: const Icon(Icons.arrow_back_ios,
              color: Color(0xff109D10), size: 25),
        ),
      ),
      body:
          SingleChildScrollView(
            child: Column(
              //shrinkWrap: true,
              children: [
                Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                      SearchTemplate('Search for area, street name...',
                          backgroundColor: Colors.white,
                          suffixIcon: SizedBox()),
                      ],
                    ),
                  ),
                ),


                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        color: Colors.white,
                   //     height: MediaQuery.of(context).size.width * 2,
                        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child:
                        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const CDL()),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 4),
                                            child: const FaIcon(
                                              FontAwesomeIcons.locationCrosshairs,
                                              size: 20,
                                              color: Color(0xff5E0000),
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Text("Location permission not enabled",
                                                  style: GoogleFonts.lato(
                                                    textStyle: Theme.of(context)
                                                        .textTheme
                                                        .titleLarge,
                                                    color: const Color(0xff5E0000),
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 18,
                                                  )),
                                              const SizedBox(height: 6),
                                              Text(
                                                  "Tap here to enable permission for a \nbetter experience",
                                                  style: GoogleFonts.lato(
                                                    color: Colors.black87,
                                                    fontWeight: FontWeight.normal,
                                                    fontSize: 14,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Icon(Icons.arrow_forward_ios_outlined,
                                          color: Colors.black, size: 20),
                                    ],
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 18, bottom: 12),
                            child: Divider(
                              height: 1,
                              color: Color(0xffD4D4D4),
                              thickness: 1,
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                showBottomSheetAddress(context);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //       builder: (context) => const Address()),
                                // );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const FaIcon(FontAwesomeIcons.plus,
                                              size: 20, color: Color(0xff5E0000)),
                                          const SizedBox(width: 8),
                                          Text("Add address",
                                              style: GoogleFonts.lato(
                                                textStyle:
                                                Theme.of(context).textTheme.titleLarge,
                                                color: const Color(0xff5E0000),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 18,
                                              )),
                                        ],
                                      ),
                                      const Icon(Icons.arrow_forward_ios_outlined,
                                          color: Colors.black, size: 20),
                                    ],
                                  ),
                                ],
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 12, bottom: 20),
                            child: Divider(
                              height: 1,
                              color: Color(0xffD4D4D4),
                              thickness: 1,
                            ),
                          ),
                          Text("Saved address",
                              style: GoogleFonts.lato(
                                  textStyle: Theme.of(context).textTheme.titleLarge,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18)),
                          const SizedBox(height: 16),
                          Column(
                            children: List.generate(
                                2,
                                    (index) =>  Padding(
                                  padding: EdgeInsets.only(bottom: 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.location_on,
                                              size: 28, color: Color(0xff109D10)),
                                          SizedBox(width: 15),
                                          Flexible(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  /*       TextLato('Ani Room',
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      SizedBox(height: 4),*/
                                                  TextLato('Mohali',
                                                      color: Colors.black, fontSize: 16),
                                                  SizedBox(height: 12),
                                                  Row(
                                                    children: [
                                                      ButtonWithIconAndText(Icons.more_horiz,
                                                          size: 16, padding: EdgeInsets.all(2)),
                                                      SizedBox(width: 6),

                                                      Image.asset('assets/ic-shared.png',
                                                          fit: BoxFit.fill,
                                                          width: 24, height: 24),
                                                      //ButtonWithIconAndText(Icons.share,
                                          //                size: 16, padding: EdgeInsets.all(2)
                                          //)
                                                    ],
                                                  )
                                                ],
                                              ))
                                        ],
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 12, bottom: 20),
                                        child: Divider(
                                          height: 1,
                                          color: Color(0xffD4D4D4),
                                          thickness: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ]),
                      ),



              ],
            ),
          )

    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.082,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[200],
        ),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Color(0xff109D10),
                size: 35,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for a nursery or a plant',
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.mic, color: Color(0xff109D10), size: 35),
            ),
          ],
        ),
      ),
    );
  }
}


class SearchTemplate extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Widget? suffixIcon;
  final Function()? onPressed;
  const SearchTemplate(this.label,
      {this.backgroundColor, this.suffixIcon, this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {
        context.push(Routes.nurserySearch);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          // color: backgroundColor ?? const Color(0xffE3E7E6),
        ),
        child: TextField(
          enabled: false,
          style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 16)),
          decoration: InputDecoration(
            border: 
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
            borderSide: const BorderSide(
              color: Color(0xffE3E7E6),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
            borderSide: BorderSide(
              color: Color(0xffE3E7E6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
            borderSide: const BorderSide(
              color: Color(0xffE3E7E6),
            ),
          ),
            // filled: true,
            prefixIcon:
                const Icon(Icons.search, size: 26, color: Color(0xff109D10)),
            suffixIcon: suffixIcon ??
                SizedBox(
                  width: 0,
                  child: Row(
                    children: [
                      Container(
                        width: 1,
                        height: 26,
                        color: const Color(0xffCBCBCB),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.mic,
                          size: 26, color: Color(0xff109D10))
                    ],
                  ),
                ),
            suffixIconConstraints: const BoxConstraints(minWidth: 40),
            hintText: label,
            hintStyle: TextStyle(fontSize: 16 , color: Colors.grey),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            // border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
