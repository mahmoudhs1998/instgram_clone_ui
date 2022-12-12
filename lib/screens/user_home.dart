import 'package:flutter/material.dart';
import 'package:instgram_clone_ui/components/components.dart';

class UserHome extends StatelessWidget {
 UserHome({Key? key}) : super(key: key);

  final List<dynamic> people = [
    'mahmoud','ali','ibrahem','ahmed','mohamed'
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instgram'),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.message),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories:::
          Padding(
            padding: EdgeInsets.all(8),
            child: Container(
              height: 130,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                  itemBuilder: (context, index)
                  => BubbleStories(name: people[index]),
              ),
            ),
            ),
            //posts:::

          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: people.length,
                itemBuilder: (context, index) => UserPosts(userName: people[index],),
    ),
          ),



          // below posts >> buttons and comments:::

        ],
      ),
    );
  }
}
