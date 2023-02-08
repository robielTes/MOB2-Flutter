import 'dart:async';
import 'package:get_it/get_it.dart';
import 'package:quoter/models/quote.dart';
import 'package:quoter/services/quotable_io_provider.dart';
import 'package:quoter/services/quote_provider.dart';

class QuoteManager {
  final QuoteProvider _provider;
  late final StreamController<Quote> _streamController;

  QuoteManager(this._provider) {
    _streamController = StreamController();
    next();
  }

  Stream<Quote> get stream => _streamController.stream;

  void next() async {
    _streamController.add(await _provider.fetch());
  }

  // Register this manager locator
  // (Every manager will have such a method)
  static void register() {
    GetIt.I.registerLazySingleton(() => QuoteManager(QuotableIoProvider()));
  }

  // Returns the manager instance
  // (Every manager will have such a getter)
  static QuoteManager get instance => GetIt.I.get<QuoteManager>();
}
