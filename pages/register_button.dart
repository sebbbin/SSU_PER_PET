import 'dart:io';
import 'package:flutter/material.dart';
//import 'package:register_pet/pages/pet_list.dart';
import 'package:perpet1/pages/upload_edit.dart';
import 'package:perpet1/pages/push_onoff.dart';

class Register extends StatelessWidget {
  //const Register({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawerEnableOpenDragGesture: false,
        key: scaffoldKey,
        backgroundColor: Color(0xffffebcd),
        appBar: AppBar(
          //automaticallyImplyLeading: false,
            backgroundColor: Color(0xffffebcd),
            elevation: 0.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
            actions: <Widget>[
              IconButton(
                  onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                  icon: Icon(Icons.menu, color:Colors.black)
              ),
            ]
        ),
        endDrawer: Drawer(
          backgroundColor: Color(0xfffdf5f6),
          child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/dog.png'),
                  ),
                  accountName: Text('슝슝님'),
                  accountEmail: Text('ssu111@naver.com'),
                ),
                SizedBox(height: 10.0),
                Text(' 그룹'),
                SizedBox(height: 5.0),
                ListTile(
                    title: Text('그룹 만들기'),
                    dense: true,
                    visualDensity: VisualDensity(vertical: -3),
                    onTap: (){
                      print('그룹 만들기 클릭됨');
                    }
                ),
                ListTile(
                  title: Text('그룹 탈퇴하기'),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  onTap: (){
                    print('그룹 탈퇴하기 클릭됨');
                  },
                ),
                //SizedBox(height: 5.0),
                Divider(
                  height: 30.0,
                  color: Colors.grey,
                  thickness: 0.5,
                  //endIndent: 30.0,
                ),
                SizedBox(height: 5.0),
                Text(' 설정'),
                SizedBox(height: 5.0),
                ListTile(
                    title: Text('알림 설정'),
                    dense: true,
                    visualDensity: VisualDensity(vertical: -3),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Push()),
                      );
                    }
                ),
                ListTile(
                  title: Text('환경 설정'),
                  dense: true,
                  visualDensity: VisualDensity(vertical: -3),
                  onTap: (){
                    print('환경 설정');
                  },
                ),
                SizedBox(height: 180),
                ElevatedButton(
                  onPressed: (){
                    print('로그아웃 클릭됨',
                    );
                  },
                  child: Text(
                    '로그아웃',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.brown,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 0.0,
                  ),
                ),
              ]
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '반려동물을 등록해보세요!',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Upload()),
                  );
                },
                child: Text(
                  '등록하기',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 0.0,
                ),
              ),
            ],
          ),
        )
    );
  }
}
