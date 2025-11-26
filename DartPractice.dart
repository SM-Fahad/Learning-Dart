// Basic variable

void main() {
  test();
  collections();
  functionsTutorial();
  controlFlowTutorial();
  classesTutorial();
  exceptionHandlingTutorial();
  practiceExercise();
}

void test() {
  print('1. Variables and Data Types');
  print('=' * 30);

  var name = 'fahad';
  String greeting = 'Hello';
  int age = 27;
  double height = 5.9;
  bool isStudent = true;

  print('Basic Variables: ' + name + greeting);
  print('Name: $name, Type: ${name.runtimeType}');
  print('Age: $age, Type: ${age.runtimeType}');
  print('Height: $height, Type: ${height.runtimeType}');
  print('Is Student: $isStudent, Type: ${isStudent.runtimeType}');

  //Dynamic and Final
  dynamic x = "Sheikh";
  print('\nDynamic variable: $x (${x.runtimeType})');
  x = 500;
  print('\nNow changed Dynamic variable: $x (${x.runtimeType})');

  final y = 'Fahad';
  const double pi = 3.1416;
  print('Final: $y, Const: $pi');

  //Null safety
  String? nullAbleString = null;
  String nonNullable = 'Cannot be null';

  print('\n Null Safety');
  print('\n Nullable: $nullAbleString');
  print('\n Non-NullAble: $nonNullable');

  //Null aware operations
  String? possiblenull;
  String result = possiblenull ?? 'Default Value';
  print('Null aware result: $result');

  print('\n');
}

void collections() {
  print('2. Collections');
  print('=' * 30);

  //List
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  var numbers = [1, 2, 3, 4, 5];

  print("Lists: ");
  print("Fruits: $fruits");
  print("Numbers: $numbers");

  //List Operations
  fruits.add('Mango');
  fruits.addAll(['Grapes, Pineapple']);
  print('After Adding: $fruits');

  fruits.remove('Apple');
  print('After removing: $fruits');

  //List Mapping
  var upperCaseFruits = fruits.map((f) => {f.toUpperCase() + ' XYZ'}).toList();

  print('Upper Fruits:  $upperCaseFruits');

  //Map
  Map<String, int> ages = {'Fahad': 27, 'Raihan': 29, 'Arif': 25};
  print('\nMaps (Key-value pairs):');
  print('Ages: $ages');
  print('Fahad\'s age: ${ages['Fahad']}');

  //Maps Operations
  ages['Reyad'] = 27;
  ages['Arif'] = 27;
  print('After updates: $ages');

  ages.forEach((key, value) {
    print(' $key is $value years old.');
  });

  for (var key in ages.keys) {
    print(key + ' value ' + ages[key].toString());
  }

  print('\n');
}

// =============================================
// 3. FUNCTIONS/METHODS
// =============================================
void functionsTutorial() {
  print("3. FUNCTIONS AND METHODS");
  print("=" * 30);

  // Basic function calls
  greet('John');
  int sum = add(5, 3);
  print('Sum of 5 and 3: $sum');

  // Functions with different parameters
  printInfo('Alice');
  printInfo('Bob', 30);
  printInfo('Charlie', 27, 'Engineer');

  // Named parameters
  createUser('John', age: 25, isActive: true);
  createUser('Alice', isActive: true, age: 50); // Optional parameters

  // Arrow functions
  print('Square of 5: ${square(5)}');
  print('Is 20 adult? ${isAdult(20)}');

  // Higher-order functions
  var numbers = [1, 2, 3, 4, 5];
  print('\nHigher-order functions:');
  print('Original numbers: $numbers');

  var doubled = numbers.map((n) => n * 2);
  print('Doubled: $doubled');

  var evens = numbers.where((n) => n % 2 == 0);
  print('Even numbers: $evens');

  // Function as first-class citizen
  var operation = multiply;
  print('Multiplication result: ${operation(4, 5)}');

  // Passing function as parameter
  calculate(10, 5, add);
  calculate(10, 5, multiply);

  print('\n');
}

// Basic function definitions
void greet(String name) {
  print('Hello, $name!');
}

int add(int a, int b) {
  return a + b;
}

void printInfo(String name, [int age = 25, String? job]) {
  print('Name: $name, Age: $age, Job: $job');
}

