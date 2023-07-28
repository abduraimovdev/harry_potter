import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:harry_potter/app.dart';
import 'package:harry_potter/common/apis/apis.dart';
import 'package:harry_potter/common/models/Book_model.dart';
import 'package:harry_potter/common/models/base_api.dart';
import 'package:harry_potter/common/services/network_service.dart';

import 'common/core/service_locator.dart';

void main() async{
  setupLocator();
  runApp(const HarryApp());
  final net = DioService(dio: Dio());
  net.configuration(Apis.baseUrl);
  Map<String, dynamic>? data = await net.get(api: Apis.books) as Map<String, dynamic>;
  // print(data);
  print(BaseApi<Book>.fromJson(data));
}

