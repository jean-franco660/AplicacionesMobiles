import 'dart:math'; // Importar para tener acceso a las funciones matemáticas

import 'package:calc_upeux/comp/CalcButton.dart';
import 'package:calc_upeux/comp/CustomAppBarX.dart';
import 'package:calc_upeux/theme/AppTheme.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  const CalcApp({Key? key}) : super(key: key);

  @override
  _CalcAppState createState() => _CalcAppState();
}

class _CalcAppState extends State<CalcApp> {
  String valorAnt = '';
  String operador = '';
  TextEditingController _controller = new TextEditingController();

  void numClick(String text) {
    setState(() => _controller.text += text);
    print(_controller);
  }

  void clear(String text) {
    setState(() {
      _controller.text = '';
    });
  }

  void opeClick(String text) {
    setState(() {
      valorAnt = _controller.text;
      operador = text;
      _controller.text = '';
    });
  }

  void accion() {
    setState(() {
      print("");
    });
  }

  void resultOperacion(String text) {
    setState(() {
      switch (operador) {
        case "/":
          _controller.text =
              (int.parse(valorAnt) / int.parse(_controller.text)).toString();
          break;
        case "*":
          _controller.text =
              (int.parse(valorAnt) * int.parse(_controller.text)).toString();
          break;
        case "+":
          _controller.text =
              (int.parse(valorAnt) + int.parse(_controller.text)).toString();
          break;
        case "-":
          _controller.text =
              (int.parse(valorAnt) - int.parse(_controller.text)).toString();
          break;
        case "%":
          _controller.text =
              (int.parse(valorAnt) % int.parse(_controller.text)).toString();
          break;

        case "=":
          _controller.text =
              (int.parse(valorAnt) % int.parse(_controller.text)).toString();
          break;
      }
    });
  }

  void sqrtOperacion(String text) {
    setState(() {
      double num = double.tryParse(_controller.text) ?? 0;
      _controller.text = sqrt(num).toString();
    });
  }

  void piOperacion(String text) {
    setState(() {
      _controller.text = pi.toString();
    });
  }

  void pow2Operacion(String text) {
    setState(() {
      double num = double.tryParse(_controller.text) ?? 0;
      _controller.text = pow(num, 2).toString();
    });
  }

  void powOperacion(String text) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Potencia a cualquier número'),
          content: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Ingrese el exponente'),
            onChanged: (value) {
              // Aquí podrías validar y almacenar el valor del exponente
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                double base = double.tryParse(_controller.text) ?? 0;
                double exponente = double.tryParse(value) ?? 0;
                double resultado = pow(base, exponente);
                _controller.text = resultado.toString();
                Navigator.of(context).pop();
              },
              child: Text('Calcular'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<List> labelList = [
      ["AC", "C", "%", "/"],
      ["7", "8", "9", "*"],
      ["4", "5", "6", "-"],
      ["1", "2", "3", "+"],
      [".", "0", "00", "="],
      ["√", "π", "^2", "^x"]
    ];
    List<List> funx = [
      [clear, clear, opeClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, opeClick],
      [numClick, numClick, numClick, resultOperacion],
      [sqrtOperacion, piOperacion, pow2Operacion, powOperacion]
    ];

    AppTheme.colorX = Colors.blue;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      themeMode: AppTheme.useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: AppTheme.themeData,
      home: Scaffold(
        appBar: CustomAppBar(accionx: accion),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  textAlign: TextAlign.end,
                  controller: _controller,
                ),
              ),
              SizedBox(height: 20),
              ...List.generate(
                labelList.length,
                (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ...List.generate(
                      labelList[index].length,
                      (indexx) => CalcButton(
                        text: labelList[index][indexx],
                        callback: funx[index][indexx],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

