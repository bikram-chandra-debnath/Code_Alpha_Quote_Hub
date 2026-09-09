import 'package:flutter_bloc/flutter_bloc.dart';
import 'page_event.dart';
import 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(const PageState()) {
    on<NextPagePressed>(_onNextPagePressed);
    on<OnScrollEvent>(_onScroll);
  }

  void _onNextPagePressed(NextPagePressed event, Emitter<PageState> emit) {
    emit(state.copyWith(currentPage: state.currentPage + 1));
  }

  void _onScroll(OnScrollEvent event, Emitter<PageState> emit) {
    emit(state.copyWith(currentPage: event.index));
  }
}
