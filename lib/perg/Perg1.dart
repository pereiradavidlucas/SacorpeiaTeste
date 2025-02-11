import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_rene05_06/ButtonState.dart';
import 'package:teste_rene05_06/perg/Perg2.dart';

class Perg1 extends StatelessWidget {
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20,)); //style do botao 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('FORÇA ',style: TextStyle(
              fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 36, 13, 13), fontSize: 30),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: AssetImage('assets/perg2.png'),
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                    /*Image.network('Link',width: double.infinity,height: 230,fit: BoxFit.fitWidth,),*/
                  ),
                ),
              ),
            ),
            Text(
              'O quanto de dificuldade você tem para levantar e carregar 5kg?',style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(0);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg2()));
                },style: style,
                child: Text('Nenhuma '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(1);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg2()));
                },
                style: style,
                child: Text('Alguma '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(2);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg2()));
                },style: style,
                child: Text('Muita ou não consegue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
