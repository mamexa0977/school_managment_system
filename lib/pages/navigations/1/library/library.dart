import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BookListScreen extends StatefulWidget {
  @override
  _BookListScreenState createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  List<dynamic> books = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchBooks('physics'); // Default search query
  }

  Future<void> fetchBooks(String query) async {
    final response = await http.get(
      Uri.parse('https://www.googleapis.com/books/v1/volumes?q=$query'),
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      setState(() {
        books = jsonData['items'];
      });
    } else {
      throw Exception('Failed to load books');
    }
  }

  void searchBooks() {
    final query = searchController.text;
    if (query.isNotEmpty) {
      fetchBooks(query);
    }
  }

  void showBookDetails(dynamic book) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsScreen(book: book),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search Books',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: searchBooks,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index]['volumeInfo'];

                return ListTile(
                  onTap: () => showBookDetails(book),
                  leading: Image.network(
                    book['imageLinks']['thumbnail'],
                    width: 50,
                    height: 80,
                  ),
                  title: Text(book['title']),
                  subtitle: Text(
                    book['authors'] != null
                        ? book['authors'][0]
                        : 'Unknown Author',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BookDetailsScreen extends StatelessWidget {
  final dynamic book;

  BookDetailsScreen({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (book['imageLinks'] != null)
                Image.network(
                  book['imageLinks']['thumbnail'],
                  width: 150,
                  height: 200,
                ),
              SizedBox(height: 16),
              Text(
                'Title: ${book['title']}',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'Authors: ${book['authors'] != null ? book['authors'].join(", ") : 'Unknown'}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Description: ${book['description'] ?? 'No description available.'}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Publisher: ${book['publisher'] ?? 'Unknown'}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Published Date: ${book['publishedDate'] ?? 'Unknown'}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Page Count: ${book['pageCount'] ?? 'Unknown'}',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
