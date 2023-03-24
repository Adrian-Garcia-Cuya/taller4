import 'package:flutter/material.dart';
import 'package:mvvm_vi_2023/model/user.dart';
import 'package:mvvm_vi_2023/option.dart';
import 'package:mvvm_vi_2023/service/user_service.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? nationality;
  String? age;
  String? gender;

  @override
  Widget build(BuildContext context) {
    UserService userService = UserService();

    Future<void> login() async {
      final navigator = Navigator.of(context);
      try {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Processing Data')));
          User newUser = User(
              name: name!,
              nationality: nationality!,
              age: int.parse(age!),
              gender: gender!);
          await userService.insertUser(newUser);
          navigator.pushReplacement(
              MaterialPageRoute(builder: (_) => const Options()));
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'IMC Calculator',
                  style: TextStyle(fontSize: 30, color: Colors.blue),
                ),
                TextFormField(
                  validator: (value) => value == null || value.isEmpty
                      ? 'ingresa tu nombre'
                      : null,
                  decoration: const InputDecoration(
                    hintText: 'Nombre',
                  ),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
                TextFormField(
                  validator: (value) => value == null || value.isEmpty
                      ? 'Ingresa tu nacionalidad'
                      : null,
                  decoration: const InputDecoration(hintText: 'Nacionalidad'),
                  onChanged: (value) {
                    setState(() {
                      nationality = value;
                    });
                  },
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingresa tu edad';
                    }
                    if (int.tryParse(value) == null) {
                      return 'Ingresa un numero';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: 'Edad'),
                  onChanged: (value) => setState(() {
                    age = value;
                  }),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Ingresa tu genero';
                    }
                    if (value != 'M' && value != 'F') {
                      return 'Ingresa M o F';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(hintText: 'Genero'),
                  onChanged: (value) => setState(
                    () {
                      gender = value;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    login();
                  },
                  child: const Text('Registrar'),
                ),
              ],
            )),
      ),
    );
  }
}
