import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TextfieldOrnek extends StatefulWidget {
  const TextfieldOrnek({super.key});

  @override
  State<TextfieldOrnek> createState() => _TextfieldOrnekState();
}

class _TextfieldOrnekState extends State<TextfieldOrnek> {
  var telefonFormati = MaskTextInputFormatter(
      mask: '0(###) ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
  var ciktiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
          obscureText: true,
        ),
        TextField(
            enabled: false, autocorrect: true, controller: ciktiController),
        const TextField(
          decoration: InputDecoration(
            hintText: "İpucu metni",
            icon: Icon(Icons.camera),
          ),
          maxLength: 10,
        ),
        TextField(
          inputFormatters: [telefonFormati],
        ),
        ElevatedButton(
            onPressed: () => setState(() {
                  ciktiController.text = telefonFormati.getUnmaskedText();
                }),
            child: const Text("Tıkla")),
        const Card(
          elevation: 5,
          color: Colors.white,
          child: SizedBox(
            width: 250,
            height: 250,
            child: Center(
              child: Text(
                "Merhaba",
                style: TextStyle(
                  fontFamily: "Times New Roman",
                  fontSize: 40,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
