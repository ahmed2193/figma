import 'package:figma/controllers/bottom_nav/bottom_nav_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/home/home_bloc.dart';
import '../../routers/route.dart';

class Nurseries extends StatelessWidget {
  const Nurseries({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Column(
          children: [
            Expanded(
                child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8.0),
                          child: const ContainerNursery(),
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: 10)),
            const SizedBox(height: 60)
          ],
        ));
  }
}

class ContainerNursery extends StatefulWidget {
  const ContainerNursery({super.key});

  @override
  State<ContainerNursery> createState() => _ContainerNurseryState();
}

class _ContainerNurseryState extends State<ContainerNursery> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.detailNursery);
      },
      child: Container(
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: const Color(0xff5E0000)),
            borderRadius: BorderRadius.all(
                Radius.circular(MediaQuery.of(context).size.width * 0.05))),
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.03),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      child: Image.asset(
                        "assets/nurse.png",
                        fit: BoxFit.fill,
                        height: 140,
                        width: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                    Positioned(
                        top: 8,
                        right: 9,
                        child: BlocBuilder<BottomNavBloc, BottomNavState>(
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
                                      color: const Color(0xff000000)
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: const EdgeInsets.all(3),
                                  child: const Icon(Icons.bookmark,
                                      size: 20, color: Color(0xff109D10)),
                                ));
                          },
                        ))
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Nursery 1",
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Row(
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
                        child: const Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.5',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
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
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
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
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "450 (min)",
                    style: GoogleFonts.lato(
                        color: const Color(0xff5E0000),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Text(
                    "Flower, Ceramic, Vege...",
                    style: GoogleFonts.lato(
                        color: const Color(0xff5E0000),
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
