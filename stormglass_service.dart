
import 'dart:convert';
import 'package:http/http.dart' as http;

class StormglassService {
  final String baseUrl = 'https://v0-stormglassproxy.vercel.app/api/stormglass';

  Future<Map<String, dynamic>> fetchMarineData(double lat, double lng) async {
    final response = await http.get(Uri.parse('\$baseUrl?lat=\$lat&lng=\$lng'));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('فشل في جلب بيانات البحر من Stormglass');
    }
  }
}
