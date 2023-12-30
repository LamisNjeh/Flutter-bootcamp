import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(
      primaryColor: Colors.amber, // Change the primary color to amber
    );
    return const MaterialApp(
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 120.0),
            child: Row(
              children: [
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                const Text(
                  "Lamis Njeh Tech",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
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
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
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
                      style: const ButtonStyle(
                          //backgroundColor:
                          // MaterialStateProperty.all(Colors.amber),
                          ),
                      child: const Text('Login'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your forgot password logic here
                      },
                      child: const Text(
                        'Forgot Password',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
