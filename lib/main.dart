import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MiText(),
    debugShowCheckedModeBanner: false,
  ));
}

class MiText extends StatefulWidget {
  @override
  _MiTextState createState() => _MiTextState();
}

class _MiTextState extends State<MiText> {
  String textocaja = '';

  //limpiar textfield usando un objeto controller
  final TextEditingController controller = TextEditingController();

  void button(String value) {
    print(value);
    setState(() {
      textocaja = textocaja + '\n' + value;
      controller.text = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Text'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'ingrese Texto aquí '),
                  onSubmitted: (String value) {
                    button(value);
                  },
                  controller: controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(textocaja),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
