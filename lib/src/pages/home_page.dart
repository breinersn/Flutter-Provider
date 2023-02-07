import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/heroesinfo.dart';
import 'package:flutter_provider/src/widgets/super_floatingaction.dart';
import 'package:flutter_provider/src/widgets/super_text.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: (heroesInfo.heroe == 'Ironman')? Colors.red : Colors.blue,
        title:  Center(child: Text(heroesInfo.heroe)),
      ),
      body:  Center(
        child: SuperText(),
      ),
     floatingActionButton: const SuperFloatingAction(),
    );
  }
}