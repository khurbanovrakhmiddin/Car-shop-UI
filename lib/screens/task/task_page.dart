import 'package:flutter/material.dart';
class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Cars",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w600),),
        centerTitle: false,
actions: [
  IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,color: Colors.red,size: 30,)),
  IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart,color: Colors.red,size: 30,)),
],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                height: 45,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"All"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Grey"),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              makeItem('assets/images/im_car1.jpeg'),
              makeItem('assets/images/im_car2.jpeg'),
              makeItem('assets/images/im_car3.jpeg'),
              makeItem('assets/images/im_car4.png'),
              makeItem('assets/images/im_car5.jpeg'),

            ],
          ),
        ),
      )
    );
  }
  Widget singleTab(bool type ,String text){

    return AspectRatio(
      aspectRatio:
        2.5/1,
      child: Container(
        alignment: Alignment.center,

        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
          color: type?Colors.red:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(text,style: TextStyle(
          color:type?Colors.white: Colors.black,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),),
      ),



    );


  }
  Widget makeItem(String item){
    return Container(
      height: 250,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(item),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 10,
            offset: Offset(0,10),

          ),
        ],

      ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: const [
                    Text("PDP Car",style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),),
                    SizedBox(height: 5,),
                    Text("100\$",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),),

                ],),
                const SizedBox(width: 10,),
                const Text("Electric",style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Icon(Icons.favorite_border,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
