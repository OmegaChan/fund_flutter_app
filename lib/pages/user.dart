import 'package:flutter/material.dart';
import '../widgets/user/top_container.dart';
import '../config/constant.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("我的资产"),
        bottom: PreferredSize(
          preferredSize:  const Size.fromHeight(1),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
      body: const UserBody(),
    );
  }
}

class UserBody extends StatelessWidget {
  const UserBody({Key? key}) : super(key: key);
  List<Widget> _initListView() {
    List<Widget> list=[];
    for (var i = 0; i < 20; i++) {
      list.add( const ListTile( title: Text("我是一个牛牛"), ) );
    }return list;
  }
  @override Widget build(BuildContext context) {
    return Container(
      color: const Color(colorListView),
      child: ListView(
        children: [
          const TopbgWiget(),
          ..._initListView(),
        ],
      ),
    );
  }
}