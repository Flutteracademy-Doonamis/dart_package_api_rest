class SupportPersonsModel {
  String? url;
  String? text;

  SupportPersonsModel({this.url, this.text});

  SupportPersonsModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    text = json['text'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['url'] = url;
    data['text'] = text;
    return data;
  }
}
