import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './widgets/layoute1.dart';
import './widgets/custom/FlexExpanded.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme.of(context).platform == TargetPlatform.android
        ? MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color.fromARGB(255, 132, 60, 255),
              ),
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          )
        : CupertinoApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: CupertinoThemeData(
              primaryColor: const Color.fromARGB(255, 132, 60, 255),
            ),
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(20)),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [const Layoute1(), const Flexexpanded()],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: const Color.fromARGB(255, 1, 53, 95),
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.0, 1.0),
                blurRadius: 6.0,
              ),
              BoxShadow(
                color: Color(0x80000000),
                offset: Offset(0, 6),
                blurRadius: 20,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mail, color: Colors.white),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
