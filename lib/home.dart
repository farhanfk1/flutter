import 'package:flutter/material.dart';
import 'package:new_journy/chats.dart';
import 'package:new_journy/status.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text('whatsapp',style: TextStyle(fontSize: 21),),
          ),
         
          actions:  [
           Padding(
             padding: const EdgeInsets.only(top: 12, right: 15),
             child: Icon(Icons.search, size: 28,),
           ),

          PopupMenuButton(
            elevation: 10,
            padding: EdgeInsets.symmetric(vertical: 20),
            iconSize: 28,
          icon: Icon(Icons.more_horiz_outlined),

           itemBuilder: (context,) =>[
            PopupMenuItem(
              value: 1,
              child: Text('new group',style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.w500),
              )),
               PopupMenuItem(
              value: 2,
              child: Text('New broadcast' ,style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.w500),
              )), 
               PopupMenuItem(
              value: 3,
              child: Text('Linked devices' ,style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.w500),
              )),  
               PopupMenuItem(
              value: 4,
              child: Text('Starred messages' ,style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.w500),
              )),  
               PopupMenuItem(
              value: 5,
              child: Text('Settings' ,style: TextStyle(fontSize: 17,
              fontWeight: FontWeight.w500),
              )),  
          ]),
           SizedBox(width: 10,),

          ],
           bottom: 
           
           TabBar(tabs: [
             Tab(child: Icon(Icons.people_alt)),
              Tab(child: Row(children: [
                Text('CHATS'),
                SizedBox(width: 8,),
                Container(
                  alignment: Alignment.center,
                  child: Text('10', style: TextStyle(fontSize: 12, color: Color(0xFF075E55)),),
                  height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  
                ),)
              ],)
              ),
            
           Tab(child: Text('STATUS'),),
           Tab(child: Text('CALLS'),),
           
              
              ]),
          
          
          
        ),
        body: 
         TabBarView(children: [
          Image.asset('assets/images/logo.jpg'),

          //chats screen
          chats(),

          //status screen.....
          status(),

          ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 3
                  )
                ),
                child: CircleAvatar(
                  
                backgroundImage:
                 NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                ),
              ),
              title: Text('farhan khan'),
              subtitle: Text('2:25 am'),
              
            );
          }),


          //calls screen


             ListView.builder(itemCount: 100,
              itemBuilder:
              (context, index){
            return ListTile(
              leading: CircleAvatar(
              backgroundImage: NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              ),
              title: Text('farhan khan'),
              subtitle: Text('today 6:36 pm'),
              trailing: Icon(index/2==0 ?   Icons.phone : Icons.video_call, color: Colors.green,),
            );
          }),


        ]),
      ),
    );
  }
}