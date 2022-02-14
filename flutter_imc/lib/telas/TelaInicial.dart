import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaIncial extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {

    return TelaInicialState();
  }

}


class TelaInicialState extends State<TelaIncial>{
  String _textoResultado = "IMC: 74";
  TextEditingController _controllerPeso = new TextEditingController();
  TextEditingController  _controllerAltura = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora de IMC"),),
      body: Column(
        children: <Widget>[
          criarCampoTexto("Peso (kg):", _controllerPeso), criarCampoTexto("Altura (cm):", _controllerAltura),
          Text(_textoResultado, style: TextStyle(fontSize: 25.0),),
          
         Container(
           height: 50.0, width: 200.0,
           child: ElevatedButton(
              onPressed: (){
                  double peso = double.tryParse(_controllerPeso.text);
                  double altura = double.tryParse(_controllerAltura.text);

                  debugPrint('Peso: $peso');
                  debugPrint('Peso: $altura');

                  if(peso !=null && altura != null){
                    altura = altura /100.0;
                    double imc = (peso / (altura *altura));
                    setState(() {
                      _textoResultado = 'IMC: $imc';
                    });

                  } else{
                    setState(() {
                      _textoResultado = 'Preencha os campos para IMC';
                    });

                  }

              },

             child: Text("Calcular IMC"),
           ),
         )
        ],
      ),

    );
  }

  TextField criarCampoTexto(String texto, TextEditingController controller) {
    return TextField(
          controller: controller ,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            labelText: texto,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(
              fontSize: 25.0, color: Colors.blue
            )
          ),
        );
  }

}