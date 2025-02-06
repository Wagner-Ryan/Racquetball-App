import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 300,
                  child: Image.asset('images/logo.jpg'),
                ),
                Text(
                  'RACQUETBALL APP',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 50),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: user_select,
                  child: const Text('Select User', style: TextStyle(fontSize: 18))
                ),
                SizedBox(height: 2),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: record_match,
                  child: const Text('Record Match', style: TextStyle(fontSize: 18))
                ),
                SizedBox(height: 2),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: game_history,
                  child: const Text('Game History', style: TextStyle(fontSize: 18))
                ),
                SizedBox(height: 2),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: how_to_play,
                  child: const Text('How To Play', style: TextStyle(fontSize: 18))
                ),
                SizedBox(height: 2),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: find_new,
                  child: const Text('Find New', style: TextStyle(fontSize: 18))
                ),
              ],
            ),
          ),
      ),
    );
  }
}

void user_select(){
  print('User Select');
}

void record_match(){
  print('Record Match');
}

void game_history(){
  print('Game History');
}

void how_to_play(){
  print('How to Play');
}

void find_new(){
  print('Find New');
}
