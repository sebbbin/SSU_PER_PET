import 'package:flutter/material.dart';
import 'package:perpet1/pages/push_onoff.dart';

class PetList extends StatelessWidget{
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context){
    debugShowCheckedModeBanner: false;
    return MaterialApp(
      home: Scaffold(
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
                    title: Text('비밀번호 변경'),
                    dense: true,
                    visualDensity: VisualDensity(vertical: -3),
                    onTap: (){
                      print('비밀번호 변경 클릭됨');
                    },
                  ),
                  SizedBox(height: 150),
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 0.0,
                    ),
                  ),
                ]
            ),
          ),
          backgroundColor: Color(0xffffebcd),
          body: GridView.count(crossAxisCount: 2,
            children: <Widget>[
              Container(
                color: Colors.white,
                margin: const EdgeInsets.all(60),
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('반려견 1', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('이름 : '),
                    Text('나이 : '),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.all(60),
                padding: const EdgeInsets.all(10) ,
                width: 100,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('반려견 2', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('이름 : '),
                    Text('나이 : '),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.all(60),
                padding: const EdgeInsets.all(10) ,
                width: 100,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('반려견 3', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('이름 : '),
                    Text('나이 : '),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.all(60),
                padding: const EdgeInsets.all(10) ,
                width: 100,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('반려견 4', style: TextStyle(fontWeight: FontWeight.bold),),
                    Text('이름 : '),
                    Text('나이 : '),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}