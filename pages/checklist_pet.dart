import 'package:flutter/material.dart';
import 'package:perpet1/pages/push_onoff.dart';

/*
//void main() => runApp(MyApp());

/*class _Checklist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //오른쪽 상단 DEBUG 배너 비활성화
      title: "MyPAGE",
      home: Checklist(),
    );
  }
}*/
class Checklist extends StatefulWidget {
  @override
  _Checklist createState() => _Checklist();
}

class _Checklist extends State<Checklist> {
  Map<String, bool> numbers = {
    '아침': false,
    '물': false,
    '산책': false,
    '간식': false,
    '점심': false,
    '저녁': false,
  };

  var holder_1 = [];

  getItems() {
    numbers.forEach((key, value) {
      if (value == true) {
        holder_1.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 154, 121, 84),
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        title: Text(
          "반려동물 체크리스트",
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
          backgroundColor: Color(0xffffebcd),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Register()),
            );
          },
          icon: Icon(Icons.skip_next, color:Colors.black)
          ),
        ]),
      body: Padding(
        padding: EdgeInsets.all(20.0), //전체 20패딩
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //왼쪽으로 정렬됌
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/catmove.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 40.0, //상하 20픽셀씩
              color: Colors.grey[900],
              thickness: 0.5, //선두께
              // endIndent: 20.0, //끝에서 얼마큼 떨어져있을지
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Checkbox(),
            /*Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "아침",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "점심",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "간식",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "산책",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "저녁",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "샤워",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/cat.png'),
                    radius: 25.0,
                    backgroundColor: Color.fromARGB(255, 154, 121, 84),
                  ),
                ),
              ],
            ),*/
          ],
        ),
      ),
    );
  }
  Widget Checkbox(){
    return Column(children: <Widget>[
      ElevatedButton(
        child: Text(
          " 한 일 체크 ",
          style: TextStyle(fontSize: 20),
        ),
        onPressed: getItems,
        /*color: Color.fromARGB(255, 186, 113, 87),
        textColor: Colors.white,
        splashColor: Colors.grey,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),*/
      ),
      Expanded(
        child: ListView(
          children: numbers.keys.map((String key) {
            // ignore: unnecessary_new
            return new CheckboxListTile(
              title: new Text(key),
              value: numbers[key],
              activeColor: Colors.red,
              checkColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  numbers[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
    ]);
  }
}*/

class Checklist extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffebcd),
      appBar: AppBar(
        //automaticallyImplyLeading: false,
          title: Text(
            "반려동물 체크리스트",
            style: TextStyle(
              color: Colors.grey[900],
            ),
          ),
          backgroundColor: Color(0xffffebcd),
          elevation: 0.0,
          centerTitle: true,
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
      body: Padding(
        padding: EdgeInsets.all(20.0), //전체 20패딩
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //왼쪽으로 정렬됌
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/catmove.gif'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 40.0, //상하 20픽셀씩
              color: Colors.grey[900],
              thickness: 0.5, //선두께
              // endIndent: 20.0, //끝에서 얼마큼 떨어져있을지
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "아침",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "점심",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "간식",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "산책",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "저녁",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_rounded),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "샤워",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 55,
            ),
            Column(
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/cat.png'),
                    radius: 25.0,
                    backgroundColor: Color.fromARGB(255, 154, 121, 84),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}