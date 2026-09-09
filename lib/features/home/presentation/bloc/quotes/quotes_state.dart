import 'package:equatable/equatable.dart';
import 'package:quote_hub/features/home/data/model/quote_modle.dart';

abstract class QuoteState extends Equatable {
  const QuoteState();

  @override
  List<Object?> get props => [];
}

class QuoteInitialState extends QuoteState {}

class QuoteLoadingState extends QuoteState {}

class QuoteLoadedState extends QuoteState {
  final List<Quote> quotes;

  const QuoteLoadedState(this.quotes);

  @override
  List<Object?> get props => [quotes];
}

class QuoteErrorState extends QuoteState {
  final String message;

  const QuoteErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
