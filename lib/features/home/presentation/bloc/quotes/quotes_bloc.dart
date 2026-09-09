import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quote_hub/features/home/data/model/quote_modle.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/quotes_state.dart';
import 'package:quote_hub/features/home/presentation/bloc/quotes/qutoes_event.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  QuoteBloc() : super(QuoteInitialState()) {
    on<FetchQuotesEvent>(_onFetchQuotes);
  }

  Future<void> _onFetchQuotes(
    FetchQuotesEvent event,
    Emitter<QuoteState> emit,
  ) async {
    emit(QuoteLoadingState());
    try {
      final querySnapshot = await _firestore.collection('Quotes').get();
      debugPrint("========== ${querySnapshot.toString()}");

      final quotes = querySnapshot.docs.map((doc) {
        return Quote.fromFirestore(doc.id, doc.data());
      }).toList();
      quotes.shuffle();
      emit(QuoteLoadedState(quotes));
    } catch (e) {
      emit(QuoteErrorState(e.toString()));
    }
  }
}
