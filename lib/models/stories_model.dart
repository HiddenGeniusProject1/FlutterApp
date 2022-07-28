import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StoryModel{
  final String uid;
  final String url;
  final String text;

 StoryModel({required this.uid, required this.url, required this.text});

 factory StoryModel.fromJSON(json){
return StoryModel(uid: json['storyUid'], url: json['imageUrl'], text: json['title']);
 }
}