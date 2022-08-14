import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// class UslugiPage extends StatelessWidget {
//   const UslugiPage( Key key ) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }

class UslugiPage extends StatelessWidget {
  const UslugiPage(Key key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Предлагаемые Услуги'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.menu_book_sharp),
              ),
              Tab(
                icon: Icon(Icons.work),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text("Курсы"),
            ),
            Center(
              child: Text("Вакансии"),
            ),
          ],
        ),
      ),
    );
  }
}
// class UslugiPage extends StatefulWidget {
//   const UslugiPage(Key key) : super(key: key);

//   @override
//   State<UslugiPage> createState() => _UslugiPageState();
// }

// class _UslugiPageState extends State<UslugiPage>{
//   late TabController _tabController;
//   @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(vsync: this, length: 3,);
    
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         elevation: 0,
//         title: Text(
//           "Избранное",
//           style: TextStyle(color: Colors.black),
//         ),
//         backgroundColor: Color.fromRGBO(255, 221, 97, 1),
//       ),
//       body: DefaultTabController(
//         length: 3,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Container(
//               height: MediaQuery.of(context).size.height,
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 30,
//                   ),
//                   Container(
//                     // height: 50,
//                     width: MediaQuery.of(context).size.height,
//                     decoration: BoxDecoration(
//                       color: Colors.grey[200],
//                       // color: Color.fromRGBO(
//                       //   246,
//                       //   248,
//                       //   252,
//                       //   1,
//                       // ),
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     child: Column(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(3),
//                           child: TabBar(
//                               labelColor: Colors.black,
//                               unselectedLabelColor: Colors.grey,
//                               // indicatorColor: Colors.white,
//                               indicatorWeight: 2,
//                               indicator: BoxDecoration(
//                                 color: Color.fromRGBO(255, 221, 97, 1),
//                                 borderRadius: BorderRadius.circular(5),
//                               ),
//                               tabs: [
//                                 Tab(
//                                   text: "Объявления",
//                                 ),
//                                 Tab(
//                                   text: "ЖК",
//                                 ),
//                                 Tab(
//                                   text: "Поиски",
//                                 ),
//                               ]),
//                         )
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: TabBarView(
//                       physics: NeverScrollableScrollPhysics(),
//                       controller: _tabController,
//                       children: [
//                         ListView.builder(
//                           itemBuilder: ((context, index) {
//                             return GestureDetector(
//                               child: Padding(
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 10),
//                                 child: Container(
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                   width: double.infinity,
//                                   height: 120,
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                           top: 10,
//                                           bottom: 10,
//                                         ),
//                                         child: Container(
//                                           child: Image.asset(
//                                             "../asset/home.jpg",
//                                             height: 100,
//                                             width: 125,
//                                           ),
//                                         ),
//                                       ),
//                                       Padding(
//                                         padding: const EdgeInsets.only(
//                                           left: 10,
//                                           top: 10,
//                                         ),
//                                         child: Column(
//                                           mainAxisAlignment:
//                                               MainAxisAlignment.start,
//                                           crossAxisAlignment:
//                                               CrossAxisAlignment.start,
//                                           children: [
//                                             Text(
//                                               "1-комнатная квартира, 35 м², 1/2.\nРеспублики",
//                                               style: TextStyle(
//                                                 fontSize: 13,
//                                                 fontWeight: FontWeight.w400,
//                                                 color: Color.fromRGBO(
//                                                     22, 22, 22, 1),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   top: 1, bottom: 3),
//                                               child: Text(
//                                                 "Kирпичный дом, 2020 г.п., Апарт..",
//                                                 style: TextStyle(
//                                                   fontSize: 12,
//                                                   fontWeight: FontWeight.w400,
//                                                   color: Color.fromRGBO(
//                                                       163, 171, 179, 1),
//                                                 ),
//                                               ),
//                                             ),
//                                             Padding(
//                                               padding: const EdgeInsets.only(
//                                                   bottom: 3),
//                                               child: Container(
//                                                 width: 91,
//                                                 height: 20,
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   // crossAxisAlignment:
//                                                   //     CrossAxisAlignment.start,
//                                                   children: [
//                                                     Image(
//                                                       image: AssetImage(
//                                                         "../asset/adam.png",
//                                                       ),
//                                                       width: 16,
//                                                       height: 16,
//                                                     ),
//                                                     Expanded(
//                                                         child: Text(
//                                                       "Специалист",
//                                                       style: TextStyle(
//                                                           fontSize: 12,
//                                                           fontWeight:
//                                                               FontWeight.w400),
//                                                     )),
//                                                   ],
//                                                 ),
//                                                 decoration: BoxDecoration(
//                                                     color: Color.fromRGBO(
//                                                         255, 221, 97, 1),
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             4)),
//                                               ),
//                                             ),
//                                             Container(
//                                               width: 214,
//                                               height: 25,
//                                               color: Color.fromRGBO(
//                                                   246, 248, 252, 1),
//                                               child: Text(
//                                                 "2 500 000 TMT",
//                                                 style: TextStyle(
//                                                     color: Color.fromRGBO(
//                                                         48, 173, 110, 1),
//                                                     fontSize: 14,
//                                                     fontWeight:
//                                                         FontWeight.w600),
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               onTap: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: ((context) => HomePage())));
//                               },
//                             );
//                           }),
//                           itemCount: 30,
//                         ),
//                         Text("data"),
//                         Text("data"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   PageController pageController = PageController(initialPage: 0);
//   bool a = true;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(246, 248, 252, 100),
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         // backgroundColor: Color.fromRGBO(255, 221, 97, 40),
//         backgroundColor: Color.fromRGBO(255, 221, 97, 1),
//         elevation: 0,
//         title: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               GestureDetector(
//                 child: Icon(
//                   Icons.arrow_back_ios_new_sharp,
//                   color: Colors.black,
//                 ),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: ((context) => HomePageApp())));
//                 },
//               ),
//               Text(
//                 "Объявление",
//                 style: TextStyle(color: Colors.black),
//               ),
//               InkWell(
//                   onTap: () {
//                     setState(() {
//                       a == true ? a = false : a = true;
//                     });
//                   },
//                   child: a == true
//                       ? Icon(Icons.star_border, color: Colors.black)
//                       : Icon(Icons.star, color: Colors.black))
//             ]),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Container(
//           color: Colors.white,
//           width: 360,
//           height: 60,
//           child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   width: 154,
//                   height: 40,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(4),
//                       color: Color.fromRGBO(255, 221, 97, 1)),
//                   child: RaisedButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Написать",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       color: Colors.blue),
//                 ),
//                 Container(
//                   width: 154,
//                   height: 40,
//                   decoration:
//                       BoxDecoration(borderRadius: BorderRadius.circular(4)),
//                   child: RaisedButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Позвонить",
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w500),
//                       ),
//                       color: Colors.green[600]),
//                 ),
//               ]),
//         ),
//       ),
//       body: ListView(
//         children: [
//           method(),
//           Container(
//             width: 365,
//             height: 45,
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10, left: 16),
//                   child: SvgPicture.asset('asset/Money.svg'),
//                 ),
//                 Text(
//                   "3 500 000 TMT",
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                       color: Colors.black),
//                 ),
//               ],
//             ),
//           ),
//           Image(
//             fit: BoxFit.fitWidth,
//             image: AssetImage("asset/karta.png"),
//             width: 360,
//             height: 140,
//           ),
//           Container(
//             width: 365,
//             height: 45,
//             child: Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(right: 10, left: 16),
//                   child: SvgPicture.asset('asset/Pin.svg'),
//                 ),
//                 Expanded(
//                   child: Container(
//                     color: Colors.white,
//                     child: Text(
//                       "Улица 10 Йыл абаданчылык Парахат 2/2 Дом 18\nКвартира 18",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               vertical: 5,
//             ),
//             child: Card(
//               elevation: null,
//               color: Color.fromRGBO(255, 255, 255, 100),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 12,
//                   child: Image(
//                     image: AssetImage("asset/card.png"),
//                   ),
//                 ),
//                 title: Text("ЖК “ Степной”"),
//                 subtitle: Text("Альянсстройинвест"),
//                 trailing: Text("Перейти в ЖК"),
//               ),
//             ),
//           ),
//           kontainer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Container(
//               color: Colors.white,
//               width: 360,
//               height: 215,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
//                 child: Column(children: [
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 10),
//                     child: Text(
//                       "Описание",
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(
//                       "Пластиковые окна, веранда.\nОдна часть двухквартирного дома, двухэтажный с \nмансардой, дом очень теплый, рядом находится новая \nшкола и детский сад. дорога асфальтирована. вода \nпроведена. печька - длительного горения. теплый пол. \nдом продается частично с мебелью. (прихожка, кухня со \nвстроенной плиткой и духовкой Электролюкс, спальня, \nдетская комната, люстры) документы в порядке. торг. \nуместен",
//                       style: TextStyle(
//                           fontSize: 13,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black),
//                     ),
//                   )
//                 ]),
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.white,
//             width: 380,
//             height: 250,
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10),
//                   child: Text(
//                     "Цены в похожих объявлениях",
//                     style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                     vertical: 12,
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         width: 119,
//                         height: 94,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 1,
//                             color: Color.fromRGBO(227, 231, 238, 100),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           // mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "541,474 TMT",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black),
//                             ),
//                             Expanded(
//                                 child: Text(
//                               "Цена м2в этом объявлении",
//                               textAlign: TextAlign.center,
//                             ))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: 119,
//                         height: 94,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 1,
//                             color: Color.fromRGBO(227, 231, 238, 100),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           // mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "541,474 TMT",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black),
//                             ),
//                             Expanded(
//                                 child: Text(
//                               "Цена м2в этом объявлении",
//                               textAlign: TextAlign.center,
//                             ))
//                           ],
//                         ),
//                       ),
//                       Container(
//                         width: 119,
//                         height: 94,
//                         decoration: BoxDecoration(
//                           border: Border.all(
//                             width: 1,
//                             color: Color.fromRGBO(227, 231, 238, 100),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           // mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               "541,474 TMT",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.black),
//                             ),
//                             Expanded(
//                                 child: Text(
//                               "Цена м2в этом объявлении",
//                               textAlign: TextAlign.center,
//                             ))
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                   ),
//                   child: Text(
//                     "На 17.9% дороже, чем в других похожих предложениях в этом районе.",
//                     style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black),
//                   ),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 16,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 10),
//                     child: Text(
//                       "Ознакомительный анализ может не сопвадать с дейтвыющими рычночными ценами.",
//                       style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.grey),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             color: Colors.white,
//             width: 360,
//             height: 130,
//             child: Column(
//               children: [
//                 Card(
//                   elevation: 0,
//                   color: Color.fromRGBO(255, 255, 255, 100),
//                   child: ListTile(
//                     title: Text("Любимый Город"),
//                     subtitle: Text("Автор объявнления”"),
//                     trailing: CircleAvatar(
//                       radius: 12,
//                       child: Image(
//                         image: AssetImage("asset/card.png"),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Row(children: [
//                     Padding(
//                       padding: EdgeInsets.only(right: 3),
//                       child: Image(
//                         image: AssetImage("../asset/adam.png"),
//                       ),
//                     ),
//                     Expanded(
//                         child: Text(
//                       "Руководитель компании подтвердил личьность документами",
//                       style: TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ))
//                   ]),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Container(
//               color: Colors.white,
//               width: 360,
//               height: 110,
//               child: Column(
//                 children: [
//                   Card(
//                     elevation: 0,
//                     child: ListTile(
//                       leading: CircleAvatar(
//                         backgroundColor: Color.fromRGBO(255, 221, 97, 1),
//                         child: Image(image: AssetImage("../asset/Add.png")),
//                       ),
//                       title: Text(
//                         "Скачать договор аренды",
//                         style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black),
//                       ),
//                       trailing: Container(
//                           width: 20,
//                           height: 20,
//                           child: Icon(
//                             Icons.arrow_forward_ios,
//                             color: Colors.black,
//                           )),
//                     ),
//                   ),
//                   Padding(
//                     padding:
//                         const EdgeInsets.only(left: 56, top: 10, bottom: 15),
//                     child: Text(
//                       "Универсальный документ от Крисча.тм \nзщищающий права всех участиков сделки",
//                       style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             width: 360,
//             height: 116,
//             color: Colors.white,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Text("ID 64326825",
//                       textAlign: TextAlign.start,
//                       style: TextStyle(color: Colors.grey)),
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//                   child: Row(
//                     children: [
//                       SvgPicture.asset("../asset/Calendar.svg"),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10),
//                         child: Text("17 Октября 2021"),
//                       ),
//                       Divider(
//                         color: Color.fromRGBO(227, 231, 238, 100),
//                         height: 10,
//                         indent: 20,
//                         endIndent: 20,
//                         thickness: 2,
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 16,
//                   ),
//                   child: Row(children: [
//                     SvgPicture.asset("../asset/eye.svg"),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10),
//                       child: Text("5 Просмотров"),
//                     ),
//                   ]),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//             color: Colors.white,
//             width: 360,
//             height: 200,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 10),
//                     child: Text(
//                       "Ускорить продажу",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Text(
//                     "Продлить на неделю за 120 ТМТ",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//                   ),
//                   DiV(),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Отправить в ТОП за 390 ТМТ",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.w500),
//                       ),
//                       Text("24 часа выше бесплатных объявлений"),
//                       DiV(),
//                     ],
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Отправить в Горячие за 300 ТМТ",
//                         style: TextStyle(
//                             fontSize: 14, fontWeight: FontWeight.w500),
//                       ),
//                       Text("24 часа в горячих предложениях"),
//                       DiV(),
//                     ],
//                   ),
//                   Text(
//                     "Отправить в Горячие за 300 ТМТ",
//                     style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
//                   ),
//                   DiV(),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Container(
//               width: 328,
//               height: 251,
//               color: Colors.white,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Container(
//                   width: 360,
//                   height: 281,
//                   child: Image(
//                     fit: BoxFit.fitWidth,
//                     image: AssetImage(
//                       "../asset/picturess.png",
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             color: Colors.white,
//             height: 48,
//             width: 360,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 16),
//                   child: Text("Посмотреть объявление на сайте"),
//                 ),
//                 TextButton(
//                     onPressed: () {}, child: Icon(Icons.arrow_forward_ios)),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Container(
//               color: Colors.white,
//               height: 48,
//               width: 360,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16),
//                     child: Text(
//                       "Пожаловаться на объвление",
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                   TextButton(
//                       onPressed: () {}, child: Icon(Icons.arrow_forward_ios)),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   method() {
//     return Container(
//       width: double.infinity,
//       height: 240,
//       child: PageView(
//         pageSnapping: true,
//         controller: pageController,
//         children: [
//           Container(
//               width: MediaQuery.of(context).size.width,
//               height: 250,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fitWidth,
//                   image: AssetImage("../asset/home.jpg"),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.only(left: 16, bottom: 16),
//                 child: Container(
//                   alignment: Alignment.bottomRight,
//                   height: 22,
//                   width: 29,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 16, bottom: 16),
//                     child: Container(
//                       width: 29,
//                       height: 22,
//                       child: Text(
//                         "1/22",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Color.fromRGBO(22, 22, 22, 52),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//           Container(
//               width: MediaQuery.of(context).size.width,
//               height: 250,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fitWidth,
//                   image: AssetImage("../asset/home.jpg"),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.only(left: 16, bottom: 16),
//                 child: Container(
//                   alignment: Alignment.bottomRight,
//                   height: 22,
//                   width: 29,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 16, bottom: 16),
//                     child: Container(
//                       width: 29,
//                       height: 22,
//                       child: Text(
//                         "1/22",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Color.fromRGBO(22, 22, 22, 52),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//           Container(
//               width: MediaQuery.of(context).size.width,
//               height: 250,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   fit: BoxFit.fitWidth,
//                   image: AssetImage("../asset/home.jpg"),
//                 ),
//               ),
//               child: Padding(
//                 padding: EdgeInsets.only(left: 16, bottom: 16),
//                 child: Container(
//                   alignment: Alignment.bottomRight,
//                   height: 22,
//                   width: 29,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 16, bottom: 16),
//                     child: Container(
//                       width: 29,
//                       height: 22,
//                       child: Text(
//                         "1/22",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Color.fromRGBO(22, 22, 22, 52),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//         ],
//       ),
//     );
//   }

//   Widget kontainer() {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 5),
//       child: Container(
//         color: Colors.white,
//         width: 360,
//         height: 550,
//         child: ListView(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(bottom: 10, top: 15),
//               child: Text(
//                 "Основные параметры",
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w500,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Количество комнат",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color.fromRGBO(163, 171, 179, 45),
//                       ),
//                     ),
//                     Text(
//                       "2",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ]),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Период Аренды",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color.fromRGBO(163, 171, 179, 45),
//                       ),
//                     ),
//                     Text(
//                       "На длителтельный срок",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ]),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Номер дома",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color.fromRGBO(163, 171, 179, 45),
//                       ),
//                     ),
//                     Text(
//                       "13/1",
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ]),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Тип сторения",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Text(
//                     "кирпичный",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Период Аренды",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Text(
//                     "На длителтельный срок",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Год постройки ( сдачи в эксплутацию)",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Text(
//                     "2010",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Этаж",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Text(
//                     "2",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Количество этажей",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Text(
//                     "12",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Разное",
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontWeight: FontWeight.w400,
//                       color: Color.fromRGBO(163, 171, 179, 45),
//                     ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(
//                         "неугловая, комнаты изолированны,",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black,
//                         ),
//                       ),
//                       Text(
//                         "с счетчики тихик двор",
//                         style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               color: Color.fromRGBO(227, 231, 238, 100),
//               height: 10,
//               indent: 20,
//               endIndent: 20,
//               thickness: 2,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget DiV() {
//     return Divider(
//       color: Color.fromRGBO(227, 231, 238, 100),
//       height: 10,
//       indent: 10,
//       endIndent: 5,
//       thickness: 2,
//     );
//   }
// }
