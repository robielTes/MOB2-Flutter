import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quoter/models/quote.dart';
import 'package:quoter/services/quote_provider.dart';

// This class is completely decoupled from the state management and the UI.
class QuotableIoProvider implements QuoteProvider {
  Future<Quote> fetch() async {
    final response = await http.get(Uri.parse('https://api.quotable.io/random'));

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Quote(json['content'], json['author']);
    } else {
      throw Exception(response.reasonPhrase!);
    }
  }
}
