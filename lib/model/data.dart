import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Data {
  final String id;
  final List<dynamic> user_type;
  final String created_at;
  final Map<String, dynamic> created_by;
  final String topic;
  final String statement;
  final String poll_type;
  final List<String> text_options;
  final int?  newsid;
  final int no_of_likes;
  final int no_of_dislkes;
  final bool is_anonymous;
  final List users_interacted;
  final Map<String, dynamic> response;

  Data({required this.id,
  required this.user_type,
    required this.created_at,
    required this.created_by,
    required this.topic,
    required this.statement,
    required this.poll_type,
    required this.text_options,
    required this.newsid,
    required this.no_of_likes,
    required this.no_of_dislkes,
    required this.is_anonymous,
    required this.users_interacted,
    required this.response
  });


  Map<String,dynamic> tomap()
  {
    return {
      'id':id,
      'user_type':user_type,
      'created_at':created_at,
      'created_by':created_by,
      'topic':topic,
      'statement':statement,
      'poll_type':poll_type,
      'text_options':text_options,
      'news_id':newsid,
      'no_of_likes':no_of_likes,
      'no_of_dislikes':no_of_dislkes,
      'is_anonymous':is_anonymous,
      'users_interacted':users_interacted,
      'response':response
    };
  }

  factory Data.toclassonject(Map<String,dynamic>map)
  {
    return Data(
      id: map['_id'],
      user_type: map['user_type'],
      created_at: map['created_at'],
       created_by: map['created_by'] as Map<String,dynamic>,
      topic: map['topic'],
      statement: map['statement'],
      poll_type: map['poll_type'],
      text_options: List<String>.from(map['text_options']),
      newsid: map['news_id'] as int?,
      no_of_likes: map['no_of_likes'] as int,
      no_of_dislkes: map['no_of_dislikes']as int,
      is_anonymous: map['is_anonymous'] as bool,
      users_interacted: List.from(map['users_interacted'] as List),
      response: map['response']
    );
  }

  String toMapobject()=>jsonEncode(tomap());

  factory Data.tojson(String source)=> Data.toclassonject(jsonDecode(source));
  }

