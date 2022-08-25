import 'package:flutter/material.dart';

class Push extends StatefulWidget {
  @override
  Push_onoff createState() => Push_onoff();
}

class Push_onoff extends State<Push> {
  //const Push_onoff({Key? key}) : super(key: key);
  var _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    body: Padding(
        padding: EdgeInsets.all(20.0), //전체 20패딩
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.notifications),
              Text('푸시알림 설정'),
                  Switch(
                    value: _checked,
                    onChanged: (value){
                      setState(() {
                        _checked=value;
                      });
                    },
                    activeColor: Colors.brown,
                  ),
            ],
          ),
        ),
      );
  }
}
