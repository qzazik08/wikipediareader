import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
@HiveType(typeId: 0)
class Article extends HiveObject{
  @HiveField(0)
  late bool hasImage;

  @HiveField(1)
  Image? image;

  @HiveField(2)
  late String titles;

  @HiveField(3)
  String? description;

  @HiveField(4)
  late String extract;
}
