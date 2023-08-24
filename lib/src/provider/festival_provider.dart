import 'package:flutter/cupertino.dart';
import 'package:simpanda_idea1/src/model/Festival.dart';

class FestivalProvider extends ChangeNotifier {
  final List<Festival> _festivals = [
    Festival(
      pk: 0,
      thumbnail: "https://oopy.lazyrockets.com/api/v2/notion/image?src=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fsecure.notion-static.com%2Ff6d6a8d1-4009-4cd6-a39c-cfab4294b57e%2F%EC%9D%B4%EB%AF%B8%EC%A7%80_(1).png&blockId=088c5c4e-a0ce-4426-be4e-56ebfc7eb183",
      title: "1st NE(O)RDINARY DemoDAY",
      startDate: "09월 08일(금) 10:00",
      endDate: "09월 09일(토) 20:00",
      participation: ["김태윤"],
      personImg: "https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104_1280.jpg",
      participateNum: "120",
      summary: "컴공선배가 주관하고 작업자들의 일하는 문화를 바꾸는 브랜드 ‘너디너리’에서 주최하는 IT작업자를 위한 축제, NE(O)RDINARY DEMODAY에 여러분들을 초대합니다🙌🏻",
      desc: "\u{1F4CC} 어떤 볼거리가 있나요? \n* B1F는 세상을 바꾸고 싶은 'IT 연합 동아리'의 부스가, \n* 1F는 세상을 바꾸고 있는 'IT 기업'의 부스가, \n* 5F는 세상을 바꾸고 있는 '사람들'의 지식 공유가 준비되어 있습니다! \n\n\u{1F4CC} 5F 발표 세션은 어떤 주제들로 진행되나요 \n* 기술 성장, 커리어 성장, 그리고 협업&생산성&일하는 방법, 총 3개의 트랙으로 나누어져 있습니다 \n* 비바리퍼블리카(토스), 당근마켓, 우아한형제들, 헤이딜러 등에 재직하고 계신 연사 19분이 참여를 확정해주셨다는데..!! \n* 타임 테이블은 아래 이미지 또는 데모데이 공식 홈페이지에서 확인하실 수 있답니다 : \n\n\u{1F4CC} 참가 신청은 어떻게 하나요? \n* 티켓은 컨퍼런스 신청 / 행사 부스 관람 신청 두개가 있습니다! \n* 컨퍼런스 신청 시 행사 부스 관람도 자동으로 신청 됩니다. \n* 컨퍼런스는 1인당 2그룹까지 선택 신청 가능합니다! \n\n\u{1F6A8}신청하신 컨퍼런스 세션 시간보다 늦게 오시는 경우 입장이 어려우니 시간을 꼭 준수해주시길 바랍니다 \n\u{1F6A8} 👉 유튜브 컴공선배 구독하러 가기 👈 \n\n부스 참여를 원하시는 서비스 운영자분들은 편하게 아래 메일로 연락주세요 devbob@softsquared.com",
      link: ""
    ),
    Festival(
        pk: 1,
        thumbnail: "https://dev-event.vercel.app/_next/image?url=https%3A%2F%2Fbrave-people-3.s3.ap-northeast-2.amazonaws.com%2FDEVEVENT%2F2023-08-03-20-37-2614-e20e43b1.png&w=640&q=75",
        title: "MIND23 : 오늘도 멈추지 않는 IT인들",
        startDate: "08월 27일(일) 10:00",
        endDate: "08월 27일(일) 18:00",
        participation: ["김태윤"],
        personImg: "https://media.istockphoto.com/id/1413303999/photo/elementary-age-children-with-facial-expression-of-joy-on-the-first-day-of-school.webp?b=1&s=612x612&w=0&k=20&c=QCEBbRjGDiptDEaThzhSUJsggmbuNB3dDhNIJ3hE6Lc=",
        participateNum: "120",
        summary: "",
        desc: "안녕하세요!",
        link: ""
    ),
    Festival(
        pk: 2,
        thumbnail: "https://cdn.discordapp.com/attachments/950269281197752360/1141155648785088685/4th_UMC_DEMODAY_16-9.png",
        title: "[DAY 2 , 8/24] 4th UMC DEMODAY",
        startDate: "08월 24일 (목) 13:30",
        endDate: "08월 24일 (목) 19:00",
        participation: ["김태윤"],
        personImg: "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761_1280.jpg",
        participateNum: "120",
        summary: "",
        desc: "",
        link: ""
    )
  ];

  int _page = 0;

  Festival nowFestival = Festival(pk: 0, thumbnail: "", title: "", startDate: "", endDate: "", participation: [""], personImg: "", participateNum: "", summary: "", desc: "", link: "");

  List<Festival> get festivals => _festivals;

  Festival festival(int index) {
    return _festivals[index];
  }

  set setNowFestival(int index) {
    nowFestival = festival(index);
  }

  int get page => _page;

  set page(int page) {
    _page = page;
    notifyListeners();
  }
}