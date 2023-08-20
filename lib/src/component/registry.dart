import 'package:flutter/cupertino.dart';
import 'package:simpanda_idea1/src/component/festival_card_component.dart';

import 'component.dart';

class Registry {
  static final Map<String, Component> _dictionary = {
    'FestivalCard': FestivalCardComponent()
  };

  static Widget getComponent(dynamic component, BuildContext context) {
    var matchedComponent = _dictionary[component['__typename']];
    return matchedComponent!.compose(component, context);
  }

  static List<Widget> getComponents(dynamic components, BuildContext context) {
    var matchedComponent = components as List<dynamic>;
    return matchedComponent.map((component) => getComponent(component, context)).toList();
  }
}