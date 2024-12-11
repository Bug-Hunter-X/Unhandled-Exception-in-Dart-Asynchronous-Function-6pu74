```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process the JSON response
      // ...
    } else {
      // Handle error response gracefully
      print('API request failed with status: ${response.statusCode}');
      // Optionally, you can provide more user-friendly feedback (e.g., display an error message to the user)
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error fetching data: $e');
    // Handle the error appropriately for your application
    // Instead of rethrowing, implement error handling or fallback mechanisms.
    // Example: Display an error message, use default data, or retry the request.
  }
}
```