import 'package:flutter/material.dart';

class LoginCafeScreen extends StatelessWidget {
  const LoginCafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color plomoColor = Color.fromARGB(255, 110, 110, 110);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
        ),
        title: const Text(
          'Login Cafe', style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cafe',
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nuestro mejor café del mundo',
                  style: TextStyle(
                    fontSize: 15,
                    color: plomoColor,
                  ),
                ),
              ],
            ),
            Image.asset('assets/your_image.gif'),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Iniciar Sesión',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: const BorderSide(color: Colors.brown),
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text(
                    'Registrarte',
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
