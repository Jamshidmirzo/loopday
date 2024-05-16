import 'package:flutter/material.dart';
import 'package:loopday/loginpage.dart';
import 'package:loopday/registerpage.dart';
import 'package:loopday/thirdpage.dart';

class Choicepage extends StatefulWidget {
  const Choicepage({super.key});

  @override
  State<Choicepage> createState() => _ChoicepageState();
}

class _ChoicepageState extends State<Choicepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20),
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Text(
                        'Set your Schedule',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 35),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Minim nulla consectetur minim consectetur Reprehenderit pariatur occaecat aliqua id minim veniam ea sunt in.',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/UI.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return Registerpage();
                            },
                          ),
                        );
                      },
                      child: Ink(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue),
                        padding: EdgeInsets.all(20),
                        child: const Text(
                          'Create Account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return Thirdpage();
                                },
                              ),
                            );
                          },
                          child: Ink(
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                image: const DecorationImage(
                                    image:
                                        AssetImage('assets/images/apple.png'),
                                    fit: BoxFit.contain),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white),
                          ),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) {
                                  return Thirdpage();
                                },
                              ),
                            );
                          },
                          child: Ink(
                            width: 200,
                            height: 70,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/google1.png'),
                                ),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'You Have Account',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (ctx) {
                                    return Loginpage();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
