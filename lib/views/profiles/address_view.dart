import 'package:figma/core/utils/size_utils.dart';
import 'package:figma/models/home/drop_down_home_model.dart';
import 'package:figma/widgets/containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/utils/image_constant.dart';
import '../../widgets/custom_image_view.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  TextEditingController nameController = TextEditingController();
  TextEditingController receiverNameController = TextEditingController();
  TextEditingController contatacNameController = TextEditingController();
  TextEditingController streetAddressController = TextEditingController();
  TextEditingController aptController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController =
      TextEditingController(text: 'India');
  TextEditingController zipcodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(

        backgroundColor: Colors.white,
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Enter complete address",
          style: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
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
      ),*/
      body: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 0),
                  child: Text(
                    "Enter complete address",
                    style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, bottom: 0),
                child: IconButton(
                  icon: const Icon(
                    Icons.cancel,
                    color: Color(0xff7D7D7D),
                    size: 24,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
          Divider(),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Save Address as *",
                        style: GoogleFonts.lato(
                            textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                            color: const Color(0xff646665),
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      const SizedBox(height: 11),
                      Row(
                        children: List.generate(
                            4,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(right: 12),
                                  child: ContainerDropwDown(DropwDownModel(
                                      [
                                        'Home',
                                        'Work',
                                        'Hotel',
                                        'Others'
                                      ][index],
                                      [false, false, false, false][index])),
                                )),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      // Text input for Receiver's Name
                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: receiverNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            suffixIcon: Container(
                              width: 60,
                              child: Row(
                                children: [
                              
                                  VerticalDivider(
                                      color: Colors.grey[200]),
                                  CustomImageView(
                                    imagePath: ImageConstant.callIcon,
                                  
                                  ),
                                ],
                              ),
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Receiver’s name*',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: contatacNameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                       
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Receiver’s contact*',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 55,
                        child: // Text input for Street Address
                            TextField(
                          controller: streetAddressController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                           
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Complete Address*',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Text input for Apt, Sut, etc (Optional)
                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: aptController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                       
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Nearby landmark (optional)',
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Text input for City

                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: cityController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                    
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'City*',
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),
                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: countryController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                   
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Country*',
                          ),
                          enabled: false,
                        ),
                      ),
                      const SizedBox(height: 15),
                      // Text input for Zipcode
                      SizedBox(
                        height: 55,
                        child: TextField(
                          controller: zipcodeController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                        
                            hintStyle: TextStyle(color: Colors.grey),
                            labelStyle: TextStyle(color: Colors.grey),
                            focusedBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            enabled: true,
                            enabledBorder: OutlineInputBorder(
                                //Outline border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            border: OutlineInputBorder(
                                //Outlin
                                // e border type for TextFeild
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                )),
                            labelText: 'Zipcode*',
                          ),
                          enabled: false,
                        ),
                      ),
                    ],
                  ),
                  // Additional container for special anniversary

                  // TextButton for Save Address
                  const SizedBox(height: 23),

                  InkWell(
                    onTap: () {
                      // Add logic to save address
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
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
                            "Save addresses",
                            style: GoogleFonts.lato(
                              textStyle:
                                  Theme.of(context).textTheme.headlineMedium,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryContainers extends StatelessWidget {
  final FaIcon? icon;
  final String text;

  const CategoryContainers({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: MediaQuery.of(context).size.width * 0.1,
          width: MediaQuery.of(context).size.width * 0.20,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            border: Border.all(width: 0.1),
          ),
          child: Row(
            children: [
              if (icon != null)
                Padding(padding: const EdgeInsets.only(right: 8), child: icon),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(text,
                    style: GoogleFonts.lato(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none)),
              ),
            ],
          ),
        );
      },
    );
  }
}
