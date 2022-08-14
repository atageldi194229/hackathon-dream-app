import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../pages/home_page.dart';
import '../pages/kommentarii_page.dart';
import '../pages/otmecennyye.dart';
import '../pages/profil_page.dart';
import '../pages/uslugi_page.dart';

class BilelikdeApp extends StatefulWidget {
  const BilelikdeApp(Key key) : super(key: key);

  @override
  State<BilelikdeApp> createState() => _BilelikdeAppState();
}

class _BilelikdeAppState extends State<BilelikdeApp> {
  int change = 0;
  List pages = [];
  TabController? tabController;
  var firstkey = PageStorageKey("first_key");
  var second = PageStorageKey("second_key");
  var third = PageStorageKey("third_key");
  var fourth = PageStorageKey("fourth_key");
  var fifth = PageStorageKey("fifth_key");
  void initState() {
    BilelikdeApp bir = BilelikdeApp(firstkey);
    UslugiPage iki = UslugiPage(second);
    OtmecennyyePage uc = OtmecennyyePage(third);
    KommentariiPage dort = KommentariiPage(fourth);
    ProfilPage bas = ProfilPage(fifth);
    pages = [bir, iki, uc, dort, bas];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: pages[change],
      bottomNavigationBar: Theme(
        data: ThemeData(canvasColor: Color.fromRGBO(235, 240, 250, 1)),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("../asset/svg/home.svg"),
              activeIcon: SvgPicture.asset(
                "../asset/svg/homeakt.svg",
                color: Color.fromRGBO(56, 107, 246, 1),
              ),
              label: "Главная",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("../asset/svg/uslugibez.svg"),
              activeIcon: SvgPicture.asset(
                "../asset/svg/uslugivyb.svg",
                color: Color.fromRGBO(56, 107, 246, 1),
              ),
              label: "Услуги",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(22, 22, 22, 100)),
                child: Center(
                  child: SvgPicture.asset("../asset/svg/otmecbez.svg"),
                ),
              ),
              activeIcon: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color.fromRGBO(56, 107, 246, 1)),
                child: Center(
                  child: SvgPicture.asset("../asset/svg/otmecvyb.svg"),
                ),
              ),
              label: "Отмеченные",
            ),
            BottomNavigationBarItem(
              icon: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset("../asset/svg/kommentariibez.svg")),
              activeIcon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  "../asset/svg/kommentariivyb.svg",
                  color: Colors.blue,
                ),
              ),
              label: "Комментарии",
            ),
            BottomNavigationBarItem(
              icon: Container(
                  width: 20,
                  height: 20,
                  child: SvgPicture.asset("asset/profile-circle.svg")),
              activeIcon: Container(
                width: 20,
                height: 20,
                child: SvgPicture.asset(
                  "asset/profile-circle.svg",
                  color: Color.fromRGBO(56, 107, 246, 1),
                ),
              ),
              label: "Кабинет",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: change,
          onTap: (sana) {
            setState(() {
              change = sana;
            });
          },
        ),
      ),
    );
  }
}


