```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  int retries = 3; // Allow up to 3 retries
  while (retries > 0) {
    try {
      final response = await http.get(Uri.parse('https://api.example.com/data'));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body);
        return jsonData;
      } else {
        print('Error: HTTP status code ${response.statusCode}');
        retries--;
        await Future.delayed(Duration(seconds: 2)); // Wait before retrying
      }
    } catch (e) {
      print('Error: $e');
      retries--;
      await Future.delayed(Duration(seconds: 2));
      if (retries == 0) {
        // Handle final failure (e.g., show user-friendly error)
        rethrow; // Or custom error handling
      }
    }
  }
  return null; // or throw a custom exception 
}
```