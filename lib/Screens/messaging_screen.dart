import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MessagingPage extends StatefulWidget {
  const MessagingPage({Key? key}) : super(key: key);
  @override
  _MessagingPageState createState() => _MessagingPageState();
}
class _MessagingPageState extends State<MessagingPage> {
  bool show=false;
  @override
  Widget build(BuildContext context) {
    var widthscreen=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container(),),
              Container(
                // color: Colors.yellow,
                width: widthscreen,
                child: Column(
                    children:[
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width-60,
                            child: Card(
                              margin: EdgeInsets.only(right: 2,left: 2,bottom: 8),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                              // color: Colors.white,
                              child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.multiline,
                                maxLines: 5,
                                minLines: 1,
                                decoration: InputDecoration(
                                  hintText: "Type a message",
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.all(5),
                                  prefixIcon: IconButton(
                                    icon:Icon( Icons.emoji_emotions,color: Color(0xFF075e55),),
                                    onPressed: (){
                                      setState(() {
                                        show=!show;
                                      }); },),
                                  suffixIcon: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon:Icon( Icons.attach_file,color: Color(0xFF075e55),),
                                        onPressed: (){   },),
                                      IconButton(
                                        icon:Icon( Icons.camera_alt,color: Color(0xFF075e55),),
                                        onPressed: (){   },),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(bottom: 8,right: 2),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Color(0xFF075e55),
                                child:  IconButton(
                                  icon:Icon( Icons.mic,color: Colors.white,),
                                  onPressed: (){

                                  },),
                              )
                          )],
                      ),
                      show?Container(
                        height: MediaQuery.of(context).size.height/2.5,
                        child:emojiSelect(),):Container(),
                    ]

                ),
              )],
          ),
        ),
    );
  }
  Widget emojiSelect(){
    return EmojiPicker(
      config: Config(
          columns: 7,
          verticalSpacing: 0,
          horizontalSpacing: 0,
          initCategory: Category.SMILEYS,
          bgColor: Color(0xFF1BA3DB),
          indicatorColor: Colors.black,
          iconColor: Color(0xFF2F1A55),
          iconColorSelected: Color(0xFFFFFFFE),
          progressIndicatorColor: Colors.blue,
          showRecentsTab: true,
          recentsLimit: 28,
          noRecentsText: "No Recents",
          noRecentsStyle: TextStyle(
              fontSize: 20, color: Colors.black26),
          tabIndicatorAnimDuration: kTabScrollDuration,
          categoryIcons: CategoryIcons(),
          buttonMode: ButtonMode.MATERIAL
      ),
      onEmojiSelected:(category,emoji){
        print(emoji);
      },
      // onBackspacePressed: () {},
    );
  }
}