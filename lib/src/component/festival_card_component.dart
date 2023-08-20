import 'package:flutter/cupertino.dart';
import 'package:simpanda_idea1/src/fragment/festival_card_fragment.dart';
import 'package:simpanda_idea1/src/theme/theme.dart';

import 'component.dart';

class FestivalCardComponent implements Component {
  @override
  Widget compose(Map<String, dynamic> args, BuildContext context) {
    return FestivalCard(
        title: args['title'],
        startDate: args['start_date'],
        endDate: args['end_date'],
        thumbnail: args['thumbnail'],
        personImg: args['person_img'],
        personName: args['person_name'],
        participateNum: args['participate_num']
    );
  }
}