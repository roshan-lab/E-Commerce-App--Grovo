import 'package:flutter/material.dart';
import 'package:grovo/component/main_header.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import '';


var counter=0;

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  State<Catalogue> createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(controller) {
    return Scaffold(
      bottomNavigationBar:    Container(
    decoration: BoxDecoration(
    color: Colors.white,
      border: Border(
        top: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
          width: 0.7,
        ),
      ),
    ),
    child: SnakeNavigationBar.color(
    behaviour: SnakeBarBehaviour.floating,
    snakeShape: SnakeShape.circle,
    padding: const EdgeInsets.symmetric(vertical: 5),
    unselectedLabelStyle: TextStyle(fontSize: 11),
    snakeViewColor: Theme.of(context).primaryColor,
    unselectedItemColor: Theme.of(context).colorScheme.secondary,
    showUnselectedLabels: true,
    //currentIndex: controller.tabIndex,
    onTap: (val){
   // controller.updateIndex(val);
    },
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
    BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Menu'),
    BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: 'Account'),
    ],
    )
    ),
      body: 
      SafeArea(
        child: Column(
          children: [
            MainHeader(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BestSellings(context, "assets/apple.png", "Apple", "1Kg", 15),
                BestSellings(context, "assets/apple2.png", "Kashmiri Apple", "1Kg", 35),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BestSellings(context, "assets/apple2.png", "Desi Apple", "1Kg", 65),
                BestSellings(context, "assets/apple.png", "Imported Apple", "1Kg", 99),
              ],
            ),

          ],
        ),
      ),
    );
  }
}



Widget BestSellings(BuildContext context, String imagePath, String productname, String quantity, int price){
  return Container(
    width: MediaQuery.of(context).size.width*0.4,
    height: MediaQuery.of(context).size.height*0.25,
    decoration: BoxDecoration(
      border: Border.all(width: 2,color: Colors.black38),
      borderRadius: BorderRadius.all(Radius.circular(16)),
      color: Colors.white60,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(imagePath.toString(),width: 100,height: 100,),
        Text(productname.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(quantity.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
              Text("₹"+price.toString(),style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
            ],
          ),
        ),
        IconButton(
          iconSize: 25,
          onPressed: (){
            counter+1;
          },
          icon: Icon(
            Icons.add_circle_outlined,
            color: Colors.green,
          ),),
      ],
    ),
  );
}