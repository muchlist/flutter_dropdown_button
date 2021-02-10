import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dropdown_button.dart';
import 'dropdown_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dropdown Menu"),
        ),
        body: ChangeNotifierProvider<DropdownText>(
          create: (_) => DropdownText(),
          child: Center(
            child: SizedBox(
              width: 250,
              height: 100,
              child: DropDown(),
            ),
          ),
        ),
      ),
    );
  }
}
