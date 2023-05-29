import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../vm/rssi_list_vm.dart';

class RssiListTab extends StatefulWidget {
  const RssiListTab({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => RssiListTabState();
}

class RssiListTabState extends State<RssiListTab> {
  final RssiListVm vm = RssiListVm();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return ListView.builder(
        itemBuilder: (_, listIndex) {
          return Column(
            children: [
              Text(
                '$listIndex. name: ${vm.rssiList.elementAt(listIndex).name}',
                softWrap: true,
              ),
              const SizedBox(height: 8),
              Text(
                '거리: ${vm.rssiList.elementAt(listIndex).distance.toStringAsFixed(2)}',
                softWrap: true,
              ),
            ],
          );
        },
        itemCount: vm.length,
      );
    });
  }
}
