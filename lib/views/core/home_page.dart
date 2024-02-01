import 'package:figma/controllers/home/home_bloc.dart';
import 'package:figma/models/home/drop_down_home_model.dart';
import 'package:figma/routers/route.dart';
import 'package:figma/views/nurseries/nursery_search.dart';
import 'package:figma/widgets/carousel_with_indicator.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/bottom_nav/bottom_nav_bloc.dart';
import '../nurseries/nurseries.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CatItem> catItems = [
      CatItem(
        'Flower',
        'assets/flowers.png',
      ),
      CatItem('Fruits', 'assets/fruits.PNG'),
      CatItem('Vegetables', 'assets/vegeta.PNG'),
      CatItem(
        'Ceramic',
        'assets/ceramic.PNG',
      ),
      CatItem('Hanging', 'assets/tr.PNG'),
      CatItem('Spices', 'assets/spices.PNG'),
      CatItem(
        'Religious',
        'assets/relig.PNG',
      ),
      CatItem('Green Plant', 'assets/greenplant.PNG'),
      CatItem(
        'Flower',
        'assets/flowers.png',
      ),
      CatItem('Fruits', 'assets/fruits.PNG'),
      CatItem('Vegetables', 'assets/vegeta.PNG'),
      CatItem(
        'Ceramic',
        'assets/ceramic.PNG',
      ),
      CatItem('Hanging', 'assets/tr.PNG'),
      CatItem('Spices', 'assets/spices.PNG'),
      CatItem(
        'Religious',
        'assets/relig.PNG',
      ),
      CatItem('Green Plant', 'assets/greenplant.PNG'),
    ];
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(context)..add(GetListDropDownHome()),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              color: Colors.white,
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context.read<HomeBloc>().add(GoToLocation());
                            },
                            child: const Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 28, color: Color(0xff109D10)),
                                SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        TextLato('Home',
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                        Icon(Icons.keyboard_arrow_down,
                                            size: 18, color: Color(0xff109D10))
                                      ],
                                    ),
                                    TextLato('Bella Vista, Caracas',
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black)
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              context.read<HomeBloc>().add(GoToProfile());
                            },
                            child: Image.asset('assets/ic-profile.png',
                                width: 40, height: 40),
                          );
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {},
                    child: const SearchBarTemplate(
                        'Search for a nursery or a plant',
                        backgroundColor: Colors.white),
                  ),
                  const SizedBox(height: 21),
                  SizedBox(
                    height: 42.5,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => ContainerDropwDown(
                            DropwDownModel.listDropDown[index]),
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemCount: DropwDownModel.listDropDown.length),
                  ),
                  const SizedBox(height: 21),
                ],
              ),
            ),
            Expanded(
                child: ListView(
              padding: EdgeInsets.only(top: 0),
              shrinkWrap: true,
              children: [
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextLato('What\'s new?',
                            fontSize: 18, fontWeight: FontWeight.bold),
                        const SizedBox(height: 18),
                        SizedBox(
                          // width: MediaQuery.sizeOf(context).width,
                          // height: 155,
                          child: ReusedCarouselWithIndicator(),
                        ),
                        const SizedBox(height: 12),
                        const TextLato('What to plant today?',
                            fontSize: 18, fontWeight: FontWeight.bold),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 3.3,
                          child: GridView.builder(
                            scrollDirection: Axis
                                .horizontal, // Set the scroll direction to horizontal
                            itemCount: catItems.length,
                            itemBuilder: (context, index) {
                              return wPlantToday(catItems[index].image!,
                                  catItems[index].name!, context);
                            },
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisSpacing: 2,
                              childAspectRatio: 1.5,
                              crossAxisCount:
                                  2, // Set the number of items in a row
                              mainAxisSpacing:
                                  8.0, // Set the spacing between items
                            ),
                          ),
                        ),
                        const TextLato('Featured nurseries',
                            fontSize: 18, fontWeight: FontWeight.bold),
                        const SizedBox(height: 8),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return SizedBox(
                              height: MediaQuery.of(context).size.height / 3.2,
                              // width: MediaQuery.of(context).size.width * 1,
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(width: 0),
                                padding: EdgeInsets.zero,
                                itemCount: 3,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  // Replace the placeholder with your actual images
                                  return InkWell(
                                    onTap: () {
                                      context
                                          .read<HomeBloc>()
                                          .add(GoToNurseryDetail());
                                    },
                                    child: wFeaturedNurseries(
                                        'assets/n${index + 1}.PNG', context),
/*
                                Image.asset("assets/${index + 1}.png",
                                    fit: BoxFit.cover),*/
                                  );
                                },
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 12),
                        const TextLato('Nurseries around you',
                            fontSize: 18, fontWeight: FontWeight.bold),
                        const SizedBox(height: 8),
                        BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            return Column(
                              children: List.generate(
                                  3,
                                  (index) => InkWell(
                                        onTap: () {
                                          context
                                              .read<HomeBloc>()
                                              .add(GoToNurseryDetail());
                                        },
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 5),
                                          child: ContainerNursery(),
                                          /*Image.asset("assets/nursry.png",
                                            fit: BoxFit.cover)*/
                                        ),
                                      )),
                            );
                          },
                        ),
                        const SizedBox(height: 60)
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget wPlantToday(String text, String image, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (NurserySearch())),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            CircleAvatar(radius: 35, backgroundImage: AssetImage(image)),
            SizedBox(
              height: 8,
            ),
            TextLato(
              text,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              textOverflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }

  Widget wFeaturedNurseries(String image, BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xff109D10)),
        borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  image,
                  width: MediaQuery.of(context).size.width / 2.3,
                  height: 130,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: 8,
                  right: 9,
                  child: StatefulBuilder(
                      builder: (BuildContext context, setState) {
                return    BlocBuilder<BottomNavBloc, BottomNavState>(
                      builder: (context, state) {
                        return InkWell(
                            onTap: () {
                              setState(() {
                                context
                                    .read<BottomNavBloc>()
                                    .add(BottomNavOnChange(1));
                                state.listNav![1].isSelected = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xff000000).withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30)),
                              padding: const EdgeInsets.all(3),
                              child: const Icon(Icons.bookmark,
                                  size: 20, color: Color(0xff109D10)),
                            ));
                      },
                    );
                  }))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6),
            child: TextLato('Nursery 1',
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.watch_later_outlined,
                  color: Color(0xff5E0000),
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  "20 mints",
                  style: GoogleFonts.lato(
                      color: const Color(0xff5E0000),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: const Color(0xff109D10),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            context.push(Routes.reviews);
                          },
                          child: Text(
                            '4.5',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                        Icon(Icons.star, color: Colors.white, size: 12),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6),
            child: Row(
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Color(0xff5E0000),
                  size: 18,
                ),
                const SizedBox(width: 4),
                Text(
                  "3 Km",
                  style: GoogleFonts.lato(
                      color: const Color(0xff5E0000),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
                const SizedBox(width: 20),
                Row(
                  children: [
                    Image.asset('assets/450.png', width: 12, height: 12),
                    Text(
                      "450 (min)",
                      style: GoogleFonts.lato(
                          color: const Color(0xff5E0000),
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CatItem {
  final String? image;
  final String? name;

  CatItem(this.image, this.name);
}
