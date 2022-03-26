import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whats_app_clone/Screens/registration_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // _exitApp(context);
    return const LoginShow();
  }
}
class LoginShow extends StatelessWidget {
  const LoginShow({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var access,run;
    var loginBoxSize= MediaQuery.of(context).size.height/4+20;
    return WillPopScope(
      onWillPop: () async {
      showAlertDialog(context);
      return false;
      },
      child: Scaffold(
        backgroundColor: Color(0xfff6f6f6),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                     color: Color(0xFF0ac025),
                     width: MediaQuery.of(context).size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.whatsapp,color: Colors.white,size: 60,),
                          Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                        ]),
                  ),
                ) ,
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,right: 50,left: 50,),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                         //   color: Colors.yellow,
                            height: loginBoxSize,
                            child: Column(
                              children:[
                                Text("Login to Your Account",style: TextStyle(color: Color(0xff075e54),fontSize: 20,fontWeight: FontWeight.bold),),
                                Container(
                                  child:countryCard(context),
                                ),
                                Flexible(
                                  child: TextFormField(
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        labelText: "Password",
                                        suffixIcon: Icon(Icons.remove_red_eye),
                                        labelStyle: TextStyle(color: Color(0xff075e54)),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xFF0ac025)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Color(0xFF0ac025)),
                                        ),
                                      )
                                  ),

                                ),
                                SizedBox(height:20),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width, // <-- Your width
                                  height: 40, // <-- Your height
                                  child:ElevatedButton(
                                    onPressed: (){

                                    }, child: Text("Log In",style: TextStyle(fontWeight: FontWeight.bold),),
                                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Color(0xFF0ac025)),
                                        shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(10),)
                                          //      side: BorderSide(color: Colors.red)
                                        ) ),

                                  ),
                                ),
                                SizedBox(height:20),
                    ]
                            ),
                          ),
                          Text("Forgot Password?",style: TextStyle(color: Color(0xff075e54),fontSize: 18,fontWeight: FontWeight.bold),),
                          SizedBox(height:30),
                          Row(
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[
                            Expanded(flex: 1,child: Container(color: Color(0xffc4cbcb),height: 2,child: Text(''),)),
                           SizedBox(width: 10,),
                           Text("or login with",style: TextStyle(color: Color(0xff718481),fontSize: 16,fontWeight: FontWeight.bold),),
                           SizedBox(width: 10,),
                           Expanded(flex: 1, child: Container(color: Color(0xffc4cbcb),height: 2,child: Text(''),)),
                            ]
                          ),
                          SizedBox(height:30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Container(
                                  width: 70,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                     elevation: 0,
                                    fillColor:Color(0xfff6f6f6),
                                    child:SvgPicture.asset('assets/facebook.svg',
                                      height: 25,
                                    ),
                                   // padding: EdgeInsets.all(15.0),
                                    shape: CircleBorder(
                                      side: BorderSide(color:Color(0xffc4c1c1) )
                                    ),

                                  ),
                                ),
                                Container(
                                  width: 70,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 0,
                                    fillColor:Color(0xfff6f6f6),
                                    child:SvgPicture.asset('assets/instagram-64.svg',
                                      height: 25,
                                    ),
                                   // padding: EdgeInsets.all(15.0),
                                    shape: CircleBorder(
                                        side: BorderSide(color:Color(0xffc4c1c1) )
                                    ),
                                  ),
                                ),
                                Container(
                                //  color: Colors.yellow,
                                  width: 70,
                                  child: RawMaterialButton(
                                    onPressed: () {},
                                    elevation: 0,
                                    fillColor: Color(0xfff6f6f6),
                                    child:SvgPicture.asset('assets/google.svg',
                                      height: 25,
                                    ),
                                   // padding: EdgeInsets.all(15.0),
                                    shape: CircleBorder(
                                        side: BorderSide(color:Color(0xffc4c1c1) )
                                    ),
                                  ),
                                ),
                            ]
                          ),
                          SizedBox(height:30),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration:BoxDecoration(
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children:  <TextSpan>[
                                        TextSpan(text: 'Don\'t have an account? ',style: TextStyle(color: Color(0xff075e54),fontSize: 15),),
                                        TextSpan(
                                          recognizer: TapGestureRecognizer()..onTap = () {
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegistrationScreen()));},
                                          text: 'Create New',style: TextStyle(color: Color(0xff075e54),fontSize: 15,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height:30),
                              ],
                            ),
                          )
                                                 ]
                    ),
                  ),
                ) ,
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget countryCard(BuildContext context){
          return Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: Color(0xFF0ac025)
                      )
                    )
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              isDense: true,
                              labelText: "Phone",
                              labelStyle: TextStyle(color: Color(0xff075e54)),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF0ac025)),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF0ac025)),
                              ),
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              prefix:Container(width: 70, child: Row(children:[Text("+88"),Icon(Icons.arrow_drop_down)], ),),
                              // prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                            ),
                            ),)
                    ],
                  ),
              ),
          );
  }
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text("Continue"),
      onPressed:  () { Navigator.of(context).pop(); },
    );
    Widget exitButton = FlatButton(
      child: Text("Exit"),
      onPressed:  () {exit(0);},
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Exit"),
      content: Text("Would you like to exit now?"),
      actions: [
        cancelButton,
        exitButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
  
}

