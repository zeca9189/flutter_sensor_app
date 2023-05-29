import 'package:flutter/material.dart';

import 'view/rssi_list_tab.dart';
import 'view/sensor_value_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          title: const Text("센서값 불러오기"),
          backgroundColor: Colors.lightBlue[900],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: ("센서 값"),
              ),
              Tab(
                text: ("Rssi 목록"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SenSorValueTab(),
            RssiListTab(),
          ],
        ),
      ),
    );
  }
}
