import 'dart:convert';

import 'package:http/http.dart' as http;

class ResCountriesServices {
  void getCountries({required String pais}) {
    var url = Uri.parse("https://restcountries.com/v2/all");

    http.get(url).then((response) {
      final List<dynamic> bodyDecoded = jsonDecode(response.body);
      print(bodyDecoded);

      /// (Instance of 'Country')
    });
  }
}
