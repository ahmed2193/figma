import 'package:figma/controllers/order/order_bloc.dart';
import 'package:figma/views/nurseries/nurseries_order.dart';
import 'package:figma/views/plants/plam_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<OrderBloc>(
      create: (context) => OrderBloc(),
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, inner) => [
              SliverToBoxAdapter(
                  child: Column(
                children: [
                  AppBar(
                      centerTitle: true,
                      backgroundColor: Colors.white,
                      elevation: 0,
                      title: Text(
                        "Your Order",
                        style: GoogleFonts.lato(
                            textStyle:
                                Theme.of(context).textTheme.headlineMedium,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                ],
              ))
            ],
            body: BlocBuilder<OrderBloc, OrderState>(
              builder: (context, state) {
                return DefaultTabController(
                  initialIndex: state.indexPage ?? 0,
                  length: 2,
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        TabBar(
                            labelColor: Colors.black,
                            indicatorColor: const Color(0xff109D10),
                            padding: EdgeInsets.zero,
                            onTap: (index) {
                              context
                                  .read<OrderBloc>()
                                  .add(ChangeIndexPageOrder(index));
                            },
                            labelStyle: GoogleFonts.lato(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            tabs: const [
                              Tab(text: 'Active Orders'),
                              Tab(text: 'Order History')
                            ]),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 3,
                            width: MediaQuery.sizeOf(context).width,
                            color: const Color(0xffEAEAEA),
                          ),
                        ),
                        const Expanded(
                          child: TabBarView(
                            physics: NeverScrollableScrollPhysics(),
                            children: [Plam(), NurseriesOrder()],
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
