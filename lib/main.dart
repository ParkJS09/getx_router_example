import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/details', page: () => DetailPage()),
      ]
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Example'),
      ),
      body: Column(
        children: [
          //명칭으로 새로운 화면으로 이동
          RaisedButton(
            child: Text('Get.toNamed'),
            onPressed: (){
              Get.toNamed('/details');
            },
          )
        ],
      ),
    );
  }
}



class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX DetailPage'),
      ),
      body: Column(
        children: [
          RaisedButton(
            //다음 화면으로 이동하고 이전 화면으로 돌아갈 필요가 없는 경우 (스플래시, 로그인화면 등..)
            child: Text('Go like Splash'),
            onPressed: (){
              Get.off(LoginPage());
            },
          ),
          RaisedButton(
            child: Text('Get.back'),
            onPressed: (){
              Get.back();
            },
          )
        ],
      ),
    );
  }
}



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Like LoginPage'),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: (){
              Get.back();
            },
            child: Text('GetBack'),
          )
        ],
      ),
    );
  }
}
