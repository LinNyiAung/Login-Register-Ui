import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Test> {
  bool pswvisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextFormField(
          obscureText: pswvisible,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.key),
            labelText: "Type Your password",
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  pswvisible = !pswvisible;
                });
              },
              icon: Icon(
                pswvisible ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
