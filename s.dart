import 'dart:convert';

void main() {
  String jsonStr = '''
  {
    "May": 3,
    "May": 5,
    "November": 2,
    "December": 1,
    "December": 4,
    "December": 2
  }
  ''';

  // Step 1: Load the JSON data
  Map<String, dynamic> jsonData = json.decode(jsonStr);

  // Step 2: Extract the months and count the birthdays
  Map<String, int> birthdaysByMonth = {};

  jsonData.forEach((month, count) {
    birthdaysByMonth[month] = birthdaysByMonth.containsKey(month)
        ? birthdaysByMonth[month]! + count
        : count;
  });

  // Step 3: Find the month with the highest and lowest number of birthdays
  String monthWithMostBirthdays = '';
  String monthWithLeastBirthdays = '';
  int maxBirthdays = 0;
  var maxFinite;
  int minBirthdays = maxFinite;

  birthdaysByMonth.forEach((month, count) {
    if (count > maxBirthdays) {
      maxBirthdays = count;
      monthWithMostBirthdays = month;
    }
    if (count < minBirthdays) {
      minBirthdays = count;
      monthWithLeastBirthdays = month;
    }
  });

  // Display the results
  print('Months of all the birthdays: ${birthdaysByMonth.keys}');
  print('Birthdays in each month: $birthdaysByMonth');
  print('Month with the most birthdays: $monthWithMostBirthdays');
  print('Month with the least birthdays: $monthWithLeastBirthdays');
}
