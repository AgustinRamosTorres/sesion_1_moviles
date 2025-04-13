import 'package:flutter/material.dart';

class ConversorPaginaPrincipal extends StatefulWidget {
  const ConversorPaginaPrincipal({super.key});

  @override
  State<ConversorPaginaPrincipal> createState() =>
      _ConversorPaginaPrincipalState();
}

class _ConversorPaginaPrincipalState extends State<ConversorPaginaPrincipal> {
  // 8
  late double _valorAConvertir;

  late final TipoConversion tipo;

  late int _idConversionActual;

  late double _valorConvertido;

  //10

  @override
  void initState() {
    _valorAConvertir = 0.0;
    //12
    _idConversionActual = 0;
    //13
    _valorConvertido = 0.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //4
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversor de unidades"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      //5
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                // 7
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // 6
                  Text(
                    "Valor a convertir",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  // 9
                  TextField(
                    textAlign: TextAlign.center,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true,
                    ),
                    onChanged: (texto) {
                      var valorIntroducido = double.tryParse(texto);
                      setState(() {
                        _valorAConvertir = valorIntroducido ?? 0.0;
                      });
                    },
                  ),
                  // 11
                  const SizedBox(height: 32),
                  Text(
                    "Convertir de",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  DropdownButton<String>(
                    value: TipoConversion.values[_idConversionActual].mensaje,
                    items:
                        TipoConversion.values.map((TipoConversion value) {
                          return DropdownMenuItem<String>(
                            value: value.mensaje,
                            child: Text(value.mensaje),
                          );
                        }).toList(),
                    onChanged: (nuevoValor) {
                      setState(() {
                        _idConversionActual = TipoConversion.values.indexWhere(
                          (element) => element.mensaje == nuevoValor,
                        );
                      });
                    },
                  ),
                  // 14
                  const SizedBox(height: 32),
                  Text(
                    "Valor Resultado",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '$_valorConvertido',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 32.0),
                  ElevatedButton(
                    child: const Text("Convertir"),
                    onPressed: () {
                      //17
                      _convertir();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  //16
  void _convertir() {
    double constanteConversion = 1.0;
    switch (_idConversionActual) {
      case 0:
        constanteConversion = 1000.0;
        break;
      case 1:
        constanteConversion = 0.001;
        break;
      default:
        break;
    }
    setState(() {
      _valorConvertido = _valorAConvertir * constanteConversion;
    });
  }
}

enum TipoConversion {
  kilometrosAMetros("Kilómetros a metros"),
  metrosAKilometros("Metros a kilómetros");

  final String mensaje;

  const TipoConversion(this.mensaje);
}

// Realizarlo con las operaciones es aniadirle métodos.
