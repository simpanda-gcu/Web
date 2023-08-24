class Festival {
  final int pk;
  final String thumbnail;
  final String title;
  final String startDate;
  final String endDate;
  final List<String> participation;
  final String personImg;
  final String participateNum;
  final String summary;
  final String desc;
  final String link;

  Festival({
    required this.pk,
    required this.thumbnail,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.participation,
    required this.personImg,
    required this.participateNum,
    required this.summary,
    required this.desc,
    required this.link
  });

  factory Festival.fromJson(Map<String, dynamic> json) {
    return Festival(
      pk: json['pk'] as int,
      thumbnail: json['thumbnail'] as String,
      title: json['title'] as String,
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      participation: json['participation'] as List<String>,
      personImg: json['person_img'] as String,
      participateNum: json['participate_num'] as String,
      summary: json['summary'] as String,
      desc: json['desc'] as String,
      link: json['link'] as String
    );
  }
}