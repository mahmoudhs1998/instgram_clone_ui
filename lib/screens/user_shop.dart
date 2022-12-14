import 'package:flutter/material.dart';
import 'package:instgram_clone_ui/components/components.dart';

class UserShop extends StatelessWidget {
  const UserShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

              Row(
                children: [
                  Icon(Icons.calendar_today_outlined),
                  SizedBox(width: 5,),
                  Icon(Icons.menu),

                ],
              ),
            ],
          ),
        ),
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[300],
                child: Row(
                  children: [
                    Icon(Icons.search,color: Colors.grey[300],),
                    Container(
                      child: Text('Search'
                        ,style: TextStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
