import 'package:biblioteca/Componentes/bottom_nav.dart';
import 'package:biblioteca/biblioteca.dart';
import 'package:biblioteca/buscar.dart';
import 'package:biblioteca/loja.dart';
import 'package:biblioteca/home_page.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
   const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int selectedIndex = 0;

//Lista de paginas que serao chamadas para cada icone do bottomNav
  List<Widget> pages = const [
    HomePage(),
    Biblioteca(),
    Loja(),
    Busca(),
  ];

//Muda de tela
  nextPage(int index){
      setState(() {
        selectedIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: nextPage,
        currentIndex: selectedIndex,
        items: [
          bottomNavigationBarItem(Icons.menu_book, 'Home', Colors.black,),
          bottomNavigationBarItem(Icons.library_books, 'Search', Colors.black,),
          bottomNavigationBarItem(Icons.shopping_bag_outlined, 'Shopping', Colors.black,),
          bottomNavigationBarItem(Icons.search, 'Profile', Colors.black,),
        ]) ,
    );
  }
}