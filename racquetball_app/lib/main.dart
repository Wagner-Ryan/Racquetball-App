import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String app_name = "Racquetball App";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'TEST',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      color: Colors.amberAccent,
      supportedLocales: {const Locale('en', ' ')},
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(
          title: Text(app_name),
        ),
        body: Container(
          height: 200,
          width: double.infinity,
          //color: Colors.purple,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          //padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: const Text("Hello! i am text inside a container!",
            style: TextStyle(fontSize: 20, color: Colors.red)),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.change_history_sharp),
          onPressed: () {
            setState(() {
              if(app_name == "Racquetball App"){
                app_name = "RACQUETBALL!!!";
              }
              else app_name = "Racquetball App";
            });
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Text(
                  'GeeksforGeeks',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                title: Text('Item 1'), leading: Icon(Icons.search),
              ),
              ListTile(
                title: Text('Item 2'),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {
            switch(indexOfItem){
              case(0):
                print("A");
                break;
              case(1):
                print("B");
                break;
              case(2):
                print("C");
                break;
              default:
                print("heyyyyyy you failed");
            }
          }
        ),
      ),
    );
  }
}
