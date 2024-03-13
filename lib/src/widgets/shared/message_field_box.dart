import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        hintText: 'Termine sua mensagem com "?"',
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final textValue = textController.value.text;
            textController.clear();
            print('Button: $textValue');
          },
        ));

    return TextFormField(
      onTapOutside: (event) =>
          focusNode.unfocus(), // remove o foco quando toca na tela.
      controller: textController,
      decoration: inputDecoration,
      focusNode: focusNode, //Para dá o foco quando aperta o enter no teclado.
      onFieldSubmitted: (value) {
        print('Submeteu: $value');
        textController.clear();
        focusNode.requestFocus(); // focusnode.
      },
    );
  }
}
