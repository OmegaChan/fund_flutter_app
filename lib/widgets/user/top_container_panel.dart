import 'package:flutter/material.dart';

class TopPanelWiget extends StatelessWidget {
  const TopPanelWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 0, 10.0, 0),
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width - 20,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const PannelBody(),
      ),
    );
  }
}

class PannelBody extends StatelessWidget {
  const PannelBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Icon(Icons.done_rounded),
            Text('推荐'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.trending_up_rounded),
            Text('收益'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.drive_file_rename_outline_rounded),
            Text('记录'),
          ],
        ),
        Column(
          children: [
            Icon(Icons.exposure_plus_1_rounded),
            Text('持仓'),
          ],
        ),
      ],
    );
  }
}
