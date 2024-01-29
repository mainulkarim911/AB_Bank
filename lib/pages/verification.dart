import 'package:flutter/material.dart';
import 'package:practice_3/pages/create_user_pass.dart';
import 'package:practice_3/pages/sign_up.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()));
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
                      'Verification',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Enter your 4-digit code we have sendt to at your email and phone',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                              hintText: '1',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                              hintText: '|',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                              hintText: '',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                            decoration: InputDecoration(
                              hintText: '',
                              filled: true,
                              fillColor: Colors.white,
                              focusedBorder: border,
                              enabledBorder: border,
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text('Do not received the code',
                        style: TextStyle(fontSize: 16)),
                    const SizedBox(
                      height: 15,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.redAccent.shade400),
                      child: const Text('Resend Code',
                          style: TextStyle(fontSize: 15)),
                    ),
                    const SizedBox(
                      height: 225,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateUser()));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.redAccent.shade400,
                              foregroundColor: Colors.white,
                              minimumSize: const Size(5, 60),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              'Verify',
                              style: TextStyle(fontSize: 18),
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
