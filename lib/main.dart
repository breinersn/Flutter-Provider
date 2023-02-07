import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/heroesinfo.dart';
import 'package:flutter_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';
import 'package:flutter_provider/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => HeroesInfo()
        ),
        ChangeNotifierProvider(
        create: (context) => VillanosInfo()
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false ,
        title: 'Material App',
        initialRoute: 'home',
        routes:{
          'home': (context) => const HomePage(),
        } 
      ),
    );
  }
}
