import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class PerfilForm extends StatefulWidget {
  final String initialUsername;

  const PerfilForm({
    super.key,
    required this.initialUsername,
  });

  @override
  State<PerfilForm> createState() => _PerfilFormState();
}

class _PerfilFormState extends State<PerfilForm> {
  String _username = '';

  Future<String> get _initialUsername async {
    await Future.delayed(const Duration(seconds: 1));
    return Future.value(widget.initialUsername);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          FutureBuilder(
              future: _initialUsername,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator(); //Loading
                }
                return FormBuilderTextField(
                  name: 'nome de usuário',
                  onChanged: (value) => {
                    if (value != null)
                      setState(() {
                        _username = value;
                      })
                  },
                  initialValue: snapshot.data,
                );
              }),
          Text('Nome de usuário: $_username'),
        ],
      ),
    );
  }
}
