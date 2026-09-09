import 'package:equatable/equatable.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();

  @override
  List<Object> get props => [];
}

class NextPagePressed extends PageEvent {
  const NextPagePressed();
}

class OnScrollEvent extends PageEvent {
  final int index;
  const OnScrollEvent({required this.index});
}
