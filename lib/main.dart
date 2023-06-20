import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MobileBurgers',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      title: 'Mega Stacker Cheddar Empanado',
      image: 'assets/item1.png',
      description: 'Carne, Molho sabor cheddar, Três fatias de Bacon, Molho Stacker, Queijo processado empanado sabor cheddar e pão Whopper.',
      value: 45.90,
    ),
    Item(
      title: 'Whopper Choripan',
      image: 'assets/item2.png',
      description: 'Pão com Gergelim, Hamburger tipo Linguiça, Alface, Tomate, Cebola, Queijo sabor Cheddar e Molho Chimichurri',
	    value: 25.90,
    ),
    Item(
      title: 'Big King',
      image: 'assets/item3.png',
      description: 'Dois Hambúgeres grelhados no churrasco, Cheddar, Cebola, Picles, Alface e Molho Big King.',
      value: 59.90,
    ),
    Item(
      title: 'Chicken Duplo',
      image: 'assets/item4.png',
      description: 'Pão com gergelim, Dois filés de peito de frango empanado, Cheddar fatiado, Maionese e Alface.',
      value: 35.90,
    ),
    Item(
      title: 'Kids Burger',
      image: 'assets/item5.png',
      description: 'Pão com gergelim, hambúrguer de carne bovina, uma fatia de queijo derretido.',
      value: 9.90,
    ),
    Item(
      title: 'BK WAFFLE',
      image: 'assets/item6.png',
      description: ' Waffle, mix sabor baunilha, creme de avelã.',
      value: 19.90,
    ),
    Item(
      title: 'Batata Frita',
      image: 'assets/item7.png',
      description: 'Batatas fritas e sal, nós tamanhos pequenas, médias e grandes',
      value: 7.59,
    ),
    Item(
      title: 'Sundae de Chocolate',
      image: 'assets/item8.png',
      description: 'Mix de baunilha com calda sabor chocolate.',
      value: 19.90,
    ),
    Item(
      title: 'Sundae de Doce de Leite',
      image: 'assets/item9.png',
      description: 'Mix de baunilha com sabor doce de leite, calda de doce de leite e pedaços de amendoim crocante.',
      value: 19.90,
    ),
    Item(
      title: 'Sundae de Morango',
      image: 'assets/item10.png',
      description: 'Mix de baunilha com calda sabor morango.',
      value: 19.90,
    ),
    Item(
      title: 'Shake de Chocolate',
      image: 'assets/item11.png',
      description: 'Baunilha com sabor chocolate e calda de chocolate.',
      value: 25.90,
    ),
    Item(
      title: 'Shake de Morango',
      image: 'assets/item12.png',
      description: 'Baunilha com sabor morango e calda de morango.',
      value: 25.90,
    ),
    Item(
      title: 'Água de Copo',
      image: 'assets/item13.png',
      description: 'Água Natural Refrescante 310ml.',
      value: 6,
    ),
    // Restante dos itens
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).canvasColor, 
        child: Column(
          children: [
            AppBar(
              title: Text(
                'Mobile Burgers',
                style: TextStyle(
                  fontSize: 28.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Theme.of(context).canvasColor,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListTile(
              leading: Image.asset(
                items[index].image,
                width: 50,
                height: 50,
              ),
              title: Text(items[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index].description),
                  SizedBox(height: 8),
                  Text(
                    'R\$ ${items[index].value.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.5,
                    ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ]
        ),
      ),
    );
  }
}

class Item {
  final String title;
  final String image;
  final String description;
  final double value;

  Item({
    required this.title,
    required this.image,
    required this.description,
    required this.value,
  });
}
