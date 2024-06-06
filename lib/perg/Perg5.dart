import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste_rene05_06/ButtonState.dart';
import 'package:teste_rene05_06/perg/Perg6.dart';

class Perg5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUEDAS',style: TextStyle(
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
            Text('Quantas vezes você caius no último ano?',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(0);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg6()));
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg6()));
                },style: style,
                child: Text('Uma a três quedas'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(2);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Perg6()));
                },style: style,
                child: Text('4 ou mais quedas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
