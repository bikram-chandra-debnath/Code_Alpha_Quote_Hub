import 'package:equatable/equatable.dart';

class PageState extends Equatable {
  final int currentPage;

  const PageState({this.currentPage = 0});

  PageState copyWith({int? currentPage}) {
    return PageState(currentPage: currentPage ?? this.currentPage);
  }

  @override
  List<Object> get props => [currentPage];
}
