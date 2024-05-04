import 'package:flutter/material.dart';
import 'package:flutter_application_3apitest/Api.dart';
import 'package:flutter_application_3apitest/Post.dart';
import 'package:flutter_application_3apitest/Randomuser.dart';

class One extends StatefulWidget {
  const One({super.key});

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  List<Post> postlist = [];
  List<Randomuser> randomuserlist = [];

  loadpost()async{
    List<Post> postlist = await Api.postlist();
    List<Randomuser> randomuserlist = await Api.randomuserlist();
    setState(() {
      this.postlist = postlist;
      this.randomuserlist = randomuserlist;
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadpost();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AppBar"),),
      body: Text("${postlist.length} + ${randomuserlist.length}"),
    );
  }
}