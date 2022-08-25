import 'package:flutter/material.dart';
import 'package:perpet1/pages/push_onoff.dart';

class InvitedList extends StatelessWidget {
  //const InvitingList({Key? key}) : super(key: key);
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
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            '초대받은 그룹',
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                icon: Icon(Icons.menu, color: Colors.black)),
          ]),
      endDrawer: Drawer(
        backgroundColor: Color(0xfffdf5f6),
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
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
              onTap: () {
                print('그룹 만들기 클릭됨');
              }),
          ListTile(
            title: Text('그룹 탈퇴하기'),
            dense: true,
            visualDensity: VisualDensity(vertical: -3),
            onTap: () {
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Push()),
                );
              }),
          ListTile(
            title: Text('환경 설정'),
            dense: true,
            visualDensity: VisualDensity(vertical: -3),
            onTap: () {
              print('환경 설정');
            },
          ),
          SizedBox(height: 180),
          ElevatedButton(
            onPressed: () {
              print(
                '로그아웃 클릭됨',
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
        ]),
      ),
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(children: <Widget>[
          SizedBox(height: 5.0),
          ListTile(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: <Widget>[
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/dog2.jpg'),
            ),
            title: Text('숭실이네집',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('강아지 세마리와 함께^^',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                )),
            trailing: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '수락',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '거절',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          ListTile(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //children: <Widget>[
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/cat.png'),
            ),
            title: Text('슝슝이네',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            subtitle: Text('고양이집사들',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                )),
            trailing: SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '수락',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      '거절',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      elevation: 0.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
