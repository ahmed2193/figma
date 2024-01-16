import 'package:figma/controllers/bookmark/bookmark_bloc.dart';
import 'package:figma/views/nurseries/nurseries.dart';
import 'package:figma/views/plants/plant_saplings.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({super.key});

  @override
  State<Bookmark> createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookmarkBloc>(
      create: (context) => BookmarkBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,

        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverToBoxAdapter(
                        child: Column(
                      children: [
                        AppBar(
                          centerTitle: true,
                          backgroundColor: Colors.white,
                          elevation: 0,
                          title: Text(
                            "Bookmarks",
                            style: GoogleFonts.lato(
                                textStyle:
                                    Theme.of(context).textTheme.headlineMedium,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: SearchBarTemplate(
                                'Search for a nursery or a plant')),
                      ],
                    )),
                  ],
              body: Column(
                children: [
                  BlocBuilder<BookmarkBloc, BookmarkState>(
                    builder: (context, state) {
                      return Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            TabBar(
                              onTap: (val) {
                                context
                                    .read<BookmarkBloc>()
                                    .add(ChangeIndexPageBookMark(val));
                              },
                              labelColor: const Color(0xff109D10),
                              labelStyle: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              indicatorColor: const Color(0xff109D10),
                              tabs: [
                                Tab(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                            Flexible(child:  Image.asset('assets/ic-pot-mini.png',
                                          width: 20,
                                          height: 20,
                                          color: state.indexPage != 0
                                              ? Colors.black
                                              : const Color(0xff109D10)),),
                                      const SizedBox(width: 5),

                                      TextLato('Plants & Samplings',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: state.indexPage != 0
                                              ? Colors.black
                                              : const Color(0xff109D10))
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/ic-nurseries.png',
                                          width: 20,
                                          height: 20,
                                          color: state.indexPage != 1
                                              ? Colors.black
                                              : const Color(0xff109D10)),
                                      const SizedBox(width: 5),
                                      TextLato(
                                        'Nurseries',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: state.indexPage != 1
                                            ? Colors.black
                                            : const Color(0xff109D10),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  const Expanded(
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [Plants(), Nurseries()],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
