import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/selection.dart';
import './pages/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '基金牛牛',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red,),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '基金牛牛'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // tab标签
  int _currentIndex = 0;
  // 底部tabs切换
  final List<Widget> _pages = const [
    HomePage(),
    SelectionPage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 不设置这个，到具体的每个pages里面去设置可做差异化处理
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red, //选中的颜色 
        // iconSize:35, //底部菜单大小
        currentIndex: _currentIndex, //第几个菜单选中 
        type: BottomNavigationBarType.fixed, //如果底部有4个或者4个以上的菜单的时候 就需要配置这个参数 
        onTap: (index) { //点击菜单触发的方法 //注意 
          setState(() { _currentIndex = index; });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "自选"),
          BottomNavigationBarItem(icon: Icon(Icons.supervisor_account_outlined), label: "牛牛"),
        ]),
    );
  }
}
