import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Form(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 280,
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: usernameController,
                          autocorrect: true,
                          decoration: const InputDecoration(
                            labelText: 'Enter your username',
                            hintText: 'Username',
                          ),
                        ),
                      ),
                      Container(
                        width: 280,
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          controller: passwordController,
                          autocorrect: true,
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Enter your password',
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        child: const Text('Login'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Add your forgot password logic here
                        },
                        child: const Text('Forgot Password'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
