import 'package:flutter/cupertino.dart';
import 'package:simpanda_idea1/src/model/Festival.dart';

class FestivalProvider extends ChangeNotifier {
  final List<Festival> _festivals = [
    Festival(
      pk: 0,
      thumbnail: "https://media.disquiet.io/images/product/gallery/aa7371209549f1a361942f86442009035f35e8a31e9494a9dbd5715bb37f36cf",
      title: "1st NE(O)RDINARY DemoDAY",
      startDate: "09월 08일(금) 10:00",
      endDate: "09월 09일(토) 20:00",
      personName: "김태윤",
      personImg: "",
      participateNum: "120"
    ),
    Festival(
        pk: 1,
        thumbnail: "https://dev-event.vercel.app/_next/image?url=https%3A%2F%2Fbrave-people-3.s3.ap-northeast-2.amazonaws.com%2FDEVEVENT%2F2023-08-03-20-37-2614-e20e43b1.png&w=640&q=75",
        title: "MIND23 : 오늘도 멈추지 않는 IT인들",
        startDate: "08월 27일(일) 10:00",
        endDate: "08월 27일(일) 18:00",
        personName: "김태윤",
        personImg: "",
        participateNum: "120"
    ),
    Festival(
        pk: 2,
        thumbnail: "https://cdn.discordapp.com/attachments/950269281197752360/1141155648785088685/4th_UMC_DEMODAY_16-9.png",
        title: "[DAY 2 , 8/24] 4th UMC DEMODAY",
        startDate: "08월 24일 (목) 13:30",
        endDate: "08월 24일 (목) 19:00",
        personName: "김태윤",
        personImg: "",
        participateNum: "120"
    )
  ];

  Festival nowFestival = Festival(pk: 0, thumbnail: "", title: "", startDate: "", endDate: "", personName: "", personImg: "", participateNum: "");

  List<Festival> get festivals => _festivals;

  Festival festival(int index) {
    return _festivals[index];
  }

  set setNowFestival(int index) {
    nowFestival = festival(index);
  }
}