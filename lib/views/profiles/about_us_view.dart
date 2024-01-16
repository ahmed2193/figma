import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const TextLato(
              "About",
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 18,
            ),
            expandedHeight: MediaQuery.of(context).size.width * 0.5,
            pinned: true,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xff109D10),
                size: 30,
              ),
              onPressed: () {
                context.pop();
              },
            ),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 90.0),
              child: Image.asset("assets/splash.png", width: 160, height: 160),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextLato(
                    "Planty, an app by Planty Homes Pvt. Ltd. aims at connecting the nurseries directly with plant enthusiasts. Our app offers a platform where people can buy plants online from their choice of nursery. Not only plants, nurseries can sell all their plant related products under their brand name. We as Planty Homes team, are dedicated towards making this Earth a better place andalso giving back to the environment.We believe in nurturing our green spaces and bringing greenery to your homes and gardens. With Planty app, nurseries can effortlessly showcase their unique products and reach out to a wider audience.On our app, plant enthusiasts can explore a wide variety of plants like flower plants, vegetables plants, vastu related plants, water plants, ceramic plants, gifting plants and many more.Join us in our initiative to create a greener tomorrow while supporting local nurseries.",
                    fontSize: 14,
                    height: 2,
                    color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
