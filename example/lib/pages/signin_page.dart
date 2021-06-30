import 'package:example/pages/main_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _serverController = TextEditingController();
  final _jwtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign-In'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(4.0),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: _serverController,
                      decoration: const InputDecoration(
                        labelText: 'Server',
                        hintText: 'https://yourserver:6443',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required.';
                        }

                        final uri = Uri.tryParse(value);

                        if (uri == null) {
                          return 'Invalid.';
                        }

                        final scheme = uri.scheme;

                        if (scheme != 'http' && scheme != 'https') {
                          return 'Must be http or https.';
                        }

                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: _jwtController,
                      decoration: const InputDecoration(
                        labelText: 'Authorization Token',
                        hintText: 'eyJhbGciO...',
                      ),
                      maxLines: null,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Required.';
                        }

                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }

                  final server = _serverController.text;
                  final jwt = _jwtController.text;

                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomePage(
                        server: server,
                        jwt: jwt,
                      ),
                    ),
                  );
                },
                child: const Text('Sign-In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
