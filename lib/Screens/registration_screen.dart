import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}
class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('Enter your number',style: TextStyle(color: Color(0xFF075e55)),)
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              SizedBox(height: 5,),
              Text("We will send an sms message to verify your number",style: TextStyle(color:Colors.black,fontSize: 14),),
              SizedBox(height: 5,),
              Text("What's my number?",style: TextStyle(color:Colors.cyan[800],fontSize: 13),),
              SizedBox(height: 10,),
              countryCard(),

            ]
          ),
      ),
    );}
  Widget countryCard(){
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            Text("Phone",style: TextStyle(color: Color(0xFF075e55),fontSize: 10 ),),
            SizedBox(width: 190,)
          ],),
          SizedBox(height: 0,),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 27,
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xFF0ac025)
                              )
                          )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("+88",style: TextStyle(color: Color(0xFF075e55),fontSize: 14 )),
                            Icon(Icons.arrow_drop_down),
                          ])),
                  Container(
                    width: MediaQuery.of(context).size.width/2,
                    height: 26.5,
                    child: TextField(
                     textAlignVertical: TextAlignVertical.top,
                      keyboardType: TextInputType.number,
                      cursorHeight: 20,
                      decoration: InputDecoration(
                      isDense: true,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF0ac025)),
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      enabledBorder: UnderlineInputBorder(

                        borderSide: BorderSide(color: Color(0xFF0ac025)),
                      ),)),
                  )
                ]
            ),
          ),

        ],

      ),

    );
  }
}
