import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Panel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Panel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg.jpeg"), fit: BoxFit.cover),
          ),
          child: Center(
            child: Container(
              width: 300,
              height: 400,
              color: const Color.fromARGB(240, 46, 38, 38).withOpacity(0.3),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 70,
                      child: Text(
                        "Login Panel",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                        decoration: InputDecoration(
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white60)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white60)),
                        obscureText: true,
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox.fromSize(
                      size: const Size(56, 56), // button width and height
                      child: ClipOval(
                        child: Material(
                          color: Colors.lightBlue, // button color
                          child: InkWell(
                            splashColor: Colors.white, // splash color
                            onTap: () {}, // button pressed
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Icon(Icons.arrow_forward_ios), // icon
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
