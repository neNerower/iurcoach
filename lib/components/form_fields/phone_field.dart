import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';

class PhoneField extends StatelessWidget {
  final void Function(String?) onSaved;

  const PhoneField({
    Key? key,
    required this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: "Телефон"),
      keyboardType: TextInputType.phone,
      controller: MaskedTextController(
        mask: "+7 (000) 000-00-00",
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      validator: (value) {
        // Check is empty
        if (value!.isEmpty)
          return "Это обязательное поле";
        // Check id format
        if (value.length != 10)
          return "Неверный формат ввода";
      },
      onSaved: onSaved,
    );
  }
}

// class PhoneNumberFormatter extends TextInputFormatter {
//   final String countryCode;
//   PhoneNumberFormatter(this.countryCode);

//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     var text = newValue.text;

//     if (newValue.selection.baseOffset == 0) {
//       return newValue;
//     }

//     var buffer = new StringBuffer();
//     buffer.write("${countryCode} (");

//     for (int i = 0; i < text.length; i++) {
//       buffer.write(text[i]);
//       var nextIndex = i + 1;

//       if (nextIndex == 4) {
//         buffer.write(")");
//       } else if ([6, 8].contains(nextIndex)) {
//         buffer.write("-");
//       }
//     }

//     var string = buffer.toString();
//     return newValue.copyWith(
//       text: string,
//       selection: new TextSelection.collapsed(offset: string.length +1),
//     );
//   }
// }
