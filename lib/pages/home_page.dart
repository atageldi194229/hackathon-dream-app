import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(235, 240, 250, 1),
                Color.fromRGBO(255, 255, 255, 1),
              ],
              stops: ([0.2, 0.8]),
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: SvgPicture.asset(
                              "../asset/svg/LogoBilelikde.svg"),
                        ),
                        InkWell(
                          child: Container(
                            height: 39,
                            width: 152,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              border: Border.all(
                                  color: Color.fromRGBO(56, 107, 246, 1),
                                  width: 1),
                            ),
                            child: Center(
                              child: Text(
                                "Новые вакансии",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Color.fromRGBO(56, 107, 246, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      height: 42,
                      width: MediaQuery.of(context).size.width - 40,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 249, 247, 1),
                        borderRadius: BorderRadius.circular(7.0),
                        border: Border.all(
                            color: Color.fromRGBO(233, 233, 233, 1), width: 1),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Поиск услуг и многое другое",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color.fromRGBO(186, 186, 186, 1),
                            ),
                          ),
                          InkWell(
                            child: Container(
                              height: 39,
                              width: 152,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    color: Color.fromRGBO(56, 107, 246, 1),
                                    width: 1),
                              ),
                              child: Center(
                                child: Text(
                                  "Найти",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color.fromRGBO(56, 107, 246, 1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 33, left: 11),
                    child: Text(
                      "Женский союз «Bilelikde»",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Color.fromRGBO(26, 52, 170, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ClipRRect(
                      child: CachedNetworkImage(
                          imageUrl:
                              "https://img.freepik.com/free-vector/group-of-multiracial-students-diverse-people_107791-12502.jpg?size=626&ext=jpg&uid=R69422584&ga=GA1.2.169085178.1650572093",
                          height: 156,
                          width: MediaQuery.of(context).size.width - 40,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Image.asset('asset/images/broken-image.png'),
                          fit: BoxFit.none),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      'Новые вакансии',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
