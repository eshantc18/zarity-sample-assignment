import 'package:flutter/material.dart';
import 'package:zarity_sample_work/insight.dart';
import 'package:zarity_sample_work/tasklist.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text('zarity',
              style: TextStyle(
                  color: Color.fromARGB(255, 1, 30, 249),
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
              child: Icon(
                Icons.message_outlined,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 20, 0),
              child: Icon(
                Icons.notifications,
              ),
            )
          ],
        ),
        drawer: Drawer(),
        body: LayoutBuilder(
          builder: ((context, constraints) {
            return ListView(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.02,
                      0,
                      constraints.maxHeight * 0.01),
                  child: Text(
                    'Good Afternoon,',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 79, 250),
                      fontWeight: FontWeight.bold,
                      fontSize: constraints.maxHeight * 0.032,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          constraints.maxWidth * 0.6,
                          constraints.maxHeight * 0.01,
                          0,
                          constraints.maxHeight * 0.0),
                      child: Container(
                        padding: EdgeInsets.all(constraints.maxWidth * 0.02),
                        width: constraints.maxWidth * 0.3,
                        child: Center(
                          child: Text("Show Dialogue"),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 215, 96, 1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          constraints.maxWidth * 0.05,
                          constraints.maxHeight * 0.005,
                          0,
                          constraints.maxHeight * 0.007),
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: constraints.maxHeight * 0.035),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.01,
                      0,
                      constraints.maxHeight * 0.02),
                  child: Text(
                    'View your insights',
                    style: TextStyle(fontSize: constraints.maxHeight * 0.025),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.0,
                      constraints.maxHeight * 0.01,
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.02),
                  child: Insights(constraints),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.0,
                      0,
                      constraints.maxHeight * 0.01),
                  child: Text(
                    'Show a List',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 79, 250),
                      fontWeight: FontWeight.bold,
                      fontSize: constraints.maxHeight * 0.025,
                    ),
                  ),
                ),
                Tasklist(constraints),
              ],
            );
          }),
        ),
      ),
    );
  }
}