void createUser(String name, {int? age, bool isActive = false}) {
  print('User created - Name: $name, Age: $age, Active: $isActive');
}

int square(int x) => x * x;

bool isAdult(int age) => age >= 18;
int multiply(int a, int b) => a * b;

void calculate(int a, int b, Function operation) {
  var result = operation(a, b);
  print('Calculation result: $result');
}

// =============================================
// 4. CONTROL FLOW
// =============================================
void controlFlowTutorial() {
  // var result = age >= 18 ? "Adult" : "Minor";
  // print(result);

  String? name;
  var finalName = name ?? "Guest";
  print(finalName); // Guest

  print("4. CONTROL FLOW");
  print("=" * 30);

  // If-else statements
  int score = 85;
  String grade;

  if (score >= 90) {
    grade = 'A';
  } else if (score >= 80) {
    grade = 'B';
  } else if (score >= 70) {
    grade = 'C';
  } else {
    grade = 'F';
  }
  print('Score: $score, Grade: $grade');

  // Switch statement
  String day = 'Monday';
  print('Day: $day');
  switch (day) {
    case 'Monday':
      print('Start of work week');
      break;
    case 'Friday':
      print('Weekend is near!');
      break;
    default:
      print('Regular day');
  }

  // Ternary operator
  String status = score >= 60 ? 'Pass' : 'Fail';
  print('Status: $status');

  // Loops
  var numbers = [1, 2, 3, 4, 5];

  print('\nLoops:');
  print('For loop:');
  for (int i = 0; i < numbers.length; i++) {
    print('  Index $i: ${numbers[i]}');
  }

  print('For-in loop:');
  for (var number in numbers) {
    print('  Number: $number');
  }

  print('While loop:');
  int count = 0;
  while (count < 3) {
    print('  Count: $count');
    count++;
  }

  print('Loop control (continue/break):');
  for (var number in numbers) {
    if (number == 3) continue; // Skip 3
    if (number == 5) break; // Stop at 5
    print('  Processing: $number');
  }

  print('\n');
}

// =============================================
// 5. CLASSES AND OBJECTS
// =============================================
void classesTutorial() {
  print("5. CLASSES AND OBJECTS");
  print("=" * 30);

  // Creating objects
  var person1 = Person('John', 25);
  var person2 = Person('Alice', 30);
  var newborn = Person.newborn('Baby');
  var newborn1 = Person.defaultConstructor();

  print('Person objects:');
  person1.introduce();
  person2.introduce();
  newborn.introduce();
  newborn1.introduce();

  // Using getters and setters
  print('${person1.name} is ${person1.ageStatus}');
  person1._age = 26;
  person1.introduce();

  // Inheritance
  var student = Student('Bob', 20, 'Computer Science');
  var employee = Employee('Carol', 35, 50000);

  print('\nInheritance:');
  student.introduce();
  student.study();

  employee.introduce();
  employee.work();

  print('\n');
}

class Person {
  String name;
  int _age;

  // Named default constructor
  Person.defaultConstructor() : name = "Unknown", _age = 0 {
    print("Default Constructor Called");
  }

  // Main parameterized constructor
  Person(this.name, this._age);

  // Named constructor (redirecting)
  Person.newborn(String name) : this(name, 0);

  Person.abc(String name) : this(name, 0);

  // Method
  void introduce() {
    print("Hello, I'm $name and I'm $_age years old.");
  }

  // Getter
  String get ageStatus => _age >= 18 ? "adult" : "minor";

  int get age => _age;

  // Setter example (commented)
  // set ageValue(int value) {
  //   if (value >= 0) {
  //     age = value;
  //   }
  // }
}

// class Person {
//   String name;
//   int age;

//   // Constructor
//   Person(this.name, this.age);

//   // Named constructor
//   Person.newborn(String name) : this(name, 0);

//   // Method
//   void introduce() {
//     print('Hello, I\'m $name and I\'m $age years old.');
//   }

//   // Getter
//   String get ageStatus => age >= 18 ? 'adult' : 'minor';

//   // Setter
//   // set age(int value) {
//   //   if (value >= 0) {
//   //     age = value;
//   //   }
//   // }
// }

