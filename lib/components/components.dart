import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BubbleStories  extends StatelessWidget {
  final String name;
  const BubbleStories({Key? key,required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[400],
            radius: 35,
            backgroundImage:NetworkImage(
              'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?b=1&k=20&m=517188688&s=612x612&w=0&h=x8h70-SXuizg3dcqN4oVe9idppdt8FUVeBFemfaMU7w=',

            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(name),
      ],
    );
  }
}

class UserPosts extends StatefulWidget {
  final String userName ;
  const UserPosts ({Key? key , required this.userName}) : super(key: key);

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {

  bool changeIcon = true;
  bool changeBookMark = true;
  int likeCounter = 0;

  void changeIconLike()
  {

    setState(() {
     changeIcon =! changeIcon;
     likeCounter++;
     if(likeCounter == 2) {
       likeCounter -= likeCounter;
     }
     debugPrint('$likeCounter');
    });
  }

  void changeBookMarked()
  {
    setState(() {
      changeBookMark = !changeBookMark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              //profile photo::
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      radius: 30,
                      backgroundImage:NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgdZpEDslKnjBmPC6dlF6pf9Q2m1o5aMdHwg&usqp=CAU',

                      ),
                    ),
                  ),
                  // Container(
                  //   height: 40,width: 60,
                  //   decoration: BoxDecoration(
                  //       color: Colors.white,
                  //       shape: BoxShape.circle,
                  //     image: DecorationImage(
                  //       image:NetworkImage(
                  //         'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?b=1&k=20&m=517188688&s=612x612&w=0&h=x8h70-SXuizg3dcqN4oVe9idppdt8FUVeBFemfaMU7w=',
                  //
                  //       ),
                  //     ),
                  //   ),
                  //
                  // ),
                  SizedBox(width: 10,),
                  Text(widget.userName
                    ,style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Icon(Icons.more_vert),


            ],
          ),
        ),
        //posts::
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(

            height:260,width: double.infinity,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey[400],
            ),
            child: Image.network(
              'https://media.istockphoto.com/photos/mountain-landscape-picture-id517188688?b=1&k=20&m=517188688&s=612x612&w=0&h=x8h70-SXuizg3dcqN4oVe9idppdt8FUVeBFemfaMU7w=',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // below posts >>>> buttons and comments::::
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: changeIconLike,
                    icon: changeIcon ? Icon(Icons.favorite_outline)
                    : Icon(Icons.favorite,color: Colors.red,),

                  ),
                  Text('$likeCounter'),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: changeBookMarked,
                icon:changeBookMark? Icon(
                     Icons.bookmark_border_outlined
                 ):Icon(
                    Icons.bookmark
                ),


              ),
            ),

          ],
        ),
        //liked by ::
      Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Row(
         children: [
           Text('Liked By.....'),
           Text('mahmoud ',style: TextStyle(fontWeight: FontWeight.bold),),
           Text('and '),
           Text('others',style: TextStyle(fontWeight: FontWeight.bold),),
         ],
    ),
      ),

        //captions:::

        Padding(
          padding: const EdgeInsets.only(left: 16,top: 8),
          child: RichText(
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'mahmoudfriend',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(

                  text: 'jfkdgifdjkljklgfdjklfjjfkdgifdjkljklgffdsdfsd',

                ),
              ],
            ),
          ),

        ),





      ],
    );
  }
}




//searchPage ::

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(physics: BouncingScrollPhysics(),
      itemCount: 20,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
        ),
        itemBuilder: (context,index)
        {
          return Padding(padding: EdgeInsets.all(2),
          child:Container(
            color:Colors.deepPurple[300],

          ),
          );
        }
    );
  }
}


class ShopGrid extends StatelessWidget {
  const ShopGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GridView.builder(physics: BouncingScrollPhysics(),
        itemCount: 20,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
        ),
        itemBuilder: (context,index)
        {
          return Padding(padding: EdgeInsets.all(2),
            child:Container(
              color:Colors.pink[200],

            ),
          );
        }
    );
  }
}

class AccountTabBar extends StatelessWidget {
  final Color color;
  const AccountTabBar({Key? key,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,

        ) ,
        itemBuilder: (context, index) =>
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        color: color,
      ),
    ),
    );
  }
}





