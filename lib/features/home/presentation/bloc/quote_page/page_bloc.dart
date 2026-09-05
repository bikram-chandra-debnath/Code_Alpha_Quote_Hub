import 'package:flutter_bloc/flutter_bloc.dart';
import 'page_event.dart';
import 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc() : super(const PageState()) {
    on<NextPagePressed>(_onNextPagePressed);
  }

  void _onNextPagePressed(NextPagePressed event, Emitter<PageState> emit) {
    if (state.currentPage < state.totalPage - 1) {
      emit(state.copyWith(currentPage: state.currentPage + 1));
    }
  }
}
