import 'dart:io';


void main() {
  // Number 1: Write a program that prints out all the elements of the list that are less than 5.
  List a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (int number in a) {
    if (number < 5) {
      print(number);
    }
  }

  // Number 2: Write a program that returns a list that contains only the elements that are common between them (without duplicates).
  // Make sure your program works on two lists of different sizes.
  List b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 56, 83];
  List commonElements = findCommonElements(a, b);

  print("Common elements: $commonElements");

  // Number 3: Write a program to check if a string is a palindrome or not.

  var inputString = "madam";
  if (isPalindrome(inputString)) {
    print("$inputString is a palindrome.");
  } else {
    print("$inputString is not a palindrome.");
  }

  // Number 4: Write a program that takes a list of numbers and makes a new list of only the first and last elements of the given list
  List inputList = [5, 10, 15, 20, 25];
  List result = getFirstAndLastElements(inputList);
  print("New list: $result");

//Number 5:
  print("Please enter a long string containing multiple words:");
  String theString = stdin.readLineSync()!;
  String reversedString = reverseWords(theString);
  print("Reversed string: $reversedString");

  //Number 6:Write a program (function) that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.

  List inputListWithDuplicates = [1, 2, 2, 3, 3, 4, 5, 5, 6, 6, 18, 18];
  List listWithoutDuplicates = removeDuplicates(inputListWithDuplicates);
  print("List without duplicates: $listWithoutDuplicates");


  //Number 7
  //Since with json each key should be unique, i used an array to represent the multiple birthdays in each month
  String jsonData = '''   
   {
    "May": [3, 5],
    "November": [2],
    "December": [1, 4, 2]
  }
  ''';
}

// Functions

//Function for reversing
String reverseWords(String input) {
  List words = input.split(' ');
  List reversedWords = words.reversed.toList();
  return reversedWords.join(' ');
}

// Function for finding common elements
List findCommonElements(List list1, List list2) {
  Set set1 = list1.toSet(); // I converted to sets to remove duplicates
  Set set2 = list2.toSet();

  Set intersection = set1.intersection(
      set2); // Find the intersection of the two sets (common elements)
  List commonElements = intersection.toList();

  return commonElements;
}

// function for checking whether the string is a palindrome
bool isPalindrome(str) {
  var cleanedString = str.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();

  // Compare the cleaned string with its reverse
  var reversedString = cleanedString.split('').reversed.join('');

  return cleanedString == reversedString;
}

// function for returning the first and last elements
List getFirstAndLastElements(List list) {
  if (list.isEmpty) {
    return [];
  } else {
    return [list.first, list.last];
  }
}

List removeDuplicates(List list) {
  // Using a Set to remove duplicates while preserving the order of elements
  Set uniqueElements = list.toSet();

  List listWithoutDuplicates = uniqueElements.toList();

  return listWithoutDuplicates;
}





