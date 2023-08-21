class Festival {
  final int pk;
  final String thumbnail;
  final String title;
  final String startDate;
  final String endDate;
  final String personName;
  final String personImg;
  final String participateNum;

  Festival({
    required this.pk,
    required this.thumbnail,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.personName,
    required this.personImg,
    required this.participateNum
  });

  factory Festival.fromJson(Map<String, dynamic> json) {
    return Festival(
      pk: json['pk'] as int,
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      personName: json['person_name'] as String,
      personImg: json['person_img'] as String,
      participateNum: json['participate_num'] as String
    );
  }
}