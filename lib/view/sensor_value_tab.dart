import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../vm/sensor_vm.dart';

class SenSorValueTab extends StatefulWidget {

  const SenSorValueTab({Key? key}):super(key: key);
  @override
  State<StatefulWidget> createState() => SenSorValueTabState();

}

class SenSorValueTabState extends State<SenSorValueTab>{

  final SensorStore vm = SensorStore();

  @override
  Widget build(BuildContext context) {
    return  Observer(
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                const Text(
                  '자이로 스코프 값',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '현재시간: ${vm.gyro.time} ,센서값: ${vm.gyro.value} ',
                  softWrap: true,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  '가속도센서 스코프 값',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '현재시간: ${vm.accel.time} ,센서값: ${vm.accel.value} ',
                  softWrap: true,
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  '전자기센서 값',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '현재시간: ${vm.mag.time} ,센서값: ${vm.mag.value} ',
                  softWrap: true,
                ),
              ],
            ),
          ],
        );
      }
    );
  }

}