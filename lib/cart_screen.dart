import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

List<Product> productlist = <Product>[
  Product(
      color: 'red',
      name: "One",
      size: "L",
      price: 110,
      quantity: 1,
      image:
          "https://images.pexels.com/photos/1144272/pexels-photo-1144272.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
  Product(
      color: 'green',
      name: "Two",
      size: "M",
      price: 100,
      quantity: 1,
      image:
          "https://images.pexels.com/photos/570001/pexels-photo-570001.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
  Product(
      color: 'Pink',
      name: "Three",
      size: "XL",
      price: 200,
      quantity: 1,
      image:
          "https://images.pexels.com/photos/1724935/pexels-photo-1724935.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
  Product(
      color: 'purple',
      name: "Four",
      size: "sm",
      price: 300,
      quantity: 1,
      image:
          "https://cdn.pixabay.com/photo/2023/12/22/20/57/ai-generated-8464364_1280.jpg"),
  Product(
      color: 'amber',
      name: "Fove",
      size: "X",
      price: 400,
      quantity: 1,
      image:
          "https://cdn.pixabay.com/photo/2024/04/25/06/50/banana-8719086_1280.jpg"),
];

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // extendBodyBehindAppBar: true,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.00),
              child: Icon(
                Icons.search_outlined,
                color: Colors.black,
                size: 25.00,
              ),
            )
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.00),
              child: Text(
                "My Bag",
                style: TextStyle(fontSize: 25.00, fontWeight: FontWeight.w800),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: productlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Product product = productlist[index];
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: SizedBox(
                          height: 120,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  color: Colors.green,
                                  child: Image.network(
                                      fit: BoxFit.fill, product.image),
                                ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Center(
                                  child: Container(
                                    color: Colors.white,
                                    width: double.infinity,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                left: 8.00, right: 8.00),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(product.name),
                                                      Row(
                                                        children: [
                                                          const Text("Color:"),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 3.00),
                                                            child: Text(
                                                                product.color),
                                                          ),
                                                          const SizedBox(
                                                            width: 5.00,
                                                          ),
                                                          const Text("Size:"),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 3.00),
                                                            child: Text(
                                                              product.size,
                                                              style: const TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w900),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                // const SizedBox(
                                                //   width: 8.0,
                                                // ),
                                                const Icon(Icons.more_vert),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Expanded(
                                            flex: 6,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  flex: 9,
                                                  child: Row(
                                                    children: [
                                                      Center(
                                                          child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0.19),
                                                              blurRadius: 20,
                                                              spreadRadius: 0,
                                                              offset: Offset(
                                                                0,
                                                                12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: IconButton(
                                                          icon:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            child: Icon(
                                                                Icons.remove),
                                                          ),
                                                          onPressed: () {
                                                            // Add your onPressed functionality here
                                                            setState(() {
                                                              if (product
                                                                      .quantity >
                                                                  2) {
                                                                product
                                                                    .quantity--;
                                                              } else {
                                                                print("no");
                                                              }
                                                            });
                                                          },
                                                        ),
                                                      )),
                                                      Text(
                                                          "${product.quantity}"),
                                                      Center(
                                                          child: Container(
                                                        decoration:
                                                            const BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      0,
                                                                      0,
                                                                      0,
                                                                      0.19),
                                                              blurRadius: 20,
                                                              spreadRadius: 0,
                                                              offset: Offset(
                                                                0,
                                                                12,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        child: IconButton(
                                                          icon:
                                                              const CircleAvatar(
                                                            backgroundColor:
                                                                Colors.white,
                                                            child:
                                                                Icon(Icons.add),
                                                          ),
                                                          onPressed: () {
                                                            // Add your onPressed functionality here
                                                            setState(() {
                                                              if (product
                                                                      .quantity ==
                                                                  5) {
                                                                _showAlertDialog(
                                                                    product
                                                                        .name);
                                                              } else {
                                                                product
                                                                    .quantity++;
                                                              }
                                                            });
                                                          },
                                                        ),
                                                      )),
                                                    ],
                                                  ),
                                                ),

                                                ///right pare
                                                Expanded(
                                                  flex: 4,
                                                  child: Container(
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  right: 14.00),
                                                          child: Text(
                                                            '\$${product.price * product.quantity}',
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            // Positioned(
            //     bottom: 20,
            //     child:

            //     ),
            SafeArea(
              child: Column(children: [
                Row(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text("Total ammount"),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text("\$${_getTotalPrice()}"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 44,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffDB3022)),
                        foregroundColor: MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {
                        mySnak('Congratulations!', context);
                      },
                      child: const Text('Check Out',
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ));
  }

  mySnak(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      backgroundColor: Colors.green[600],
    ));
  }

  int _getTotalPrice() {
    int totalCount = 0;
    for (Product product in productlist) {
      var price = product.price * product.quantity;
      totalCount += price;
    }
    return totalCount;
  }

  void _showAlertDialog(String name) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Congratulations',
              style: TextStyle(),
            ),
          ),
          content: Container(
            height: 100,
            child: Column(children: [
              const Text("You have added"),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20.00, fontWeight: FontWeight.w800),
              ),
              const Text("T-shirt on your bag!")
            ]),
          ),
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size.fromWidth(double.maxFinite),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Okay"))
          ],
        );
      },
    );
  }
}

class Product {
  final String name;
  final String color;
  final String size;
  final int price;
  int quantity;
  String image =
      "https://images.pexels.com/photos/1144231/pexels-photo-1144231.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load";
  Product({
    required this.color,
    required this.name,
    required this.size,
    required this.price,
    required this.quantity,
    required this.image,
  });
}
