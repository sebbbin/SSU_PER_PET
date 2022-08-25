import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:perpet1/pages/push_onoff.dart';
import 'package:perpet1/pages/list_pet.dart';

class Upload extends StatefulWidget {
  //const _Upload({Key? key}) : super(key: key);

  @override
  _Upload createState() => _Upload();
}

class _Upload extends State<Upload> {
  File? _image;
  final picker = ImagePicker(); //사진 관련
  /*File Photo_file;
  void Photo(ImageSource source) async {
    File file = (await ImagePicker.pickImage(source: source)) as File;
    setState(() => Photo_file = file;
  }*/

  takePhoto(ImageSource source) async {
    final image = await picker.pickImage(source: source);
    setState(() {
      _image = File(image!.path);
    });
  } //사진 관련

  final _valueList = ['남', '여'];
  var _selectedValue = '남'; //성별 관련

  final format = DateFormat("yyyy-MM-dd"); //생일 관련

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
      body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: <Widget>[
              image(),
              SizedBox(height: 20),
              name(),
              SizedBox(height: 20),
              birth(),
              SizedBox(height: 20),
              sex(),
              SizedBox(height: 20),
              kind(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PetList())
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
          )
      ),
    );
  }

  Widget image(){
    return Center(
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/camera'),
            backgroundColor: Colors.white,
          ),
          Positioned(
              bottom: 20,
              right: 20,
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return Container(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          child: Column(
                            children: <Widget>[
                              Text(
                                '사진을 선택하세요',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.brown,
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  OutlinedButton.icon(
                                    onPressed: (){
                                      takePhoto(ImageSource.camera);
                                    },
                                    icon: Icon(Icons.camera_alt, size:50, color: Colors.black,),
                                    label: Text('카메라로 촬영'),
                                    style: TextButton.styleFrom(primary: Colors.black),
                                  ),
                                  OutlinedButton.icon(
                                    onPressed: (){
                                      takePhoto(ImageSource.gallery);
                                    },
                                    icon: Icon(Icons.photo_camera_back, size:50, color: Colors.black,),
                                    label: Text('앨범에서 가져오기'),
                                    style: TextButton.styleFrom(primary: Colors.black),
                                  ),
                                ],
                              ),
                              /*
                            Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset('assets/dog.png'),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.asset('assets/cat.png'),
                                      )
                                    ]
                                )
                                */
                            ],
                          ),
                        );
                      }
                  );
                },
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size:40,
                ),
              ))
        ],
      ),
    );
  }

  Widget name(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        labelText: '이름',
        hintText: '반려동물의 이름을 입력하세요.',
      ),
    );
  }

  Widget birth(){
    return Column(
        children: <Widget>[
          //Text('Basic date field (${format.pattern})'),
          DateTimeField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              labelText: '생일',
              hintText: '반려동물의 생일을 입력하세요.',
            ),
            format: format,
            onShowPicker: (context, currentValue) {
              return showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: currentValue ?? DateTime.now(),
                  lastDate: DateTime(2100));
            },
          ),
        ]
    );
  }

  Widget sex() {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        labelText: '성별',
        hintText: '반려동물의 성별을 선택하세요.',
      ),
      value: _selectedValue,
      items: _valueList.map(
            (value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        },
      ).toList(),
      onChanged: (String? value) {
        setState(() {
          _selectedValue = value!;
        });
      },
    );
  }

  Widget kind(){
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        labelText: '품종',
        hintText: '반려동물의 품종을 입력하세요.',
      ),
    );
  }
}