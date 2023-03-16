import 'package:dart_package_api_rest/app/data/models/data_persons_model.dart';
import 'package:dart_package_api_rest/app/data/models/support_model.dart';

class PersonsModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<DataPersons>? data;
  SupportPersonsModel? support;

  PersonsModel(
      {this.page,
      this.perPage,
      this.total,
      this.totalPages,
      this.data,
      this.support});

  PersonsModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    total = json['total'];
    totalPages = json['total_pages'];
    if (json['data'] != null) {
      data = <DataPersons>[];
      json['data'].forEach((v) {
        data?.add(DataPersons.fromJson(v));
      });
    }
    support = json['support'] != null
        ? SupportPersonsModel?.fromJson(json['support'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    data['total'] = total;
    data['total_pages'] = totalPages;
    data['data'] = List<DataPersons>.from([data]);
    if (support != null) {
      data['support'] = support?.toJson();
    }
    return data;
  }
}
