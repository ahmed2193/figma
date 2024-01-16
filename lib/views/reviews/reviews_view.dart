import 'package:figma/controllers/bookmark/bookmark_bloc.dart';
import 'package:figma/views/nurseries/nurseries.dart';
import 'package:figma/views/plants/plant_saplings.dart';
import 'package:figma/widgets/search_bar.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/home/drop_down_home_model.dart';
import '../../widgets/buttons.dart';
import '../../widgets/containers.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  static final listDropDownReviews = [
    DropwDownModel('Filters', true),
    DropwDownModel('Relevance', true),
    DropwDownModel('Verified'),
    DropwDownModel('With Photo'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookmarkBloc>(
      create: (context) => BookmarkBloc(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          forceMaterialTransparency: true,
            centerTitle: false,
            leading: InkWell(
              onTap: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios,
                  color: Colors.black, size: 25),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(
              "Chaps - In Fast Food",
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headlineMedium,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.linked_camera_sharp,
                  size: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 24,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.send,
                  size: 24,
                ),
                onPressed: () {},
              ),
            ]),
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                      Colors.white,
                      Color(0xFFe0f2f0),
                    Colors.white
                    ],
                    stops: <double>[
                      0.0,
                      0.5,
                      0.7,
                    ],
                  ),
                  color: Colors.redAccent,

                  borderRadius: BorderRadius.circular(5)),
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(child:
                  TextLato(
                    'This restaurant prioritises customer support',
                    fontSize: 12,
                    color: Colors.black,
                  ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.stars_outlined, color: Colors.grey, size: 24),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: SearchBarTemplate(
                  'Search for a nursery or a plant',
                  backgroundColor: Colors.white,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: SizedBox(
                height: 42.5,
                child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        ContainerDropwDown(listDropDownReviews[index]),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: DropwDownModel.listDropDown.length),
              ),
            ),
            Divider(
              color: Colors.grey[200],
            ),
            SizedBox(
              height: 6,
            ),
            TextLato(
              '  4 days ago',
              color: Colors.grey,
            ),
            SizedBox(
              height: 6,
            ),
            Divider(
              color: Colors.grey[200],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.tag_faces),
                      SizedBox(
                        width: 6,
                      ),
                      TextLato(
                        'Helpful',
                        color: Colors.black,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.insert_comment),
                      SizedBox(
                        width: 6,
                      ),
                      TextLato(
                        'Comment',
                        color: Colors.black,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.send_and_archive_sharp),
                      SizedBox(
                        width: 6,
                      ),
                      TextLato(
                        'Shared',
                        color: Colors.black,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey[200], thickness: 10),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child:
            Row(
              children: [

                Icon(Icons.person),
                SizedBox(width: 20,),
                const Expanded(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLato(
                      'Jasmine',
                      color: Colors.black,
                    ),
                    TextLato(
                      '0 Followers',
                      color: Colors.grey,
                    ),
                  ],
                ),),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [       Container(
                    decoration: BoxDecoration(
                        color: Colors.redAccent,
                        border: Border.all(width: 1, color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(5)),
                    width: 60,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.star, color: Colors.white, size: 16),
                      ],
                    ),
                  ),
                    Container(
                      padding: EdgeInsets.only(top: 6),
                      width: 200,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.check_circle, color: Colors.grey, size: 16),
                          SizedBox(width: 4),
                          TextLato(
                            'Verified  order',
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

              ],

            ),),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLato(
                      'Dish Rating',
                      color: Colors.black,
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextLato(
                            'Chicken Fried Rice',
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[50],
                              border: Border.all(width: 1, color: Colors.amber),
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(4),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextLato(
                            'Veg Spring Roll',
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[50],
                              border: Border.all(width: 1, color: Colors.amber),
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(4),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextLato(
                            'Veg Momo [8 pieces]',
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.amber[50],
                              border: Border.all(width: 1, color: Colors.amber),
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(4),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 16),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextLato(
                      'Overall Review',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextLato(
                      'the vendor used cheap quality refined oil to fry. The food had lost its aroma and it was tasteless. Zero-quality'
                      ' foot at a high price.',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextLato(
                      '  2 days ago',
                      color: Colors.grey,
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey[200],
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: ButtonTemplate('Write a review', onPressed: () {}))
          ],
        )),
      ),
    );
  }
}
