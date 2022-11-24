import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.white,                            /////// color of searchbar background
        color: Colors.green.shade400,
        boxShadow: [
          BoxShadow(
            color: Colors.green.withOpacity(1),
          ),
        ]
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(child: Container(
            child: TextField(
              autofocus: false,
              onSubmitted: (val){},
              onChanged: (val){},
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16,
                ),
                fillColor: Colors.white,           /////////////  search bar color
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search...",
                prefixIcon: const Icon(Icons.search)
              ),
            ),
          ),
          ),
          const SizedBox(width: 10,),
          Container(
            height: 45,
            width: 45,
            child: Icon(Icons.filter_alt_outlined,color: Colors.grey,),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 8,
                )
              ]
            ),
          ),
          const SizedBox(width: 10,),
          Badge(
            badgeContent: const Text("1",style: TextStyle(
              color: Colors.white,
            ),),
            badgeColor: Colors.redAccent.shade200,
            child: Container(
              height: 45,
              width: 45,
              child: Icon(Icons.shopping_cart_outlined,color: Colors.grey,),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      blurRadius: 8,
                    )
                  ]
              ),
            ),
          ),
          const SizedBox(width: 5,),
        ],
      ),
    );
  }
}
