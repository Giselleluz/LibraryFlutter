import 'package:biblioteca/Componentes/card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Biblioteca extends StatelessWidget {
  const Biblioteca({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.more_rounded,
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
              child: Text('Sua estante',
                  style: GoogleFonts.gelasio(
                    color: const Color.fromARGB(255, 151, 25, 16),
                      fontSize: 40, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  Text(
                    'Coleções',
                    style: GoogleFonts.poppins(
                        fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card(190, 300, 'Pessoas Normais',
                    '../assets/capaPessoasNormais.jpg'),
                card(190, 300, 'Sempre foi você', '../assets/capaSFV.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                card(190, 300, 'Verity', '../assets/capaVerity.jpg'),
                card(190, 300, 'Imperfeitos', '../assets/capaImper.jpg'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                card(190, 300, 'Frankie', '../assets/capaFrankie.jpg'),
                cardMais(190, 300)
              ],
            ),
          ),
           
        ],
      ),
    );
  }
}
