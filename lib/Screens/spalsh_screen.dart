import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'messaging_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print('initstate');
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MessagingPage()),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.phone,color: Colors.white,size: 60,),
                    Text("WhatsApp",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.bold),),
                  ]),
            ) ,
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("from facebook",style: TextStyle(color: Colors.white,fontSize: 20),),
                SizedBox(height: 10,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
