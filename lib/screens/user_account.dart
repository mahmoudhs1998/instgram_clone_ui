import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clone_ui/components/components.dart';

class UserAccount extends  StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text('userName'),
                  Icon(Icons.arrow_drop_down),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.add_box_outlined),
                  SizedBox(width: 10,),
                  Icon(Icons.menu_outlined),


                ],
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //profile pic:::
              Row(

                children: [
                  Column(

                    children: [
                      CircleAvatar(backgroundColor: Colors.grey,radius: 40,
                      child:
                      Padding(
                        padding: const EdgeInsets.only(top: 60,left: 60,bottom:5),
                        child: CircleAvatar(backgroundColor: Colors.black,radius: 10,

                        child: CircleAvatar(
                          backgroundColor: Colors.blue,radius: 10,

                          child: Icon(Icons.add,size: 15,),
                        ),
                        ),
                      ),
                      ),
                      // SizedBox(height: 10,),
                      // Text('name'),
                      // SizedBox(height: 5,),
                      // Text('bio')
                    ],
                  ),
                  SizedBox(width: 30,),
                  //posts  , following , followers:::
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('45'),
                          Text('Posts'),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text('128'),
                          Text('Followers'),
                        ],
                      ),
                      SizedBox(width: 30,),
                      Column(
                        children: [
                          Text('136'),
                          Text('Following'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
             Text('mahmoud hassan'),
              SizedBox(height: 5,),
              Text('bio'),
              SizedBox(height: 10,),

              // after name and bio ::::

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16,top: 16),
                    child: Container(width:300,height: 30,

                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                      child: Center(child: Text('Edit Profile')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16,top: 16),
                    child: Container(width:20,height: 30,

                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(6)
                      ),
                      child: Center(child: Icon(

                        Icons.person_add_alt,
                        size: 16,
                        color: Colors.black,
                      )),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(right: 40,top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Story highlights'),
                    SizedBox(height: 5,),
                    Text('Keep your favorite stories on your profile')
                  ],
                ),
              ),
              // SizedBox(height: 20,),
              //
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Column(
              //       children: [
              //         CircleAvatar(radius: 30,backgroundColor: Colors.black,
              //         child: Icon(
              //           Icons.add,
              //           color: Colors.white,
              //         ),
              //         ),
              //         SizedBox(height: 5,),
              //         Text('New'),
              //       ],
              //     ),
              //
              //
              //
              //     SizedBox(width: 5,),
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 20),
              //       child: CircleAvatar(radius: 30,backgroundColor: Colors.grey,
              //
              //       ),
              //     ),
              //     SizedBox(width: 5,),
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 20),
              //       child: CircleAvatar(radius: 30,backgroundColor: Colors.grey,
              //
              //       ),
              //     ),
              //     SizedBox(width: 5,),
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 20),
              //       child: CircleAvatar(radius: 30,backgroundColor: Colors.grey,
              //
              //       ),
              //     ),
              //     SizedBox(width: 5,),
              //     Padding(
              //       padding: const EdgeInsets.only(bottom: 20),
              //       child: CircleAvatar(radius: 30,backgroundColor: Colors.grey,
              //
              //       ),
              //     ),
              //
              //
              //
              //
              //
              //
              //
              //   ],
              // ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          CircleAvatar(radius: 35,backgroundColor: Colors.black,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text('New'),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),
                        BubbleStories(name: ''),


                      ],
                    ),



                  ],

                ),

              ),

              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top:0.5),
                  child: Container(
                    height: 230,
                    child: Column(

                      children: [
                        TabBar(
                            tabs: [
                              Tab(
                                icon:Icon(
                                  Icons.grid_on_outlined,
                                ),
                              ),
                              Tab(
                                icon:Icon(
                                  Icons.person_pin_outlined,
                                ),
                              ),

                            ]
                        ),
                        Expanded(
                          child: TabBarView(children: [
                            AccountTabBar(color: Colors.red),
                            AccountTabBar(color: Colors.green),
                          ]),
                        ),

                      ],),
                  ),
                ),
              )


            ],
          ),

        ),
      ),
    );
  }
}
