import "package:flutter/material.dart";

class Crypto extends StatelessWidget {
  final cryptos = [
    {"name": "Bitcoin", 'slug': "BTC", 'logo': "assets/images/BTC.png"  },
    {"name": "Etherium", 'slug': "ETH", 'logo': "assets/images/ETH.png"},
    {"name": "XRP", 'slug': "XRP", 'logo': "assets/images/XRP.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ...cryptos.map((crypto) {
            return Card(
              elevation: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Row(
                  children: [
                    Image.asset(crypto['logo']),
                    SizedBox(width: 30),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${crypto['name']}",
                            style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[500],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Short Code: ${crypto['slug']}",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          IconButton(
                            onPressed: () {
                            },
                            icon: Icon(Icons.zoom_in),
                            iconSize: 50,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
