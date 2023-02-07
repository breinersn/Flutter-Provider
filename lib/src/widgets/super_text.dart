import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/heroesinfo.dart';
import 'package:flutter_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperText extends StatefulWidget {
  SuperText({Key? key}) : super(key: key);

  @override
  State<SuperText> createState() => _SuperTextState();
}

class _SuperTextState extends State<SuperText> {
  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(heroesInfo.heroe,
          style:  TextStyle(
            fontSize: 30.0,
            color: heroesInfo.colorBase
          ),),
          Text('Villano: ${villanosInfo.villano}',
          style:  const TextStyle(
            fontSize: 21.0,
            color: Colors.black
          ),)
      ],
    );
  }
}