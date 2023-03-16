import 'dart:convert';

import 'package:dart_package_api_rest/app/data/models/persons_model.dart';
import 'package:http/http.dart' as http;

class ServicesReqresApi {
  PersonsModel personsModel = PersonsModel();
  void getReqRespService(int numberPage) {
    var url = Uri.parse("https://reqres.in/api/users?page=$numberPage");
    print(url);

    http.get(url).then((response) {
      print(response);
      print(response.body);
      personsModel = PersonsModel.fromJson(jsonDecode(response.body));
      personsModel.data?.forEach((element) {
        print(element.email);
      });
      print(personsModel);
    });
  }
}
