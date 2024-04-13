import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:poll_creation/constants/utils.dart';


void httErrorHandle({
  required http.Response response,
  required BuildContext context,
  required VoidCallback onSuccess})
{
  switch(jsonDecode(response.body)['code'])
      {
    case 200:
     return onSuccess();
     break;
    case!=200:
      return ShowSnakbar(context, jsonDecode(response.body)['reason']);
      }
}