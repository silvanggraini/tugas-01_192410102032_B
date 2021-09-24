import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final List<Map<String, dynamic>> listContact = [
    {
      "name" : "Abang ismet",
      "noTelp": "0882348686483",
      "email": "ismet@gmail.com",
      "image": "img/kucing1.jpg"
    },
    {
      "name" : "Dira",
      "noTelp": "0882348686483",
      "email": "dira@gmail.com",
      "image": "img/girl1.jpg"
    },
    {
      "name" : "Amak",
      "noTelp": "0882348686483",
      "email": "amak@gmail.com",
      "image": "img/girl2.jpg"
    },
    {
      "name" : "Abang alfi",
      "noTelp": "0882348686483",
      "email": "alfii@gmail.com",
      "image": "img/kucing2.jpg"
    },
    {
      "name" : "Ibuu",
      "noTelp": "0882348686483",
      "email": "ibuu@gmail.com",
      "image": "img/girl3.jpg"
    },
    {
      "name" : "Wulan",
      "noTelp": "0882348686483",
      "email": "wulann@gmail.com",
      "image": "img/girl4.jpg"
    },
    {
      "name" : "Abang hasbi",
      "noTelp": "0882348686483",
      "email": "hasbi@gmail.com",
      "image": "img/kucing3.jpg"
    },
    {
      "name" : "Abang ismet",
      "noTelp": "0882348686483",
      "email": "ismet@gmail.com",
      "image": "img/kucing4.jpg"
    },
    {
      "name" : "Dira",
      "noTelp": "0882348686483",
      "email": "dira@gmail.com",
      "image": "img/girl5.jpg"
    },
    {
      "name" : "Amak",
      "noTelp": "0882348686483",
      "email": "amak@gmail.com",
      "image": "img/girl6.jpg"
    },
    {
      "name" : "Abang alfi",
      "noTelp": "0882348686483",
      "email": "alfii@gmail.com",
      "image": "img/kucing5.jpg"
    },
    {
      "name" : "Ibuu",
      "noTelp": "0882348686483",
      "email": "ibuu@gmail.com",
      "image": "img/kucing6.jpg"
    },
    {
      "name" : "Wulan",
      "noTelp": "0882348686483",
      "email": "wulann@gmail.com",
      "image": "img/kucing7.jpg"
    },
    {
      "name" : "Felia Rhafidayanti Teknologi Informasi 19 ",
      "noTelp": "0882348686483",
      "email": "hasbi@gmail.com",
      "image": "img/kucing8.jpg"
    }
  ];

  MyApp({Key? key}) : super(key: key);
  
  // List gambar = ["img/Barcelona.png","img/Logo_Liverpool.png", "img/Bayern_Munchen.jpg","img/juventus.jpg","img/Manchester_City.png"];

  @override
  Widget build(BuildContext context) {
    listContact.sort((a, b) => a["name"].compareTo(b["name"]));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[100],
      appBar:
      AppBar(
        title: Text('Telepon'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            tooltip: 'Tambah',
            onPressed: (){},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'search',
            onPressed: (){},
          )
        ],
        backgroundColor: Colors.tealAccent[700],
        // toolbarHeight: 80.0,
      ),

      body: ListView(
        children: listContact.map((data) {
          return Card(
            margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
              children: [ 
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("${data['image']}"),
                      radius: 30,
                    ),
                    
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200.0,
                          child: Text
                        ("${data['name']}",
                        overflow: TextOverflow.ellipsis,
                        ),
                        ),
                        
                        Text("${data['noTelp']}"),
                        Text("${data['email']}"),
                      ],
                    ),
                  ],
                ),
              ],),
            ),
            
          );
        }
        ).toList(),
      )
      
      )
    );
    
  }
}
