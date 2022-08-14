import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hackathon/widgets/widget.dart';
import '../pages/home_page.dart';
import '../pages/widget.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage(Key key) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool swich = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Color.fromRGBO(56, 107, 246, 1),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => BilelikdeApp())));
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Text(
                      "Профиль",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              ],
          ),
          ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Container(
              width: double.infinity,
              height: 90,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child:ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        child: Icon(Icons.person,size: 20,),
                      ),
                      title: Text(
                        "Добавить имя",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Добавить фото",
                          style:
                              TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 270,
            color: Color.fromRGBO(255, 255, 255, 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Настройки",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 13),
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(60, 164, 231, 1),
                              size: 23,
                            ),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Color.fromRGBO(227, 231, 238, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Сменить пароль",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 13),
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(60, 164, 231, 1),
                              size: 23,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Color.fromRGBO(227, 231, 238, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Подтверждение номера",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, bottom: 13),
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(60, 164, 231, 1),
                              size: 23,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Color.fromRGBO(227, 231, 238, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("История платежей",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(60, 164, 231, 1),
                              size: 23,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    width: double.infinity,
                    height: 0.5,
                    color: Color.fromRGBO(227, 231, 238, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("О Нас",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                        ),
                        child: Container(
                            width: 16,
                            height: 16,
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color.fromRGBO(60, 164, 231, 1),
                              size: 23,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 5, top: 15),
            child: Text(
              "Рассылка и увадомления",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(163, 171, 179, 1)),
            ),
          ),
          Container(
            width: double.infinity,
            height: 63,
            color: Color.fromRGBO(255, 255, 255, 1),
            child: SwitchListTile(
                title: Text(
                  "Операции с объявлениями",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Уведомления включены",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
                value: swich,
                onChanged: (change) {
                  setState(() {
                    swich = change;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Container(
              width: double.infinity,
              height: 47,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        "Операции с объявлениями",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(children: [
                        Text(
                          "Русский",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(163, 171, 179, 1)),
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded,
                            color: Color.fromRGBO(163, 171, 179, 1)),
                      ]),
                    )
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Container(
              width: double.infinity,
              height: 47,
              color: Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromRGBO(163, 171, 179, 1),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, right: 250),
                      child: Text(
                        "О приложении",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(22, 22, 22, 1)),
                      ),
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
