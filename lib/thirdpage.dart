import 'package:flutter/material.dart';
import 'package:loopday/fourthpage.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/UI.png'),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 7,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple, shape: BoxShape.circle),
                    ),
                    Container(
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Container(
                      width: 10,
                      height: 7,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple, shape: BoxShape.circle),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Set your Schedule',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Minim nulla consectetur minim consectetur Reprehenderit pariatur occaecat aliqua id minim veniam ea sunt in.',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) {
                          return Fourtpage();
                        },
                      ),
                    );
                  },
                  child: Ink(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.deepPurple),
                    padding: EdgeInsets.all(10),
                    child: const Text(
                      'Get Started',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
