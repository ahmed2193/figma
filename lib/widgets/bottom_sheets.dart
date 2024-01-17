import 'package:figma/models/nursery/nursery_add_model.dart';
import 'package:figma/models/nursery/nursery_category_model.dart';
import 'package:figma/models/nursery/nursery_model.dart';
import 'package:figma/views/profiles/address_view.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/dividers.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/bottom_nav/bottom_nav_bloc.dart';

showBottomSheetCategoryNursery(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => IntrinsicHeight(
              child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextLato('Categories',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                const SizedBox(height: 8),
                Column(
                  children: List.generate(
                      NurseryCategoryModel.listCategoryNursery.length, (index) {
                    final category =
                        NurseryCategoryModel.listCategoryNursery[index];
                    return InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextLato(category.label ?? '',
                                color: Colors.black, fontSize: 18),
                            category.hasAdded ?? false
                                ? Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: const Color(0xff109D10),
                                        borderRadius: BorderRadius.circular(2)),
                                    child: Row(
                                      children: [
                                        TextLato(category.value.toString(),
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                        const SizedBox(width: 4),
                                        const Icon(Icons.add_circle_outline,
                                            size: 14, color: Colors.white)
                                      ],
                                    ),
                                  )
                                : TextLato(category.value.toString(),
                                    color: Colors.black, fontSize: 18)
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          )));
}

showBottomSheetAddNursery(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => Container(
            height: MediaQuery.sizeOf(context).height * 0.85,
            width: MediaQuery.sizeOf(context).width,
            color: const Color(0xffF5F6FB),
            child: ListView(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Image.asset('assets/flower.png',
                                  width: 75, height: 75)),
                          const SizedBox(width: 14),
                          const TextLato('Palm',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)
                        ],
                      ),
                      const Row(
                        children: [
                          ButtonWithIconAndText(Icons.favorite_outline),
                          SizedBox(width: 8),
                          ButtonWithIconAndText(Icons.share_outlined)
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextLato('Choose Your Pot',
                                  color: Colors.black, fontSize: 16),
                              SizedBox(height: 4),
                              TextLato('Select any 1 option',
                                  color: Color(0xff7E818B), fontSize: 12),
                            ],
                          ),
                        ),
                        const DottedDivider(),
                        Column(
                          children: List.generate(
                              NurseryAddModel.listAddNursery.length, (index) {
                            final nursery =
                                NurseryAddModel.listAddNursery[index];

                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/ic-pot.png',
                                                height: 44, width: 44),
                                            const SizedBox(width: 15),
                                            TextLato(nursery.title ?? '',
                                                color: Colors.black,
                                                fontSize: 16)
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            TextLato('INR ${nursery.price}',
                                                color: const Color(0xff5E0000)),
                                            const SizedBox(width: 10),
                                            SizedBox(
                                              height: 18,
                                              width: 18,
                                              child: Radio(
                                                  toggleable: true,
                                                  value: false,
                                                  activeColor:
                                                      const Color(0xff109D10),
                                                  groupValue: 'nursery',
                                                  onChanged: (val) {}),
                                            )
                                          ],
                                        )
                                      ]),
                                ),
                                index ==
                                        NurseryAddModel.listAddNursery.length -
                                            1
                                    ? const SizedBox.shrink()
                                    : const DottedDivider()
                              ],
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xffE8E8F1))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.add, color: Colors.black, size: 24),
                            TextLato('1', color: Colors.black, fontSize: 18),
                            Icon(Icons.remove, color: Colors.black, size: 24)
                          ],
                        ),
                      )),
                      const SizedBox(width: 24),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Expanded(
                            child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                              color: const Color(0xff109D10),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: const Color(0xffE8E8F1))),
                          child: const Center(
                            child: TextLato('Add item 14.0',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          ));
}

showBottomSheetSearchPlant(BuildContext context) {
  showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Container(
            color: Colors.white,
            height: MediaQuery.sizeOf(context).height * 0.925,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.pop();
                        },
                        child: const Icon(Icons.expand_more,
                            color: Color(0xff109D10), size: 30),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        child: const SearchBarTemplate('Rose Flower',
                            suffixIcon: SizedBox()),
                      ),
                    ],
                  ),
                  const SizedBox(height: 18),
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
                  Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {},
                            child: ContainerNurseryItem(
                              data: NurseryModel(
                                  title: 'Hibiscus Flower', isSaved: false),
                              onDetailPressed: () {},
                              onAddPressed: () {
                                showBottomSheetAddNursery(context);
                              },
                            )),
                        separatorBuilder: (context, index) =>
                            const DottedDivider(),
                        itemCount: 3),
                  ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ));
}

showBottomSheetAddress(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      isScrollControlled: true,
      builder: (context) => SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.9,
          child: const Address()));
}

showBottomSheetProceedingFill(BuildContext context, VoidCallback func) {
  showModalBottomSheet(
      isScrollControlled: true,
      isDismissible: false,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => IntrinsicHeight(
              child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: TextLato(
                          'Before Proceeding Please Fill Out This Form',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.cancel,
                        color: Color(0xff7D7D7D),
                        size: 24,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Column(children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'No of Plants Required*',
                    ),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Plant Category*',
                    ),
                  ),
                  SizedBox(height: 15),
                  // Text input for Street Address
                  TextField(
                    keyboardType: TextInputType.streetAddress,
                    decoration: InputDecoration(
                      labelText: 'Plant Name*',
                    ),
                  ),
                ]),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {
                    func();
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
                          "Next",
                          style: GoogleFonts.lato(
                            textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )));
}
