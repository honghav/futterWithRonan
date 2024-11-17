import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  Temperature({super.key});

  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  final InputDecoration inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey, // Optional: Set a background color
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Icon(
                  Icons.thermostat_outlined,
                  size: 120,
                  color: Colors.white,
                ),
                const Center(
                  child: Text(
                    "Converter",
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                ),
                const SizedBox(height: 50),
                const Text(
                  "Temperature in Degrees:",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: inputDecoration,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Temperature in Fahrenheit:",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: textDecoration,
                  child: const Text(
                    'test',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
