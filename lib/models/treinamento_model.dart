class Treinamento {
  int id;
  String overview;
  List<String> topics;
  String teacher;
  DateTime? startDate;
  DateTime? endDate;
  String title;
  double duration;
  double progress;

  Treinamento(
      {required this.id,
      required this.overview,
      required this.topics,
      required this.teacher,
      required this.startDate,
      required this.endDate,
      required this.title,
      required this.duration,
      required this.progress});

  factory Treinamento.fromJson(Map<String, dynamic> json) => Treinamento(
        id: json["id"] ?? 0,
        overview: json["overview"] ?? '',
        topics: List<String>.from(json["topics"].map((x) => x)),
        teacher: json["teacher"] ?? '',
        startDate: DateTime.tryParse(json["startDate"]),
        endDate: DateTime.tryParse(json["endDate"]),
        title: json["title"] ?? '',
        duration: json["duration"]?.toDouble() ?? 0,
        progress: json["progress"]?.toDouble() ?? 0,
      );
}
