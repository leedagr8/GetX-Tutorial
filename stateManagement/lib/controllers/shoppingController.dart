import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:stateManagement/models/product.dart';

class ShoppingController extends GetxController{
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  Future<void> fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));
    var serverResponse = [
      Product(
        id: 1,
        price: 30,
        productDescription: "Some description about product",
        productImage: "abc",
        productName: "FirstProd",
      ),
      Product(
        id: 2,
        price: 40,
        productDescription: "Some description about product",
        productImage: "abc",
        productName: "SecondProd",
      ),
      Product(
        id: 3,
        price: 45.950,
        productDescription: "Some description about product",
        productImage: "abc",
        productName: "thirdProd",
      ),
    ];

    products.value = serverResponse;
  }
}