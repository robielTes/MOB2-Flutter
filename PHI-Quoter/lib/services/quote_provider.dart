import 'package:quoter/models/quote.dart';

abstract class QuoteProvider {
  Future<Quote> fetch();
}
