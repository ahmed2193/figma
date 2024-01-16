import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileData extends StatefulWidget {
  const ProfileData({Key? key}) : super(key: key);

  @override
  State<ProfileData> createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController specialAnniversaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const TextLato("Complete Your Profile",
                fontSize: 18, fontWeight: FontWeight.w900, color: Colors.black),
            expandedHeight: MediaQuery.of(context).size.width * 0.2,
            pinned: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff109D10),
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              width: double.infinity,
            //  height: MediaQuery.of(context).size.width ,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: const Color(0xffB5F2AF)),
                              child: Image.asset('assets/ic-profile-green.png',
                                  width: 88, height: 88)),
                          TextButton(
                            onPressed: () {},
                            child: const TextLato(
                              "Change Photo",
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),


                    // Text input for Name
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Name',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff646665)))),
                            TextSpan(
                                text: '*',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffCB463F))))
                          ])),
                          TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero),
                          ),
                          const SizedBox(height: 33),
                          // Text input for Phone Number
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Phone Number',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff646665)))),
                            TextSpan(
                                text: '*',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffCB463F))))
                          ])),
                          TextField(
                            controller: phoneNumberController,
                            decoration: InputDecoration(
                                hintText: '12',
                                prefixIconConstraints:
                                    const BoxConstraints(minWidth: 80),
                                prefixIcon: Row(
                                  children: [
                                    Image.asset('assets/ic-flag-india.png',
                                        width: 24, height: 24),
                                    const SizedBox(width: 8),
                                    const TextLato('+91',
                                        color: Colors.black,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16)
                                  ],
                                )),
                          ),
                          const SizedBox(height: 33),
                          // Text input for Date of Birth
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: 'Date of Birth',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xff646665)))),
                            TextSpan(
                                text: '*',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        fontSize: 16,
                                        color: Color(0xffCB463F))))
                          ])),
                          TextField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                hintText: 'dd/mm/yy'),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Additional container for special anniversary
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFFE1E7E3),
                      ),
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 18, right: 18),
                      margin: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Any other Special Anniversary",
                              style: GoogleFonts.lato(
                                textStyle:
                                    Theme.of(context).textTheme.titleLarge,
                                color: Colors.black,

                                fontWeight: FontWeight.bold,
                                fontSize: 14
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            controller: specialAnniversaryController,
                            decoration: const InputDecoration(
                              labelText: 'dd/mm/yyyy',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // TextButton for Update Profile
                    TextButton(
                      onPressed: () {
                        // Add logic to update profile
                      },
                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.15,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xff109D10),
                          ),
                          child: const Center(
                              child: TextLato("Update Profile",
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
