import 'package:flutter/material.dart';

class status extends StatelessWidget {
  const status({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(children: [
          Container(margin: EdgeInsets.symmetric(vertical: 12),
          child: Row(children: [
            Container(padding: EdgeInsets.all(2),
            decoration: BoxDecoration(border: Border.all(color: Colors.green,width: 3,),
            borderRadius: BorderRadius.circular(40)),
            child: ClipRect(
              
              child: Image.asset('assets/images/whatsapp.jpg',height: 55,
              
              width: 55,fit: BoxFit.cover,),
              
            ),
            ),
            Padding(padding: EdgeInsets.only(left: 20)),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My status',style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 8,),
               Text('Today 12:30 am',style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.black54
            ),),
          ],
        ),
       Spacer(),
       Container(child: Icon(Icons.more_vert,
       color: Color(0xFF0FCE5E),
       ),)
          ],),
          
          ),
    
        
        ],),
      ),
      
    );
  }
}