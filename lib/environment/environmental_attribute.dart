import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentalAttribute {
  EnvironmentalAttribute.development() : apiUrl = dotenv.env['APIURLDEV'] ?? '';

  EnvironmentalAttribute.staging() : apiUrl = '';

  EnvironmentalAttribute.production() : apiUrl = '';

  final String apiUrl;
}
