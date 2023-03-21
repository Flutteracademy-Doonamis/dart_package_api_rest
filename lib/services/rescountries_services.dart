import 'dart:convert';

import 'package:dart_package_api_rest/app/data/models/country_v2_model.dart';
import 'package:http/http.dart' as http;

class ResCountriesServices {
  void getCountries({required String pais}) {
    var url = Uri.parse("https://restcountries.com/v2/name/peru");

    http.get(url).then((response) {
      final List<dynamic> bodyDecoded = jsonDecode(response.body);
      print(bodyDecoded);

      // final result = (jsonDecode(response.body) as List).first;

      print((jsonDecode(response.body) as List).first);

      final result = (jsonDecode(response.body) as List)
          .map((e) => CountryV2.fromJson(e))
          .first;

      print('Pais: ${result.name}');

      /// (Instance of 'Country')
    });
  }

  Future<http.Response> getRestCountry() async {
    final Map<String, dynamic> queryParameters = {
      "api_key": "xxxxxx",
      "name": "peru"
    };

    var url = Uri.https("restcountries.com", "/v2/all", queryParameters);

    print(url);

    return await http.post(url, headers: {});
  }
}
