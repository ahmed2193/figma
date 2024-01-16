import 'package:figma/widgets/bottom_sheets.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

//MARK: Confirm Delivery Location View
class CDL extends StatelessWidget {
  const CDL({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            title: Text(
              "Confirm Delivery Location",
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 18),
            ),
            leading: InkWell(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios,
                  color: Color(0xff109D10), size: 25),
            ),
          //  expandedHeight: 60,
            pinned: true,
            /*   flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
            ),*/
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  // Placeholder map image

                  Stack(
                    children: [
                      Image.asset(
                          'assets/maps.png', // Replace with your actual map image asset path
                          height: MediaQuery.of(context).size.width * 1.4,
                          width: double.infinity,
                          fit: BoxFit.cover),
                       Positioned(
                          bottom: 10,
                           left: 10,
                           right: 10,
                           child:
                      Align(
                        alignment: Alignment.bottomCenter,



                          child: IntrinsicWidth(
                            child: Container(

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                  Border.all(width: 1, color: Colors.red),
                                  borderRadius: BorderRadius.circular(15)),
                              padding: EdgeInsets.all(12),
                              child: const Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 0),
                                    child: FaIcon(
                                        FontAwesomeIcons.locationCrosshairs,
                                        size: 20,
                                        color: Colors.red),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  TextLato('Use current location',
                                      color: Colors.red, fontWeight: FontWeight.bold,)
                                ],
                              ),
                            ),
                          )
                        ,
                        )
                      ),
                  /*     Positioned(
                        bottom: 14, child:     Align(
                        alignment: Alignment.center,


                        child: Container(

                          decoration: BoxDecoration(
                              color: Colors.white,
                              border:
                                  Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(12),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 0),
                                child: FaIcon(
                                    FontAwesomeIcons.locationCrosshairs,
                                    size: 20,
                                    color: Colors.red),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              TextLato('Use current location',
                                  color: Colors.red)
                            ],
                          ),
                        ),
                      ),
                      ),*/
                       Positioned(
                          top: 14,
                          left: 7,
                          right: 7,
                          child:
                          Container(
margin: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),


                            child: TextField(

                              enabled: false,
                              style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 16)),
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon:
                                Padding(
                                  padding: EdgeInsets.only(top: 0.0),
                                  child: Icon(Icons.search, size: 26, color: Color(0xff109D10)),
                                ),

                                suffixIconConstraints: BoxConstraints(minWidth: 40),

                                hintText: 'Search for area, street name...',
                                contentPadding:
                                EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                              ),
                            ),

                          ),

                        /*SearchBarTemplate(
                              'Search for area, street name',
                              backgroundColor: Colors.white,
                              suffixIcon: SizedBox())*/)
                    ],
                  ),

                  const SizedBox(height: 20),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.location_on,
                        color: Color(0xff109D10),
                        size: 28,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.02,
                      ),

                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff109D10),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            "Bella Vista, Caracas",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      showBottomSheetAddress(context);
                    },
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xff109D10),
                        ),
                        child: Center(
                          child: Text(
                            "Enter complete address",
                            style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.headlineMedium,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // ListView of bookmarked items
                ],
              ),
            ),
          ),
        ],
      ),
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Search for a nursery or a plant',
                border: InputBorder.none,
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
