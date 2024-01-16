import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';

class ReusedCarouselWithIndicator extends StatefulWidget {
  const ReusedCarouselWithIndicator({
    super.key,
  });
  @override
  State<ReusedCarouselWithIndicator> createState() =>
      _ReusedCarouselWithIndicatorState();
}

class _ReusedCarouselWithIndicatorState
    extends State<ReusedCarouselWithIndicator> {
  int index = 0;
  List items = [
    "assets/Rectangle 4.png",
    "assets/Rectangle 4.png",
    "assets/Rectangle 4.png",
    "assets/Rectangle 4.png",
  ];

  @override
  Widget build(BuildContext context) {
    //padding: const EdgeInsets.all(AppPadding.pMedium),
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Column(
        // alignment: AlignmentDirectional.bottomCenter,
        children: [
          // slider
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: false,
              viewportFraction: 1,
              aspectRatio: 2.2,
              onPageChanged: (index, reason) {
                this.index = index;
                setState(() {});
              },
            ),
            items: List.generate(
              items.length,
              (index) => GestureDetector(
                onTap: () {},
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(items[index]!,
                      height: double.infinity,
                          fit: BoxFit.cover, width: double.infinity),
                    ),
                           Positioned(
                            left: 0,
                            right: 0,
                             child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 16, bottom: 10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const TextLato(
                                        "50% OFF\nand much more...",
                                        fontSize: 26,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        textAlign: TextAlign.center,
                                      ),
                               
                                    ],
                                  ),
                                ),
                           ),
                        Positioned(
                          bottom: 12,
                          left: 0,
                          right: 0,
                          child: DotsIndicator(
                                         dotsCount: items.length,
                                         position: index,
                                         
                                         decorator: DotsDecorator(
                                           activeColor: Color(0xff109D10),
                                           color: Color(0xffCECECE),
                                           spacing: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                                         ),
                                       ))   
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // indicator
          
        ],
      ),
    );
  }
}
