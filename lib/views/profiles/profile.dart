import 'package:figma/controllers/profile/profile_bloc.dart';
import 'package:figma/routers/route.dart';
import 'package:figma/views/orders/order_view.dart';
import 'package:figma/widgets/menus.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/image_constant.dart';
import '../../widgets/custom_image_view.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(context),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: Text(
                "My Profile",
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.headlineMedium,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              expandedHeight: MediaQuery.of(context).size.width * 0.15,
              pinned: true,
              leading: InkWell(
                onTap: () {
                  context.pop();
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff109D10),
                  size: 30,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  BlocBuilder<ProfileBloc, ProfileState>(
                    builder: (context, state) {
                      return InkWell(
                        onTap: () {
                          context
                              .read<ProfileBloc>()
                              .add(GoToCompleteProfile());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: Container(
                            padding: const EdgeInsets.all(19.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 10,
                                      spreadRadius: 1.5),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //Image.asset("assets/moto.png"),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextLato('Robot',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                        color: Colors.black),
                                    SizedBox(height: 16),
                                    TextLato('+91 999999999',
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ],
                                ),
                                // Icon(Icons.person,
                                //     color: Color(0xff109D10), size: 78),
                                CustomImageView(
                                  imagePath: ImageConstant.profileImage,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {
                      context.push(Routes.starRatingScreen);
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: Container(
                            padding: const EdgeInsets.all(19.0),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(15)),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.15),
                                      blurRadius: 10,
                                      spreadRadius: 1.5),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Center(
                                    child: Image.asset('assets/greenstar.png')),
                                const SizedBox(width: 11),
                                Expanded(
                                  child: TextLato('Green Star Rating',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                  height:
                                      MediaQuery.of(context).size.width * 0.05,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    color: const Color(0xffE3E7E6),
                                  ),
                                  child: const Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '4.5',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12.0),
                                        ),
                                        const SizedBox(width: 4),
                                        Icon(Icons.star,
                                            color: Colors.amber, size: 16),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 11),
                                const Icon(Icons.arrow_forward_ios, size: 14)
                              ],
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 10,
                                spreadRadius: 1.5),
                          ]),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 5,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff4CB151),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(2.5),
                                            bottomRight: Radius.circular(2.5))),
                                  ),
                                  const SizedBox(width: 11),
                                  const TextLato("Orders",
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.05),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: MyProfileMenus(
                                  'your-order',
                                  'Your Orders',
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Order()),
                                    );
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: MyProfileMenus(
                                    'order-support',
                                    'Order Support',
                                    onPressed: () {
                                      showPopup(
                                          'Order Support',
                                          'You can get help via the contact number, or through the whatsapp.',
                                          context);
                                    },
                                  )),
                              const SizedBox(height: 20),
                              BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, state) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: MyProfileMenus(
                                        'faq',
                                        'Frequently Asked Questions',
                                        onPressed: () {
                                          context
                                              .read<ProfileBloc>()
                                              .add(GoToFAQ());
                                        },
                                      ));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.15),
                                blurRadius: 10,
                                spreadRadius: 1.5),
                          ]),
                      child: Row(
                        children: [
                          //Image.asset("assets/moto.png"),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 21,
                                    width: 5,
                                    decoration: const BoxDecoration(
                                        color: Color(0xff4CB151),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(2.5),
                                            bottomRight: Radius.circular(2.5))),
                                  ),
                                  const SizedBox(width: 11),
                                  const TextLato("More",
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.width * 0.05,
                              ),
                              const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: MyProfileMenus(
                                      'check-updates', 'Check For Updates')),
                              const SizedBox(height: 20),
                              BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, state) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: MyProfileMenus(
                                        'about',
                                        'About',
                                        onPressed: () {
                                          context
                                              .read<ProfileBloc>()
                                              .add(GoToAbout());
                                        },
                                      ));
                                },
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: MyProfileMenus(
                                    'feedbacks', 'Send Feedbacks',
                                    onPressed: () {
                                  showPopup(
                                      'Share Feedback',
                                      'You can share your valuable feedback with us and share your experience',
                                      context);
                                }),
                              ),
                              const SizedBox(height: 20),
                              BlocBuilder<ProfileBloc, ProfileState>(
                                builder: (context, state) {
                                  return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: MyProfileMenus(
                                        'privacy-policy',
                                        'Privacy Policy',
                                        onPressed: () {
                                          context
                                              .read<ProfileBloc>()
                                              .add(GoToPrivPolic());
                                        },
                                      ));
                                },
                              ),
                              // const SizedBox(height: 65),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 85)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> showPopup(
      String title, String desc, BuildContext context) async {
    await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
        contentPadding: EdgeInsets.all(20.0),
        backgroundColor: Colors.white,
        content: Container(
          child: IntrinsicHeight(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextLato(title,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black),
              SizedBox(
                height: 10,
              ),
              TextLato(desc,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black),
              SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextLato(
                    '+91  999999999',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Color(0xFF109D10),
                  ),
                  Flexible(
                    child: TextLato(
                      'Whatsapp',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Color(0xFF109D10),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}

class order extends StatelessWidget {
  final FaIcon? icon;
  final String label;

  const order({super.key, required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.only(right: 8), child: icon),
          // Adjust the size as needed
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Text(
            label,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02),
          const Icon(Icons.arrow_forward_ios_outlined,
              color: Colors.black, size: 20),
        ],
      ),
    );
  }
}
