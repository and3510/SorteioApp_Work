// import 'dart:math';

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//             foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 61, 124, 82),     // cor do texto
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//           )
//         ),
//       ),
//       ),
//       home: const MyHomePage(title: 'Sorteio.somosicev'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

 

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
      
//       _counter++;
//     });
//   }

//   List<int> numeros = [0,1,2,3,4,5,6,7,8,9,10];

//   int sortear() {
//     Random random = Random();
//     int numeroSorteado = random.nextInt(numeros.length);
//     return numeros[numeroSorteado];
//   }

//   @override
//   Widget build(BuildContext context) {
   
//     return Scaffold(
//       appBar: AppBar(
        
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
//         title: Text(widget.title), centerTitle: true,
//       ),
//       body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 'Texto em cima',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.red, // Altere conforme necessário
//                 ),
//               ),
//               const SizedBox(height: 50),

//               ElevatedButton(
//                 onPressed: (){
//                   setState(() {
                    
//                   });
//                 }, 
//                 child: const Text("Sortear"),
//                 style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Aumenta o espaçamento interno
//                     minimumSize: Size(200, 50),
//               ),
//             ),
//             ],
//           ),
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: const Color.fromARGB(255, 61, 124, 82),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: const MyHomePage(title: 'Sorteio.somosicev'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroSorteado = 0;


  List<int> numeros = [0,1,2,3,4,5,6,7,8,9,10];

  void sortear() {
    Random random = Random();
    int numeroSorteado = random.nextInt(numeros.length);
    setState(() {
      _numeroSorteado = numeros[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sorteie o seu numero',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 46, 44, 44),
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Número sorteado: $_numeroSorteado',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: sortear,
                child: const Text("Sortear"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  minimumSize: Size(200, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}