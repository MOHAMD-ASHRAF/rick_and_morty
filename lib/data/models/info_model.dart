class InfoModel {
  final int count;
  final int page;

  InfoModel({required this.count, required this.page});

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(count: json['count'], page: json['pages']);
  }
}
