import 'package:flutter/material.dart';

class ItemProducto extends StatelessWidget {
  const ItemProducto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffb4e9f9),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/AngelManuelGomezHernandez/practica1_6j_IOS/main/arroz.jpg"),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nuestros Productos",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Row(
              children: List.generate(
                  5,
                  (index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 18,
                      )))
        ],
      ),
    );
  }
}
