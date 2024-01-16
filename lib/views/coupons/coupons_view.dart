import 'package:figma/models/payments/payments_model.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coupons extends StatefulWidget {
  const Coupons({Key? key}) : super(key: key);

  @override
  State<Coupons> createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: Color(0xff109D10), size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Coupons For you",
          textAlign: TextAlign.left,
          style: GoogleFonts.lato(
            textStyle: Theme.of(context).textTheme.headlineMedium,
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(padding: EdgeInsets.only(left: 20, right: 20), children: [
        InkWell(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffE3E7E6),
            ),
            child: TextField(
              enabled: true,
              style: GoogleFonts.lato(textStyle: const TextStyle(fontSize: 16)),
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                prefixIcon: const Icon(Icons.search,
                    size: 26, color: Color(0xff109D10)),
                suffixIcon: Container(
                  width: 70,
                  child: Row(
                    children: [
                      Container(
                        width: 1,
                        height: 26,
                        color: const Color(0xffCBCBCB),
                      ),
                      const SizedBox(width: 4),
                      TextLato(
                        '  APPLY',
                        textAlign: TextAlign.end,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey,
                        //    color: Color(0xFF109D10),
                      )
                      //      const Icon(Icons.mic, size: 26, color: Color(0xff109D10))
                    ],
                  ),
                ),
                suffixIconConstraints: const BoxConstraints(minWidth: 40),
                hintText: 'Type Coupon Code here',
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "BEST OFFERS FOR YOU",
            style: GoogleFonts.lato(
                color: Colors.grey,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        itemCouponsForYou(),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            "OTHER COUPONS",
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        itemCouponsForYouOthers(),
      ]),
    );
  }

  Widget itemCouponsForYou() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              spreadRadius: 1.5),
        ],
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Image.asset("assets/ic-discount.png",
                        width: 40, height: 40)),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLato('Up to 100 INR Mobikwik Cashback',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      SizedBox(height: 2),
                      TextLato('Save 50 extra cashback with this code',
                          textOverflow: TextOverflow.ellipsis,
                          fontSize: 14,
                          color: Color(0xff558EF4)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4.5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                border:
                                    Border.all(color: const Color(0xffE8E8F1))),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextLato(
                                  'Best Offer',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: TextLato('View Details', color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
          TextLato(
            
            'Applied',
            // 'TAP TO APPLY',
              color: Color(0xff109D10),
              fontSize: 16,
              fontWeight: FontWeight.bold),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
  Widget itemCouponsForYouOthers() {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              spreadRadius: 1.5),
        ],
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    // padding:
                    //     const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    child: Image.asset("assets/ic-discount.png",
                        width: 40, height: 40)),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLato('FA 100 OFF',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      SizedBox(height: 2),
                      TextLato('Add items worth 50 more to unlock',
                          textOverflow: TextOverflow.ellipsis,
                          fontSize: 14,
                          color: Color(0xff558EF4)),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4.5),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(5)),
                                border:
                                    Border.all(color: const Color(0xffE8E8F1))),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextLato(
                                  'NEWFEAST',
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: TextLato('View Details', color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[200],
          ),
                   TextLato('TAP TO APPLY',
              color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          SizedBox(
            height: 10,
          ),
         
        ],
      ),
    );
  }

  // Widget itemCouponsForYouOthers() {
  //   return Container(
  //     clipBehavior: Clip.antiAliasWithSaveLayer,
  //     decoration: BoxDecoration(
  //       boxShadow: [
  //         BoxShadow(
  //             color: Colors.black.withOpacity(0.15),
  //             blurRadius: 10,
  //             spreadRadius: 1.5),
  //       ],
  //       border: Border.all(color: Colors.white, width: 1),
  //       borderRadius: BorderRadius.all(Radius.circular(10)),
  //       color: Colors.white,
  //     ),
  //     child: Column(
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.all(10),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Container(
  //                   padding:
  //                       const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
  //                   child: Image.asset("assets/ic-discount.png",
  //                       width: 50, height: 50)),
  //               Flexible(
  //                 child: Column(
  //                   crossAxisAlignment: CrossAxisAlignment.start,
  //                   children: [
  //                     TextLato('FA 100 OFF',
  //                         fontSize: 16,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.black),
  //                     SizedBox(height: 4),
  //                     TextLato('Add items worth 50 more to unlock',
  //                         textOverflow: TextOverflow.ellipsis,
  //                         color: Color(0xff5E0000)),
  //                     SizedBox(
  //                       height: 20,
  //                     ),
  //                     Row(
  //                       crossAxisAlignment: CrossAxisAlignment.center,
  //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                       children: [
  //                         Container(
  //                           padding: EdgeInsets.symmetric(
  //                               horizontal: 10, vertical: 6.5),
  //                           decoration: BoxDecoration(
  //                               color: Colors.white,
  //                               borderRadius:
  //                                   const BorderRadius.all(Radius.circular(5)),
  //                               border:
  //                                   Border.all(color: const Color(0xffE8E8F1))),
  //                           child: const Row(
  //                             crossAxisAlignment: CrossAxisAlignment.center,
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               TextLato('NEWFEAST', color: Colors.grey),
  //                               SizedBox(width: 5),
  //                             ],
  //                           ),
  //                         ),
  //                         TextLato('View Details', color: Colors.grey),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Divider(
  //           color: Colors.grey[200],
  //         ),
  //         TextLato('TAP TO APPLY',
  //             color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
  //         SizedBox(
  //           height: 10,
  //         ),
  //       ],
  //     ),
  //   );
  // }


}
