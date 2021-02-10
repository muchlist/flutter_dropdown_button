import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dropdown_provider.dart';

class DropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<DropdownText>(builder: (context, dropdown, _) {
      print(dropdown.menuItems.toString());
      return DropdownButtonFormField<String>(
        isExpanded: true,
        items: dropdown.menuItems,
        value: dropdown.text ?? "A",
        onChanged: (value) {
          dropdown.setText(value);
        },
      );
    });
  }
}
