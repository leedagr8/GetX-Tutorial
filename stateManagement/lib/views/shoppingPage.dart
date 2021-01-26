import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stateManagement/controllers/cartController.dart';
import 'package:stateManagement/controllers/shoppingController.dart';

class ShoppingPage extends StatelessWidget {
  //dependency injection.
  //Get.put - create this controller & put this in the dependency
  //Anytime I want to fetch this data I can use this same controller instance
  //This is the power of dependency injection
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text(controller.products[index].productName),
                    );
                  },
                );
              }
            ),
          ),
          Text(
            "Total Amount: ",
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
