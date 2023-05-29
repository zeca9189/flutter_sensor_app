import 'package:indoor_location/domain/accelerometer.dart';
import 'package:indoor_location/domain/rssi.dart';
import 'package:mobx/mobx.dart';
import 'package:time_machine/time_machine.dart';

import '../domain/gyroscope.dart';
import '../domain/magnetometer.dart';

part 'sensor_vm.g.dart';

class SensorStore = _SensorStore with _$SensorStore;

abstract class _SensorStore with Store {
  @observable
  GyroScope _gyro = GyroScope(time: LocalDate.today(), value: 0.0);

  @action
  void setGyroValue(LocalDate time, double value) {
    _gyro.time = time;
    _gyro.value = value;
  }

  @computed
  GyroScope get gyro => _gyro;

  @observable
  Accelerometer _accel = Accelerometer(time: LocalDate.today(), value: 0.0);

  @action
  void setAccelValue(LocalDate time, double value) {
    _accel.time = time;
    _accel.value = value;
  }

  @computed
  Accelerometer get accel => _accel;

  @observable
  Magnetometer _mag = Magnetometer(time: LocalDate.today(), value: 0.0);

  @action
  void setMagValue(LocalDate time, double value) {
    _mag.time = time;
    _mag.value = value;
  }

  @computed
  Magnetometer get mag => _mag;

  @observable
  ObservableList<Rssi> _rssiList = ObservableList.of([]);

  @action
  void setRssiList({required List<Rssi> rssiList}) {
    _rssiList.clear();
    _rssiList = ObservableList.of(rssiList);
  }

  @action
  void clearRssiList() => _rssiList.clear();

  @computed
  ObservableList<Rssi> get rssiList => _rssiList;
}
