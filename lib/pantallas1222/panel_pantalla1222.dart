import 'package:flutter/material.dart';
import 'package:u2_p1_gomez1222/pantallas1222/dashboard/widgets/item_walmart.dart';

class PanelPantalla1222 extends StatelessWidget {
  const PanelPantalla1222({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/AngelManuelGomezHernandez/practica1_6j_IOS/main/walmart2.png"),
            ),
          )
        ],
        title: Text('Walmart Gomez1222',
            style: TextStyle(color: Color(0xfffbfafa))),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xff77c6fb),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 5),
                      color:
                          Theme.of(context).colorScheme.primary.withOpacity(.1),
                      spreadRadius: 5,
                      blurRadius: 5),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                  hintText: "Buscar productos",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w100, color: Colors.black),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          ),
          Container(
            height: 175,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/AngelManuelGomezHernandez/practica1_6j_IOS/main/carro_fondo.jpg"))),
          ),
          ListTile(
            title: Text("Mejores productos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const ItemProducto()],
            ),
          ),
        ],
      ),
    );
  }
}
