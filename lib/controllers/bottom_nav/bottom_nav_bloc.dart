import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:figma/models/home/navigation_menu_home_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/texts.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  PageController pageController = PageController();
   List<NavigationMenuHomeModel>? listNav;
  BottomNavBloc() : super(BottomNavInitial()) {
    on<BottomNavInit>((event, emit) {
      emit(BottomNavState(listNav: [
        NavigationMenuHomeModel('home', true),
        NavigationMenuHomeModel('bookmark'),
        NavigationMenuHomeModel('giftcard'),
        NavigationMenuHomeModel('shopping-cart'),
        NavigationMenuHomeModel('shopping'),
      ]));
    });

    on<BottomNavOnChange>((event, emit) {
    listNav  = state.listNav!;
      for (var element in listNav!) {
        element.isSelected = false;
      }
      listNav![event.index].isSelected = true;
      inspect(listNav);
      emit(const BottomNavState().copyWith(listNav: listNav));



        pageController.jumpToPage(event.index);


    });
  }



}
