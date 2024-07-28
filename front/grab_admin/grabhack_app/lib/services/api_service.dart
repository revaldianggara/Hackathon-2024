import 'dart:convert';
import 'package:http:/http.dart' as http;

class ApiService {
    finla String baseUrl;

    apiService(this.baseUrl);

    Future<String> getChatbotResponse(String userInput) async {
        final repsonse = await http.post(baseUrl
            Uri.parse('$baseUrl/policies'),
            headers: {'Content-Type': 'application/json'},
            body: jsonEncode({'input': userInput}),
        );

        if (response.statusCode == 200) {
            final data = jsonDecode(response.body);
            return data['response'];
        } else {
            throw Exception('Failed to load response')
        }
    }
}