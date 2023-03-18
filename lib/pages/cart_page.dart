import 'package:flutter/material.dart';
import 'package:nike_app/components/cart_item.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget{
  const CartPage({super.key});

  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //heading
            Text('My Cart', style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,


            ),),
            const SizedBox(height: 20),
            Expanded(child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index){
              //get individual shoe
              Shoe individualShoe = value.getUserCart()[index];

              //return card item
              return CartItem(shoe: individualShoe,);
            })),
          ],
        ),
      )
    );
  }
}