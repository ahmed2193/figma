import 'package:figma/models/home/drop_down_home_model.dart';
import 'package:figma/models/nursery/nursery_model.dart';
import 'package:figma/widgets/bottom_sheets.dart';
import 'package:figma/widgets/buttons.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/dividers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../routers/route.dart';

class NurseryDetail extends StatefulWidget {
  const NurseryDetail({Key? key}) : super(key: key);

  @override
  State<NurseryDetail> createState() => _NurseryDetailState();
}

class _NurseryDetailState extends State<NurseryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Padding(
          padding: EdgeInsets.only(top: 30, bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonWithIconAndText(Icons.search, label: 'Search Plant',
                  onPressed: () {
                showBottomSheetSearchPlant(context);
              }),
              const SizedBox(width: 15),
              ButtonWithIconAndText(Icons.more_horiz, iconColor: Colors.black,
                  onPressed: () {
                showMenu(
                    color: Colors.white,
                    shadowColor: Colors.white,
                    elevation: 4,
                    context: context,
                    position: RelativeRect.fromLTRB(30, 80, 20, 0
                        /* RelativeRect.fromSize(
                          Rect.fromCenter(
                              center: Offset.zero,
                              width: 100,
                              height: 100),
                          const Size(100, 100),*/
                        ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    items: [
                      const PopupMenuItem(
                          padding: EdgeInsets.zero,
                          height: 30,
                          child: Center(
                            child: TextLato(
                              'Give FeedBack',
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          )),
                      const PopupMenuItem(
                          height: 30,
                          padding: EdgeInsets.zero,
                          child: Center(
                            child: TextLato('Report',
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ))
                    ]);
              })
            ],
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          extendedPadding: const EdgeInsets.symmetric(horizontal: 30),
          label: const TextLato('Category',
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          icon: const Icon(Icons.category),
          backgroundColor: const Color(0xff109D10),
          shape: RoundedRectangleBorder(
              side: BorderSide.none, borderRadius: BorderRadius.circular(10)),
          onPressed: () {
            showBottomSheetCategoryNursery(context);
          }),
      body:
      
  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 15,
                        right: 11,
                        bottom: 22,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextLato(
                                  'Nursery 1',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 20),
                                TextLato(
                                  'Flower, Ceramic, Vegetable, Vegetable',
                                  color: Color(0xff5E0000),
                                  textOverflow: TextOverflow.ellipsis,
                                  fontSize: 18,
                                ),
                                SizedBox(height: 5),
                                TextLato(
                                  'Balongi, Mohali',
                                  fontSize: 16,
                                  color: Color(0xff7E818B),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.watch_later_outlined, size: 16),
                                    SizedBox(width: 4),
                                    TextLato(
                                      '20 mints',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 8,
                                      ),
                                      child: TextLato('|', color: Colors.black),
                                    ),
                                    Icon(Icons.location_on_outlined, size: 16),
                                    SizedBox(width: 4),
                                    Flexible(
                                      child: TextLato(
                                        '3 km',
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.2,
                          ),
                          InkWell(
                            onTap: () {
                              context.push(Routes.reviews);
                            },
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: const Color(0xffE5E4E9),
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 13,
                                    ),
                                    color: const Color(0xff129312),
                                    child: const Row(
                                      children: [
                                        TextLato(
                                          '4.5',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w900,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 2,
                                      bottom: 5,
                                    ),
                                    child: Column(
                                      children: [
                                        TextLato(
                                          '2111',
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        TextLato(
                                          'Reviews',
                                          color: Color(0xff7E818B),
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ContainerDiscounts(),
                          SizedBox(
                            width: 30,
                          ),
                          ContainerDiscounts(),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 42.5,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ContainerDropwDown(
                          DropwDownModel.listDropDown[index],
                        ),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemCount: DropwDownModel.listDropDown.length,
                      ),
                    ),
                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              height: MediaQuery.of(context).size.width * 2,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextLato(
                          "Recommended (30)",
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        Image.asset('assets/ic-upward.png',
                            width: 20, height: 20)
                      ],
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {},
                          child: ContainerNurseryItem(
                            data: NurseryModel(),
                            onDetailPressed: () {},
                            onAddPressed: () {
                              showBottomSheetAddNursery(context);
                            },
                          ),
                        ),
                        separatorBuilder: (context, index) => const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: DottedDivider(),
                        ),
                        itemCount: 3,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Add other SliverList, SliverGrid, etc., widgets as needed
        ],
      ),
    
   
    );
  }
}

class CategoryContainer extends StatelessWidget {
  final IconData? icon;
  final String text;

  const CategoryContainer({Key? key, this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(width: 1),
          ),
          child: Row(
            children: [
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    icon,
                    color: const Color(0xff000000),
                    size: constraints.maxWidth > 350 ? 24 : 18,
                  ),
                ),
              Text(
                text,
                style: TextStyle(
                    fontSize: constraints.maxWidth > 350 ? 16 : 14,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
