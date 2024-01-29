import 'package:flutter/material.dart';

import 'package:practice_3/pages/security_setup.dart';
import 'package:practice_3/pages/verification.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({super.key});

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  final TextEditingController textEditingController = TextEditingController();
  String hint_Text = 'Enter your password';
  int _pressedButton = 0;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Verification()));
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black54,
                        size: 15,
                      ),
                    ),
                  ],
                ),
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
            height: 35,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/ab.jpeg',
                          scale: 2,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Create Username and Password',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'User sets up a unique username and a secure password for future logins',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'User name',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your username',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent.shade400),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.redAccent.shade400),
                                ),
                                errorStyle: TextStyle(
                                  color: Colors.redAccent.shade400,
                                ),
                                hintText: hint_Text,
                                //filled: true,
                                //fillColor: Colors.white,
                                focusedBorder: border,
                                enabledBorder: border,
                                suffixIcon:
                                    const Icon(Icons.remove_red_eye_outlined)),
                            validator: (value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length <= 7) {
                                return '! The password must be 8 or more characters long.';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          TextButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // Form is valid, perform the desired action
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecuritySetup()));
                              }
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.redAccent.shade400,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(double.infinity, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Create',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
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
