import 'package:flutter/material.dart';
import 'package:mimpedir/banco/restaurante_DAO.dart';
import 'package:mimpedir/tipo.dart';


class TelaCadRestaurante extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TelaCadRestauranteState();
  }
}

class TelaCadRestauranteState Extends State<TelaCadRestaurante>{

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController latitudeController = TextEditingController();
  final TextEditingController longitudeController = TextEditingController();
  String? culinariaSelecionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Cadastro de Restaurante")),
    body:Padding(padding: const EdgeInsets.all(30),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Informações do Restaurante: "),
          SizedBox(height: 40),
Text("Tipo de comida:"),

      DropdownButtonFormField<String>(
          value: culinariaSelecionada,
            items: tiposCulinaria.map((tipo)){
            return DropdownMenuItem<String>(
              value: tipo.nome,
              child: Text("${tipo.nome}")
            );
              }).toList(),
              onChanged: (String? value;

                    print(culinariaSelecionada);
                   });
                )
             ]
                  TextFormField
           )
        )
    );
  }
}
