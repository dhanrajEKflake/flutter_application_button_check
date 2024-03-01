import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ButtonCheck extends StatefulWidget {
  const ButtonCheck({super.key});

  @override
  State<ButtonCheck> createState() => _ButtonCheckState();
}

class _ButtonCheckState extends State<ButtonCheck> {
  String number = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enable/Disable Button'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              child: Lottie.asset('assets/login.json'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  number = value;
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Enter Number', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              decoration: const InputDecoration(
                  hintText: 'Enter Password', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
                height: 50,
                width: double.maxFinite,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)))),
                    onPressed: number != '' && password != '' ? () {} : null,
                    child: const Text('Login')))
          ],
        ),
      ),
    );
  }
}
