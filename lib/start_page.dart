import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_red/home_page.dart';

class StartPage extends StatefulWidget {
  StartPage({Key key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/start.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('빨강,', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold)),
                Text('색채가 올바르다면,', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
                Text('그 형식이 맞다.', style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Text('모든 인간의 혈관속에는 빨강이 있다.\n피부색이 다르더라도...', style: TextStyle(color: Colors.grey, fontSize: 16)),
                SizedBox(height: 100),
                Container(
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Color(0xFFCA3553),
                      Color(0xFF821D35),
                    ]),
                  ),
                  child: MaterialButton(
                    onPressed: () => {Get.to(HomePage())},
                    child: Text('시작하기', style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
