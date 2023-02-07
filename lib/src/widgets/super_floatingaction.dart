import 'package:flutter/material.dart';
import 'package:flutter_provider/src/providers/heroesinfo.dart';
import 'package:flutter_provider/src/providers/villanosInfo.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              heroesInfo.heroe = 'Ironman';
              villanosInfo.villano = 'El Mandarin';
              },
            child: const Icon(Icons.add_sharp)),
        const SizedBox(height: 10,),
        FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: ()  {
              heroesInfo.heroe = 'Capitan America';
              villanosInfo.villano = 'Red Skull';
              },
            child:  const Icon(Icons.microwave))
      ],
    );
  }
}
