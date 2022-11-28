import 'package:flutter/material.dart';

import 'package:flutter_flavor/flutter_flavor.dart';

import './my_app.dart';

void main() {
  FlavorConfig(
    name: "PRODUCTION",
    variables: {
      "counter": 10,
      "message": "This is a production message",
      "counter_add": 2,
    },
  );
  return runApp(MyApp());
}
