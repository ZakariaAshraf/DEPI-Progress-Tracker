typedef BookFilter = bool Function(Book book);

void main() {
  Map<String, Map<String, dynamic>> booksMap = {
  'book1': {
  "title": "1984",
  "author": "George Orwell",
  "yearPublished": 1949,
  "isCheckedOut": false
  },
  'book2': {
  "title": "To Kill a Mockingbird",
  "author": "Harper Lee",
  "yearPublished": 1960,
  "isCheckedOut": true
  },
  'book3': {
  "title": "Pride and Prejudice",
  "author": "Jane Austen",
  "yearPublished": 1813,
  "isCheckedOut": false},
  };
 List<Book> bookFromMap = multipleBooksFromMap(booksMap);
print("books from map : ${bookFromMap}");
  List<Book> L1 = [
    Book(
        title: "ketab1",
        author: "robert",
        yearPublished: 1999,
        isCheckedOut: false),
    Book(
        title: "ketab2",
        author: "ziko",
        yearPublished: 2003,
        isCheckedOut: true),
    Book(
        title: "ketab3",
        author: "ali",
        yearPublished: 1999,
        isCheckedOut: false),
    Book(
        title: "ketab4",
        author: "sherif",
        yearPublished: 1998,
        isCheckedOut: false),
  ];
 List<bool>L2 = filterBooks(L1, isCheckedFilter);

List<Book>booksSpecifiedByAuthor=L1.where((e)=>e.author=="ziko").toList();

print("original list of books");
  L1.forEach(print);
print("list that filterd by checked out");
L2.forEach(print);

print("books specified by author ziko");
booksSpecifiedByAuthor.forEach(print);
print("total books published after 2003 :${totalBookPublishedAfter(2003, L1)}");
}

class Book {
  String? title;
  String? author;
  int? yearPublished;
  bool? isCheckedOut;

  Book(
      {required this.title,
      required this.author,
      required this.yearPublished,
      required this.isCheckedOut});

  Book.unknownAuthor(
      {required this.title,
      author = "unknownAuthor",
      required this.yearPublished,
      this.isCheckedOut = false});





  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
        title: map["title"],
        author: map["author"],
        yearPublished: map["yearPublished"],
        isCheckedOut: map["isCheckedOut"]);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "title:$title,author:$author,yearPublished:$yearPublished,isCheckedOut:$isCheckedOut";
  }
}
List<Book>multipleBooksFromMap(Map<String, Map<String,dynamic>> booksMap){
return booksMap.entries.map((bookName)=>Book.fromMap(bookName.value)).toList();
}

filterBooks(List<Book> bookList, BookFilter filter) {
  return bookList.map((book) => filter(book)).toList();
}

bool isCheckedFilter(Book book) {
  if (book.isCheckedOut == false) {
    return false;
  } else {
    return true;
  }
}
countCheckedOutBox(Book book){
 // List<Book>isCheckedBooks=books.where((e)=>e.isCheckedOut==true).toList();


}
int totalBookPublishedAfter(int givenYear,List<Book>books){
 int counterOfBooks= books.fold(0, (total,element)=>element.yearPublished! > givenYear ?total+1 :total );
 return counterOfBooks;
}



