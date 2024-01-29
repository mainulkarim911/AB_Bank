import 'package:flutter/material.dart';
import 'package:practice_3/pages/sign_up.dart';

class SuccessfulSignUp extends StatefulWidget {
  const SuccessfulSignUp({super.key});

  @override
  State<SuccessfulSignUp> createState() => _SuccessfulSignUpState();
}

class _SuccessfulSignUpState extends State<SuccessfulSignUp> {
  final TextEditingController textEditingController = TextEditingController();
  int _pressedButton = 0;
  final border = OutlineInputBorder(
    borderSide: const BorderSide(),
    borderRadius: BorderRadius.circular(8),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.only(left: 8, right: 10),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _pressedButton = 0;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: _pressedButton == 0
                              ? Colors.redAccent.shade400
                              : Colors.transparent,
                          foregroundColor:
                              _pressedButton == 0 ? Colors.white : Colors.black,
                        ),
                        child: const Text('EN'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _pressedButton = 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: _pressedButton == 1
                              ? Colors.redAccent.shade400
                              : Colors.transparent,
                          foregroundColor:
                              _pressedButton == 1 ? Colors.white : Colors.black,
                        ),
                        child: const Text('বাংলা'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/success.jpeg',
                          scale: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Successful completion of the signup process',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Internet Banking account has been successfully created.',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 240,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                            },
                            style: ButtonStyle(
                                side: MaterialStateProperty.all(
                                  BorderSide(
                                    color: Colors.redAccent.shade400,
                                    width: 1,
                                  ),
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(double.infinity, 60))),
                            child: Text(
                              'Go To Home',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.redAccent.shade400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
