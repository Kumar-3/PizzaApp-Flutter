import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pizza_repository/pizza_repository.dart';

class FirebasePizzaRepo implements PizzaRepo {
  final pizzaCollection = FirebaseFirestore.instance.collection('pizzas');

  @override
  Future<List<Pizza>> getPizzas() async {
    try {
      log('Getting pizzas from Firebase');
      return await pizzaCollection.get().then((value) {
        log('Got pizzas from Firebase ${value.toString()}');
        return value.docs
            .map((e) => Pizza.fromEntity(PizzaEntity.fromDocument(e.data())))
            .toList();
      });
    } catch (e) {
      log("Error getting pizzas from Firebase");
      log(e.toString());

      rethrow;
    }
  }
}