class Student extends Person {
  String major;

  Student(String name, int age, this.major) : super(name, age);

  void study() {
    print('$name is studying $major');
  }

  @override
  void introduce() {
    print('I\'m $name, a $major student (age: $age)');
  }
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void work() {
    print('$name is working with salary \$$salary');
  }

  @override
  void introduce() {
    print('I\'m $name, an employee earning \$$salary (age: $age)');
  }
}

// =============================================
// 6. EXCEPTION HANDLING
// =============================================
void exceptionHandlingTutorial() {
  print("6. EXCEPTION HANDLING");
  print("=" * 30);

  // Basic try-catch
  print('Basic exception handling:');
  try {
    var result = divide(10, 0);
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  }

  // Specific exception handling
  print('\nSpecific exception handling:');
  try {
    var number = int.parse('abc'); // This will fail
    print('Number: $number');
  } on FormatException {
    print('Invalid number format!');
  } catch (e) {
    print('Other error: $e');
  } finally {
    print('Finally block always executes');
  }

  // Custom exception
  print('\nCustom exception:');
  try {
    validateAge(15);
  } on InvalidAgeException catch (e) {
    print('Custom error: ${e.message}');
  }

  try {
    validateAge(20);
  } on InvalidAgeException catch (e) {
    print('Custom error: ${e.message}');
  }

  print('\n');
}

double divide(int a, int b) {
  if (b == 0) {
    throw DivisionByZeroError();
  }
  return a / b;
}

class DivisionByZeroError {}

class InvalidAgeException implements Exception {
  final String message;
  InvalidAgeException(this.message);

  @override
  String toString() => 'InvalidAgeException: $message';
}

void validateAge(int age) {
  if (age < 18) {
    throw InvalidAgeException('Age must be at least 18 (provided: $age)');
  }
  print('Valid age: $age');
}

// =============================================
// 7. PRACTICE EXERCISE - LIBRARY MANAGEMENT
// =============================================
void practiceExercise() {
  print("7. PRACTICE EXERCISE - LIBRARY MANAGEMENT");
  print("=" * 30);

  // Create library system
  var library = Library();

  // Add books
  library.addBook(Book('Dart Programming', 'John Doe', 2023));
  library.addBook(Book('Flutter Guide', 'Jane Smith', 2024));
  library.addBook(Book('Advanced Dart', 'Bob Wilson', 2022));
  library.addBook(Book('Dart for Beginners', 'John Doe', 2023));

  // Display all books
  library.displayBooks();

  // Find books by author
  var johnsBooks = library.findBooksByAuthor('John Doe');
  print('\nBooks by John Doe:');
  for (var book in johnsBooks) {
    print('- ${book.title} (${book.year})');
  }

  // Borrow and return books
  print('\nBook borrowing:');
  var firstBook = library.books[0];
  firstBook.borrow();
  firstBook.displayInfo();

  firstBook.returnBook();
  firstBook.displayInfo();

  // Statistics
  print('\nLibrary Statistics:');
  print('Total books: ${library.totalBooks}');
  print('Available books: ${library.availableBooks}');
  print('Borrowed books: ${library.borrowedBooks}');
}

class Book {
  String title;
  String author;
  int year;
  bool isAvailable = true;

  Book(this.title, this.author, this.year);

  void displayInfo() {
    var status = isAvailable ? 'Available' : 'Borrowed';
    print('"$title" by $author ($year) - $status');
  }

  void borrow() {
    if (!isAvailable) {
      print('"$title" is already borrowed!');
      return;
    }
    isAvailable = false;
    print('"$title" has been borrowed');
  }

  void returnBook() {
    if (isAvailable) {
      print('"$title" is already available!');
      return;
    }
    isAvailable = true;
    print('"$title" has been returned');
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Added to library: "${book.title}"');
  }

  void displayBooks() {
    print('\nAll Library Books:');
    for (var book in books) {
      book.displayInfo();
    }
  }

  List<Book> findBooksByAuthor(String author) {
    return books.where((book) => book.author == author).toList();
  }

  int get totalBooks => books.length;
  int get availableBooks => books.where((book) => book.isAvailable).length;
  int get borrowedBooks => totalBooks - availableBooks;
}
