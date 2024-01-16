part of 'bookmark_bloc.dart';

sealed class BookmarkState extends Equatable {
  final int? indexPage;
  const BookmarkState({this.indexPage});

  @override
  List<Object> get props => [indexPage ?? 0];
}

final class BookmarkInitial extends BookmarkState {
  const BookmarkInitial(int? indexPage) : super(indexPage: indexPage);
}
