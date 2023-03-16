import 'package:dart_package_api_rest/services/reqres_sercices.dart';
import 'package:dart_package_api_rest/services/rescountries_services.dart';

void main(List<String> args) {
  //ServicesReqresApi().getReqRespService(1);
  ResCountriesServices().getCountries(pais: "pais");
}
