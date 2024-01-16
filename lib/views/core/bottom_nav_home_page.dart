import 'package:figma/controllers/bottom_nav/bottom_nav_bloc.dart';
import 'package:figma/views/bookmarks/bookmarks_view.dart';
import 'package:figma/views/core/home_page.dart';
import 'package:figma/views/deliveries/cart_view.dart';
import 'package:figma/views/orders/order_view.dart';
import 'package:figma/widgets/menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../gifts/gifts_view.dart';

class BottomNavHomePage extends StatefulWidget {
  const BottomNavHomePage({super.key});

  @override
  State<BottomNavHomePage> createState() => _BottomNavHomePageState();
}

class _BottomNavHomePageState extends State<BottomNavHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          BlocBuilder<BottomNavBloc, BottomNavState>(
            builder: (context, state) {
              return Positioned.fill(
                  child: PageView(
                controller: context.read<BottomNavBloc>().pageController,
                children: const [
                  HomePage(),
                  Bookmark(),
                  Gift(),
                  Cart(),
                  Order(),
                ],
              ));
            },
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 10),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: const Offset(0, -10),
                        spreadRadius: 1,
                        blurRadius: 24)
                  ]),
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  child: BlocBuilder<BottomNavBloc, BottomNavState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                            state.listNav?.length ?? 0,
                            (index) =>
                                BottomNavWidget(state.listNav![index], () {
                           /*       if (index == 2) {
                                    showBottomSheetProceedingFill(context,
                                     (){
    
                                      Navigator.of(context).pop();
                                       setState(() {
                                         context
                                             .read<BottomNavBloc>()
                                             .add(BottomNavOnChange(index));
                                       });
                                     }
    
                                    );
                                  } else {*/
                                    setState(() {
                                      context
                                          .read<BottomNavBloc>()
                                          .add(BottomNavOnChange(index));
                                    });
                                //  }
                                })),
                      );
                    },
                  )))
        ],
      ),
    );
  }
}
