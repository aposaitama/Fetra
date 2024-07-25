import 'package:dart_simple/widgets/auth/auth_widget.dart';
import 'package:dart_simple/widgets/auth/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetra',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey)),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
      // onGenerateRoute: (RouteSettings settings) {
      //   return MaterialPageRoute<void>(builder: (context) {
      //     return Scaffold(
      //       body: Center(
      //         child: Text('Navigation error'),
      //       ),
      //     );
      //   });
      // },
    );
  }
}
