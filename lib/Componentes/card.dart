import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget card(
  largura,
  altura,
  String txt,
  String img,
) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: Color.fromARGB(255, 240, 232, 232),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 170,
            width: 170,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                        'Ler novamente', 
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(Icons.arrow_right_alt_rounded,
                    size: 24,
                    )
                ],
                ),  
            ),
          ),
          Text(
            txt,
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}

Widget cardMais(largura, altura) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: Color.fromARGB(255, 240, 232, 232),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: Colors.black,
          ),
          Text(
            'Adicionar mais',
            style:
                GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    ),
  );
}

Widget cardLivros(
  largura,
  altura,
  String txt,
  String img,
  Color cor,
) {
  return Container(
    width: largura,
    height: altura,
    margin: const EdgeInsets.all(8),
    child: Card(
      color: cor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 200,
            width: 200,
          ),
          Text(
            textAlign: TextAlign.center,
            txt,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget cardDuda() {
  //cria um componente que retorna em widget(widget= é uma div) (componente= é um widget predefinido))
  return Container(
    //retorna um container (container= é uma caixa)
    height: 310, //altura do container
    padding: const EdgeInsets.all(16), //margem dentro da caixa
    margin: const EdgeInsets.symmetric(horizontal: 16), //margem fora da caixa
    decoration: BoxDecoration(
      //decoration estiliza e o box é a decoracao da caixa
      borderRadius: BorderRadius.circular(16), //borda redonda na caixa
      color: const Color.fromARGB(255, 240, 232, 232), //cor da caixa
    ),
    child: Row(
      //filho do container que alinha horizontalmente
      mainAxisAlignment: MainAxisAlignment
          .spaceBetween, // da um espaçamento entre os elementos horizontalmente
      children: [
        //aceita varios filhos
        Image.asset(
          //codigo que insere imagem
          fit: BoxFit.fitHeight,
          '../assets/1984.jpg',
          height: 260, //altura
        ),
        Expanded(
          //faz o filho ocupar o maximo de espeço possivel
          child: Container(
            //outra caixa
            margin: const EdgeInsets.symmetric(
                horizontal: 8), //faz o espaço especificamente na horizontal
            child: Column(
              // alinha os filhos verticalmente
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, // da um espaçamento entre os elementos verticalmente por causa do column
              crossAxisAlignment: CrossAxisAlignment
                  .start, // alinha os elementos horizontalmente
              children: [
                //filhos
                Row(
                  // alinha horizontalmente
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // da um espaçamento entre os elementos horizontalmente
                  children: [
                    //filhos
                    Text(
                      //texto
                      '1984', textAlign: TextAlign.center, //centraliza o texto
                      style: GoogleFonts.poppins(
                        fontSize: 24, //tamanho do texto
                        fontWeight: FontWeight.w600, //espessura do texto
                      ),
                    ),
                    const Icon(
                      //adiciona icone
                      Icons.favorite, //icone de coracao
                      color: Colors.yellow, //cor do icone
                      size: 32, //tamanho do icone
                    ),
                  ],
                ), //acaba o filho
                Text(
                  ' Nessa realidade, a Inglaterra é comandada por um regime totalitarista em que todos são vigiados pelo Grande Irmão. ', //outro texto
                  style: GoogleFonts.poppins(
                    fontSize: 16, //tamanha do texto
                    fontWeight: FontWeight.w500, //espessura
                  ),
                ),
                Row(
                  // alinha horizontalmente
                  mainAxisAlignment: MainAxisAlignment
                      .spaceBetween, // da um espaçamento entre os elementos horizontalmente
                  children: [
                    //filhos
                    Image.asset(
                      '../assets/avaliacao.png',
                      width: 80,
                      height: 20,
                    ), //iamgem
                    Container(
                      //caixa
                      height: 30, //altura
                      width: 56, //largura
                      margin: const EdgeInsets.all(16), //margem do lado de fora
                      alignment: Alignment.center, //alinha no centro
                      decoration: BoxDecoration(
                        //decoration estiliza e o box é a decoracao da caixa
                        borderRadius:
                            BorderRadius.circular(10), //borda redonda na caixa
                        color: Colors.black, //cor da caixa
                      ),
                      child: Text(
                        'Ler', //um filho só (texto)
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

Widget cardRecomenda(largura, altura, String img, String txt ) {
  return Container(
    height: altura,
    width: largura,
    margin: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: const Color.fromARGB(255, 240, 232, 232),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          img,
          height: 200,
          width: 200,
        ),
        Text(
           textAlign: TextAlign.center,
            txt,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
        ),
        
      ],
    ),
  );
}
