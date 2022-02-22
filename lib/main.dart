import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(QuotesList());
}

class QuotesList extends StatefulWidget {

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(author: "Osca Wilde", text: 'Be Yourself: everyone else  is already taken'),
    Quote(author: "Osca Wilde", text: 'i Have nothing to declare except my genius'),
    Quote(author: "Osca Wilde", text: 'The truth is rarely pure and never simple'),
  ];
  Widget quoteTemplate(quote){
    return
        Card(
          margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(

                  quote.text,
                  style: TextStyle(
                    fontSize: 18,
                    color:  Colors.redAccent,
                  ),
                ),
                SizedBox(height: 6.0),
                Text (
                  quote.author,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                    color: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
