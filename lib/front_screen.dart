import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'insta_post.dart';
import 'constants.dart';
import 'responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FrontScreen extends StatefulWidget {
  @override
  _FrontScreenState createState() => _FrontScreenState();
}

class _FrontScreenState extends State<FrontScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        AppBar( leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
          actions: [
            GestureDetector(
              child: InkWell(
                onTap:(){} ,
                 child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset('images/tony.png',
                    width: 40.0, height: 40.0),
                  ),)
              ),

            GestureDetector(
            child: IconButton(icon: Icon(FontAwesomeIcons.paperPlane), onPressed: (){}),
          )],
          title: Image(image: AssetImage("images/icon.jpg"),  height: 100,width: 100,),
          backgroundColor: Color(0xff1F35A2)),



        Expanded(child: Container(color: Color(0xffF5F5F5),child: ListView(

          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12,right: 12,bottom: 12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost(caption: 'Dogs are not our whole life, but they make our lives whole.',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',image: 'https://wedinator.com/wp-content/uploads/2019/06/cute-puppies-79.jpg',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost2(caption: 'Cuteness overload, am I right?',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',video: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost(caption: 'Anything is paws-ible with a dog by your side.',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',image: 'https://wedinator.com/wp-content/uploads/2019/06/cute-puppies-12.jpg',),
              ),
            ),Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost(caption: 'My dog\'s only flaw is not living forever.',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',image: 'https://wedinator.com/wp-content/uploads/2019/06/cute-puppies-14.jpg',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost(caption: 'I love my pup furry much.',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',image: 'https://www.rd.com/wp-content/uploads/2021/03/GettyImages-1133605325-scaled-e1617227898456.jpg',),
              ),
            ),Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),


                child: InstaPost2(caption: 'Cuteness overload, am I right?',imageicon:'images/tony.png' ,likes: '3.2k',messagesrating: '22',name: 'Robert Downey Jr',video: 'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',),
              ),
            ),
      ],)))]);

  }
}

