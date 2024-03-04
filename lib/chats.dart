import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 

          ListView.builder(itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                
              backgroundImage: NetworkImage('https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
              ),
              title: Text('farhan khan'),
              subtitle: Text(index/2==0? 'you missed audio call': 'you missed video call'),
              trailing: Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Column(children: [
                      Text('12:10',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,
                      color: Color(0xFF0FCE5E)),),
                      SizedBox(height: 6,),
                      Container(alignment: Alignment.center,
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(color: Color(0xFF0FCE5E),
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Text('2',style: TextStyle(fontWeight: FontWeight.w500),),
                      )
                    ],),
                  ),
                ],
              )
            );
          }),
    );
  }
}