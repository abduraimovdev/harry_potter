import 'package:flutter/material.dart';
import 'package:harry_potter/app.dart';

import 'common/core/service_locator.dart';

void main() async{
  setupLocator();
  runApp(const HarryApp());

}

