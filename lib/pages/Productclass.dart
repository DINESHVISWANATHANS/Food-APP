class Product {
  final Product_name;
  final Product_image;
  final Product_price;
  final Product_desp;
  Product(
      {required this.Product_name,
      required this.Product_price,
      required this.Product_image,
      required this.Product_desp});
}
final List<Product> PRODUCT = [
    Product(
        Product_name: "Mutton Briyani",
        Product_price: "Rs.279/- ",
        Product_image: "images/7.jpeg",
        Product_desp: ""),
    Product(
        Product_name: "Chicken Briyani",
        Product_price: "Rs.179/- ",
        Product_image: "images/6.jpeg",
        Product_desp: ""),
    Product(
        Product_name: "Cheese Pizza",
        Product_price: "Rs.199/- ",
        Product_image: "images/8.jpeg",
        Product_desp: ""),
    Product(
        Product_name: "KFC Chicken",
        Product_price: "Rs.149/- ",
        Product_image: "images/5.jpeg",
        Product_desp: ""),
    Product(
        Product_name: "Shawarma",
        Product_price: "Rs.99/- ",
        Product_image: "images/13.jpeg",
        Product_desp: ""),
    Product(
        Product_name: "Mysore Poori",
        Product_price: "Rs.139/- ",
        Product_image: "images/12.jpeg",
        Product_desp: ""),
  ];
