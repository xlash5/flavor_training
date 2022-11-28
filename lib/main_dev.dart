import 'package:flutter/material.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

import './my_app.dart';

void main() {
  FlavorConfig(
    name: "DEVELOP",
    variables: {
      "counter": 5,
      "message": "This is a develop message",
      "counter_add": 1,
    },
  );
  return runApp(MyApp());
}
