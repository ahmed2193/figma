import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  PageController pageController = PageController();
  BookmarkBloc() : super(const BookmarkInitial(0)) {
    on<ChangeIndexPageBookMark>((event, emit) {
      emit(BookmarkInitial(event.indexPage));
      pageController.animateToPage(event.indexPage ?? 0,
          duration: const Duration(milliseconds: 250), curve: Curves.easeInOut);
    });
  }
}
