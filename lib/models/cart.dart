import 'package:flutter/foundation.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //List of shoes for Sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Metcon',
        description:
            'Increase the intensity and attack your workouts with a pair of Nike Metcon shoes.',
        price: '300',
        imagePath: 'assets/images/nike-metcon-free.png'),
    Shoe(
        name: 'Nike Zoom',
        description:
            'Nike ZoomX is lighter, softer and more responsive than any Nike foam, designed to maximize speed by delivering greater energy return.',
        price: '350',
        imagePath: 'assets/images/nike-zoom-kobe-1-protro.png'),
    Shoe(
        name: 'Nike Pegasus',
        description:
            'Nike Pegasus Turbo Next Nature. Women\'s Road Running Shoes. 6 Colors. Run With Nike.',
        price: '320',
        imagePath: 'assets/images/nike-pegasus-36.png'),
    Shoe(
        name: 'Nike Metcon',
        description:
            'The most breathable version yet, the Nike Metcon 6 helps keep your foot cool when you\'re going full steam.',
        price: '200',
        imagePath: 'assets/images/nike-metcon-6.png'),
  ];

  //List of items in user cart
  List<Shoe> userCart = [];

  //Get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get Cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//user remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
