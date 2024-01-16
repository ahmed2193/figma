import 'package:figma/controllers/bookmark/bookmark_bloc.dart';
import 'package:figma/views/nurseries/nurseries.dart';
import 'package:figma/views/plants/plant_saplings.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/bottom_sheets.dart';

class Gift extends StatefulWidget {
  const Gift({super.key});

  @override
  State<Gift> createState() => _BookmarkState();
}

class _BookmarkState extends State<Gift> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookmarkBloc>(
      create: (context) => BookmarkBloc(),
      child: Scaffold(
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
                            "Gift",
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
                                print('val $val' );
                                if(val == 1){
                                  showBottomSheetProceedingFill(context,(){
                                    context
                                        .read<BookmarkBloc>()
                                        .add(ChangeIndexPageBookMark(val));

                                  });
                                }else{
                                  context
                                      .read<BookmarkBloc>()
                                      .add(ChangeIndexPageBookMark(0));
                                }

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


                                      TextLato('Simple Gifting',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: state.indexPage != 0
                                              ? Colors.black
                                              : const Color(0xff109D10))
                                    ],
                                  ),
                                ),
                                Tab(
                                  child:  Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [

                                        TextLato(
                                          'Bulk Gifting',
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
                      children: [Nurseries(), Nurseries()],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
