import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';import 'dart:math';
import 'responsive.dart';
import 'video_player.dart';
class InstaPost extends StatelessWidget {
final String imageicon,name,likes,messagesrating,image,caption;
InstaPost({@required this.imageicon,@required this.likes,@required this.messagesrating,@required this.name,@required this.image,@required this.caption});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children:[ Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image(image: AssetImage('$imageicon'),height: 40,width: 40,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[ Text('$name',style: textstyle1,),
                Opacity(opacity: 0.5,child: Text('Location',style: textstyle1,))
              ],
            ),
            SizedBox(width: Responsive.width(38, context)),
            Icon(Icons.more_vert),
          ],
        ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(borderRadius: BorderRadius.circular(12),child: Image(image: NetworkImage('$image'),)),
          ),
          Row(
              children:[
                Material(

                  child: Ink(
                    color: Colors.white,
                    child: IconButton(

                      icon: Icon(Icons.favorite,color: Colors.red,),
                    ),
                  ),
                ),

                Opacity(opacity: 0.5,child: Text('$likes',style: textstyle1,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform.rotate(angle: 270* pi / 180,child: Icon(FontAwesomeIcons.comment)),

                ),
                Opacity(opacity: 0.5,child: Text('$messagesrating',style: textstyle1,)),
                SizedBox(width: Responsive.width(45, context)),
                Material(
                  child: Ink(
                    color: Colors.white,
                    child: IconButton(
                        icon: Icon(FontAwesomeIcons.paperPlane,color: Colors.black)),
                  ),
                ),


              ]
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18,top: 6,bottom: 6),
            child: Text.rich(TextSpan(children: [TextSpan(text: '$name ', style: TextStyle(fontWeight: FontWeight.bold)),TextSpan(text: '$caption', style: TextStyle(fontWeight: FontWeight.w400)),],style: textstyle1)),
          ),

        ]
    );
  }
}
class InstaPost2 extends StatefulWidget {
  final String imageicon,name,likes,messagesrating,video,caption;
  InstaPost2({@required this.imageicon,@required this.likes,@required this.messagesrating,@required this.name,@required this.video,@required this.caption});

  @override
  _InstaPost2State createState() => _InstaPost2State();

}

class _InstaPost2State extends State<InstaPost2> {

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[ Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image(image: AssetImage('${widget.imageicon}'),height: 40,width: 40,),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[ Text('${widget.name}',style: textstyle1,),
                Opacity(opacity: 0.5,child: Text('Location',style: textstyle1,))
              ],
            ),
            SizedBox(width: Responsive.width(38, context)),
            Icon(Icons.more_vert),
          ],
        ),
         VideoDemo('${widget.video}'),

          Row(
              children:[
                Material(

                  child: Ink(
                    color: Colors.white,
                    child: IconButton(

                      icon: Icon(Icons.favorite,color: Colors.red,),
                    ),
                  ),
                ),

                Opacity(opacity: 0.5,child: Text('${widget.likes}',style: textstyle1,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Transform.rotate(angle: 270* pi / 180,child: Icon(FontAwesomeIcons.comment)),

                ),
                Opacity(opacity: 0.5,child: Text('${widget.messagesrating}',style: textstyle1,)),
                SizedBox(width: Responsive.width(45, context)),
                Material(
                  child: Ink(
                    color: Colors.white,
                    child: IconButton(
                        icon: Icon(FontAwesomeIcons.paperPlane,color: Colors.black)),
                  ),
                ),


              ]
          ),
          Padding(
            padding: const EdgeInsets.only(left:18.0,right: 18,top: 6,bottom: 6),
            child: Text.rich(TextSpan(children: [TextSpan(text: '${widget.name} ', style: TextStyle(fontWeight: FontWeight.bold)),TextSpan(text: '${widget.caption}', style: TextStyle(fontWeight: FontWeight.w400)),],style: textstyle1)),
          ),

        ]
    );
  }
}

