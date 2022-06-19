import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'list.dart';
void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reto 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SneakerStore"),
          leading: IconButton(
            icon: Icon(Icons.menu), onPressed: () => print("Menu"),
          ),
        
          ),

          body: ListView(
            
            children: [
              
              Lista("Dunk Low Panda", "\$200",
                  "https://images.squarespace-cdn.com/content/v1/5afceb6f5ffd2052611eff46/1620265160178-VBFLPCXNPR66AJEX9SO0/nike-dunk-low-white-black-2021-panda-hallofsneakz.png?format=750w"),

                  Lista("Jordan 1 J Balvin", "\$500",
                  "https://cdn.shopify.com/s/files/1/0575/1560/6175/products/air-jordan-1-retro-high-j-balvin-1-1000.png?v=1632344886"),

                    Lista("Bad Bunny Forum Low", "\$450",
                  "http://cdn.shopify.com/s/files/1/0575/1560/6175/products/badbunnycafe_1200x1200.png?v=1652575620"),

                      Lista("Bad Bunny Forum Low", "\$500",
                  "https://cdn.shopify.com/s/files/1/2358/2817/products/forum-low-bad-bunny-pink-easter-egg-804889.png?v=1638813988"),

                     Lista("Bad Bunny Forum Low", "\$350",
                  "https://cdn.shopify.com/s/files/1/0575/1560/6175/products/adidas-forum-low-bad-bunny-triple-black-1-1000_0bac3953-c4ee-426b-b932-a38a71daf1d5.png?v=1630799241"),

                    Lista("New Balance 550", "\$400",
                  "https://cdn.shopify.com/s/files/1/0048/8924/7844/products/New-Balance-550-Unc-BB55_700x.png?v=1646673905"),
            ],
          ),
        ),
      );
    
  }
}
