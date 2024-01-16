import 'package:figma/models/payments/payments_model.dart';
import 'package:figma/widgets/containers.dart';
import 'package:figma/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Select Payment Method",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headlineMedium,
              color: Colors.black,
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          expandedHeight: 50,
          pinned: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,
                color: Color(0xff109D10), size: 25),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
              height: MediaQuery.of(context).size.width * 2,
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    if (index == 3) {
                      return const Padding(
                        padding: EdgeInsets.only(top: 28, bottom: 12),
                        child: TextLato('Saved Cards',
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      );
                    } else {
                      return ContainerPayment(PaymentModel.listPayments[index]);
                    }
                  },
                  separatorBuilder: (context, index) {
                    return index == 3
                        ? const SizedBox()
                        : const Divider(color: Color(0xff979797));
                  },
                  itemCount: PaymentModel.listPayments.length)),
        ),
      ]),
    );
  }
}

class PaymentMethodItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const PaymentMethodItem(
      {super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 40, height: 40),
          // Adjust the size as needed
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Text(
            label,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.5),
          const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
            size: 20,
          ),
        ],
      ),
    );
  }
}

class PaymentMethodItems extends StatelessWidget {
  final String imagePath;
  final String label;

  const PaymentMethodItems(
      {super.key, required this.imagePath, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Image.asset(imagePath, width: 50, height: 50),
          // Adjust the size as needed
          SizedBox(width: MediaQuery.of(context).size.width * 0.05),
          Text(
            label,
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
