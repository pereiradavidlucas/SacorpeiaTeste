import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_rene05_06/ButtonState.dart';
import 'package:teste_rene05_06/perg/Perg3.dart';

class Perg2 extends StatelessWidget {    
  final  ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20,),); //style do botao 


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AJUDA PARA CAMINHAR',style: TextStyle(
              fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 36, 13, 13), fontSize: 30),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/perg2.png'),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('O quanto de dificuldade você tem para atravessar um cômodo?',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(0);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg3()));
                },
                style: style,
                child: Text('Nenhuma '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(1);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg3()));
                },style: style,
                child: Text('Alguma '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(2);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg3()));
                },style: style,
                child: Text('Muita, usa apoios ou é incapaz'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
