// This class is completely decoupled from the state management and the UI.
class Quote {
  String body;
  String author;

  Quote(this.body, this.author);

  factory Quote.none() {
    return Quote("", "");
  }
}
