import 'package:flutter/material.dart';

class MAnageStorage extends StatefulWidget {
  const MAnageStorage({super.key});

  @override
  State<MAnageStorage> createState() => _MAnageStorageState();
}

class _MAnageStorageState extends State<MAnageStorage> {
  List<cardItems> items = [
    cardItems(
        Icon(
          Icons.shop,
          color: Colors.orange[800],
        ),
        "Marketing \nDesigns"),
    cardItems(
        Icon(
          Icons.currency_rupee,
          color: Colors.green,
        ),
        "Online \nPayments"),
    cardItems(Icon(Icons.percent_rounded, color: Colors.yellow[800]),
        "Discount \nCoupons"),
    cardItems(
        Icon(
          Icons.group,
          color: Colors.teal,
        ),
        "My \ncustomers"),
    cardItems(
        Icon(
          Icons.qr_code,
          color: Colors.grey[700],
        ),
        "Store QR \nCode"),
    cardItems(
        Icon(Icons.money_outlined, color: Colors.purple), "Extra \nCharges"),
    cardItems(Icon(Icons.list_alt, color: Colors.pink[800]), "Order \nForm")
  ];

  int _currentSelectedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.blue[700],
        title: Text("Manage Storage",
            style: TextStyle(fontWeight: FontWeight.w400)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [items[index].IconItem],
                          ),
                          Row(
                            children: [
                              Text(
                                items[index].titleText,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      if (index == items.length - 1)
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topRight: Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            'New',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) => setState(() {
          _currentSelectedIndex = newIndex;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: "Products"),
          BottomNavigationBarItem(icon: Icon(Icons.storage), label: "Manage"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account"),
        ],
      ),
    );
  }
}

class cardItems {
  late String titleText;
  late Icon IconItem;

  cardItems(this.IconItem, this.titleText);
}
