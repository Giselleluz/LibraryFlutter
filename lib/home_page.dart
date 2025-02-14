import 'package:biblioteca/Componentes/card.dart';
import 'package:biblioteca/Componentes/circle_avatar.dart';
import 'package:biblioteca/detalhes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon_circular_timer/neon_circular_timer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CountDownController controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.notifications,
              color: Colors.black,
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Text(
                'Your Library',
                style: GoogleFonts.gelasio(
                    color: Color.fromARGB(255, 151, 25, 16),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(26.0)),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  label: Text('Livros e audiolivros'),
                  filled: true,
                  fillColor: Color.fromARGB(255, 240, 232, 232),
                  contentPadding: EdgeInsets.all(8)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Text(
              'Genêros:',
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      circleAvatar(86, Color.fromARGB(255, 240, 232, 232), 86,
                          "../assets/romance.png"),
                      Text(
                        'Romance',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      circleAvatar(86, Color.fromARGB(255, 240, 232, 232), 86,
                          "../assets/infantil.png"),
                      Text(
                        'Infantil',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      circleAvatar(86, Color.fromARGB(255, 240, 232, 232), 86,
                          "../assets/suspense.png"),
                      Text(
                        'Suspense',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      circleAvatar(86, Color.fromARGB(255, 240, 232, 232), 86,
                          "../assets/historia.png"),
                      Text(
                        'História',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      circleAvatar(86, Color.fromARGB(255, 240, 232, 232), 86,
                          "../assets/educacao.png"),
                      Text(
                        'Educação',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Livros em alta ',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Ver todos',
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 151, 25, 16),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) => Detalhes())),
                      child: cardLivros(200, 280, '1984', '../assets/1984.jpg',
                          const Color.fromARGB(255, 240, 232, 232))),
                  cardLivros(
                      200,
                      280,
                      'É assim que acaba',
                      '../assets/eAssim.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                  cardLivros(200, 280, 'Tudo é rio', '../assets/tudoErio.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                  cardLivros(200, 280, 'Imperfeitos', '../assets/capaImper.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Livros em oferta ',
                  style: GoogleFonts.poppins(
                      fontSize: 24, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Ver todos',
                  style: GoogleFonts.poppins(
                      color: const Color.fromARGB(255, 151, 25, 16),
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  cardLivros(
                      200,
                      280,
                      'Até o verão terminar',
                      '../assets/capaVerao.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                  cardLivros(200, 280, 'Novembro 9', '../assets/capa9.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                  cardLivros(
                      200,
                      280,
                      'A empregada',
                      '../assets/capaEmpregada.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                  cardLivros(
                      200,
                      280,
                      'Os sete maridos de Evellyn Hugo',
                      '../assets/capa7.jpg',
                      Color.fromARGB(255, 240, 232, 232)),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Leitura de hoje',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.w700),
              )),
          circle(
              controller, 300, const Color.fromARGB(255, 241, 237, 237), 300),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'de sua meta de 3 minutos  ',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
                const Icon(
                  Icons.arrow_right_rounded,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 350,
              margin: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 151, 25, 16),
              ),
              child: Text(
                'Explorar a loja de livros',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
