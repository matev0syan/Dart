import 'dart:developer';
import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 1, 53, 74),
                    Color.fromARGB(255, 1, 89, 111),
                    Color.fromARGB(255, 1, 138, 148),
                  ],
                  tileMode: TileMode.clamp,
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              width: double.infinity,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: double.infinity,
                        height: 50,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('  Бизнес-центр Гулливер')),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Баланс',
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 220,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(120, 1, 138, 148),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'февраль 2022 - июнь 2022',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Доход за февраль 2022',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                          text: TextSpan(
                              text: '0 ',
                              style:
                                  TextStyle(fontSize: 45, color: Colors.white),
                              children: [
                                TextSpan(
                                  text: '₽',
                                  style: TextStyle(
                                      fontSize: 45,
                                      color:
                                          Color.fromARGB(118, 255, 255, 255)),
                                )
                              ]),
                        )),
                    Row(
                      children: [
                        Text(
                          '0 ₽     ',
                          style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(129, 255, 255, 255)),
                        ),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(95, 1, 138, 148),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'ДОЛГОВ НЕТ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(103, 3, 94, 110),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: double.infinity,
                        height: 45,
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '   Подрдбная аналитика',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 30, 0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Поступления',
                      style: TextStyle(fontSize: 30),
                    ),
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(54, 107, 102, 102),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.poll,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.menu,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Бизнес-центр Гулливер',
                    style: TextStyle(color: Color.fromARGB(118, 0, 0, 0)),
                  )),
            ),
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromARGB(54, 107, 102, 102),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Все'),
                    ),
                  ),
                  Text('Доход'),
                  Text('Долг'),
                  Text('Ожидаемые'),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromARGB(12, 0, 0, 0),
              ),
              width: 400,
              height: 80,
              child: Center(child: Text('Нет поступлений')),
            )
          ],
        ),
        bottomNavigationBar: Container(
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                offset: Offset(0, 5),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.black,
            selectedFontSize: 12,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.poll,
                  color: Color.fromARGB(87, 0, 0, 0),
                ),
                label: 'Аналитика',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.people_alt,
                  color: Color.fromARGB(74, 0, 0, 0),
                ),
                label: 'Арендатори',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Color.fromARGB(121, 0, 0, 0),
                ),
                label: 'Настройки',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
