part of 'bookmark_bloc.dart';

sealed class BookmarkEvent extends Equatable {
  const BookmarkEvent();

  @override
  List<Object> get props => [];
}

class ChangeIndexPageBookMark extends BookmarkEvent {
  final int? indexPage;
  const ChangeIndexPageBookMark(this.indexPage);
}
