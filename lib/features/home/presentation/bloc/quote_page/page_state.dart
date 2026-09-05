import 'package:equatable/equatable.dart';

class PageState extends Equatable {
  final int currentPage;
  final int totalPage;

  const PageState({this.currentPage = 0, this.totalPage = 10});

  PageState copyWith({int? currentPage, int? totalPage}) {
    return PageState(
      currentPage: currentPage ?? this.currentPage,
      totalPage: totalPage ?? this.totalPage,
    );
  }

  @override
  List<Object> get props => [currentPage, totalPage];
}
