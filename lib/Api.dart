import 'dart:convert';

import 'package:flutter_application_3apitest/Components.dart';
import 'package:flutter_application_3apitest/Post.dart';
import 'package:flutter_application_3apitest/Randomuser.dart';
import 'package:http/http.dart' as http;

class Api{

  static Future<List<Post>> postlist()async{
    var responeseData = await http.get(Components.URL);
    var responseBody = jsonDecode(responeseData.body);
    List lisy = responseBody as List;
    List<Post> postlist = lisy.map((e) => Post.from(e)).toList();
    return postlist;
  }

  static Future<List<Randomuser>> randomuserlist()async{
    var responeseData = await http.get(Components.RANDOM_USER_URL);
    var responseBody = jsonDecode(responeseData.body);
    List lisy = responseBody['results'] as List;
    List<Randomuser> randomuserlist = lisy.map((e) => Randomuser.from(e)).toList();
    return randomuserlist;
  }


}