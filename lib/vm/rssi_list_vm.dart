import 'package:indoor_location/domain/rssi.dart';
import 'package:mobx/mobx.dart';

part 'rssi_list_vm.g.dart';

class RssiListVm = _RssiListVm with _$RssiListVm;

abstract class _RssiListVm with Store {

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

  @computed
  int get length => _rssiList.length;
}
