import 'dart:convert';
import 'package:http/http.dart'as http;

 Future<void> registerUserApi(email,phoneNumber,password,confirmPassword) async {
    final String apiUrl = "http://192.168.1.14:8000/register/"; // Replace with your API endpoint

    final Map<String, dynamic> userData = {
    "email":email,
    "password":password,
    "phone_number":phoneNumber
    };

    final response = await http.post(
      Uri.parse(apiUrl),
      body: jsonEncode(userData),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 302) {
      // Registration successful
      print('User registered successfully!');
       
      // return jsonDecode(response.body);
      // Perform any additional actions here, such as navigating to a new screen
    } else {
      // Registration failed
      print('Registration failed. Error: ${response.body}');
    }
  }
 