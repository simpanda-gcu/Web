import 'package:flutter/cupertino.dart';

class UiProvider extends ChangeNotifier {
  int _page = 0;
  Map<String, dynamic> blueprint = {
    'screen': {
      'festival': [
        {
          "__typename": "FestivalCard",
          "title": '1st NE(O)RDINARY DemoDAY',
          "start_date": "09월 08일(금) 10:00",
          "end_date": "09월 09일(토) 20:00",
          "thumbnail": "https://d2i2w6ttft7yxi.cloudfront.net/froala%2F1691457275655-%E1%84%82%E1%85%A5%E1%84%83%E1%85%B5%E1%84%82%E1%85%A5%E1%84%85%E1%85%B5%E1%84%92%E1%85%A2%E1%84%8F%E1%85%A5%E1%84%90%E1%85%A9%E1%86%AB+%E1%84%87%E1%85%A2%E1%84%82%E1%85%A5.png",
          "person_img": "",
          "person_name": "김태윤",
          "participate_num": "120",
        },
        {
          "__typename": "FestivalCard",
          "title": 'MIND23 : 오늘도 멈추지 않는 IT인들',
          "start_date": "08월 27일(일) 10:00 ",
          "end_date": "08월 27일(일) 18:00 ",
          "thumbnail": "https://dev-event.vercel.app/_next/image?url=https%3A%2F%2Fbrave-people-3.s3.ap-northeast-2.amazonaws.com%2FDEVEVENT%2F2023-08-03-20-37-2614-e20e43b1.png&w=640&q=75",
          "person_img": "",
          "person_name": "지민성",
          "participate_num": "30",
        },
        {
          "__typename": "FestivalCard",
          "title": '[DAY 2 , 8/24] 4th UMC DEMODAY',
          "start_date": "08월 24일 (목) 13:30",
          "end_date": "08월 24일 (목) 19:00",
          "thumbnail": "https://cdn.discordapp.com/attachments/950269281197752360/1141155648785088685/4th_UMC_DEMODAY_16-9.png",
          "person_img": "",
          "person_name": "박성원",
          "participate_num": "40",
        }
      ]
    }
  };

  List<Map<String, dynamic>> get festivalUI => blueprint['screen']['festival'];

  int get page => _page;
  set page(int changePage) {
    _page = changePage;
    notifyListeners();
  }
}