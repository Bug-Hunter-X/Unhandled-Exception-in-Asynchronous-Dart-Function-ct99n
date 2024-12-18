```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Access data from jsonData
      print(jsonData['key']); 
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Additional error handling could include logging to a service or displaying an error message to the user.
  }
}
```