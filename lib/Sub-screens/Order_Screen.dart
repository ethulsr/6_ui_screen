import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        title: Text("Order #1688068"),
        centerTitle: true,
        backgroundColor: Colors.blue[700],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            ListTile(
              leading: Text(
                "May 31, 05:42PM",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 10,
                  ),
                  Text(
                    "  Delivered",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1 ITEM",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.receipt_outlined),
                    label: Text("RECEIPT"))
              ],
            ),
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/R.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                "  Explore | Men | Navy Blue ",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("  1 piece"),
                  Text("   Size: XL"),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(
                            BorderSide(color: Colors.blue, width: 0.8),
                          ),
                          padding: MaterialStateProperty.all(EdgeInsets.only(
                              top: 5, bottom: 5, left: 10, right: 10)),
                          minimumSize: MaterialStateProperty.all(Size(0, 0)),
                        ),
                        child: Text("1"),
                      ),
                      Text("x ₹799"),
                    ],
                  )
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("₹799"),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Item Total",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "₹799",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Delivery",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "FREE",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Grand Total",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text(
                  "₹799",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CUSTOMER DETAILS",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.share_outlined),
                    label: Text("SHARE"))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Deepa",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "+91-7829000484",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[700],
                      radius: 17,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: Icon(Icons.phone),
                      ),
                    ),
                    SizedBox(
                        width:
                            10), // Adjust the spacing between icons as needed
                    CircleAvatar(
                      backgroundColor:
                          Colors.green, // Use the color of your choice
                      radius: 17,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundImage: AssetImage(
                              'assets/WhatsApp Image 2023-11-08 at 19.12.11_fac23363.jpg'), // Replace with your actual image file
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "D 1101 Chartered Beverly",
                      style: TextStyle(fontSize: 20, letterSpacing: 1),
                    ),
                    Text(
                      "Hills ,Subramanyapura P.O",
                      style: TextStyle(fontSize: 20, letterSpacing: 1),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Bangalore",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pincode",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "560061",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                Column(
                  children: [Text(""), Text("")],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Payment",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                TextButton(
                  onPressed: null,
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.green, width: 0.8),
                      ),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          top: 5, bottom: 5, left: 12, right: 12)),
                      minimumSize: MaterialStateProperty.all(Size(0, 0)),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.green[100])),
                  child: Text(
                    "PAID",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "ADDITIONAL INFORMATION",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "State",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Karnataka",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "greeniceaqua@gmail.com",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.blue, width: 0.8),
                ),
                padding: MaterialStateProperty.all(
                    EdgeInsets.only(top: 8, bottom: 8, left: 12, right: 12)),
                minimumSize: MaterialStateProperty.all(Size(0, 0)),
              ),
              child: Text(
                "Share receipt",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
