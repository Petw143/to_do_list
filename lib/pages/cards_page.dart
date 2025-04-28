import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  final List<String> _todos = [
    'Comprar pão',
    'Estudar Flutter',
    'Ligar para o médico'
  ];
  final List<bool> _todosConcluidos = [false, false, false];

  void _adicionarTodo() {
    TextEditingController taskInputController =
        TextEditingController(); // Crie o TextEditingController aqui

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Adicionar Tarefa'),
          content: TextField(
            controller: taskInputController, // Use o controller aqui
            decoration: const InputDecoration(hintText: 'Digite a tarefa'),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Adicionar'),
              onPressed: () {
                setState(() {
                  _todos.add(taskInputController
                      .text); // Acesse o texto usando .text do controller
                  _todosConcluidos.add(false);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _marcarComoConcluida(int index) {
    setState(() {
      _todosConcluidos[index] = !_todosConcluidos[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Lista de Tarefas'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _todos[index],
                    style: TextStyle(
                      decoration: _todosConcluidos[index]
                          ? TextDecoration.lineThrough
                          : null,
                    ),
                  ),
                  Checkbox(
                    value: _todosConcluidos[index],
                    onChanged: (bool? value) {
                      _marcarComoConcluida(index);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _adicionarTodo,
        tooltip: 'Adicionar Tarefa',
        child: const Icon(Icons.add),
      ),
    );
  }
}
