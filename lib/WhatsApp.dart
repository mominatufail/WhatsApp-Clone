import 'package:flutter/material.dart';
class ExpandedClass extends StatelessWidget {
  ExpandedClass({super.key});

  List SenderNames=[
    'Mama Jaan', //0
    'Fizza Tufail', //1
    'Maryam Tufail', //2
    'Abdullah Karim', //3
    'Aleeza Aamir', //4
    'Nayab Zahid',  //5
    'Arfa Aijaz',  //6
    'Jia Baji',  //7
    'Mahnoor Dart',
    'Muhammad Ahmad'

  ];
  List lastMessages=[
    '', //0
    '3', //1
    '4', //2
    '5',
    '5'
  ];
  List userImage=[
    '',
    ','
        ''
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget'),
      ),
      body: Column(children: [
        //---First Expanded used for
        Expanded(
          flex: 10,
          child:Container(
            color: Colors.green,
          ),),
        //   //---scnd Expanded used for chats
        Expanded(
            flex: 80,
            child:Container(
              color: Colors.red,
              child: ListView.builder(
                  itemCount: SenderNames.length,
                  itemBuilder: (context,index)
                  { return Card(
                    child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(userImage[index]),
                        backgroundColor: Colors.green),
                      title: Text(SenderNames[index]),
                      subtitle: Text(lastMessages[index]),
                      trailing: Text('8:00 AM'),
                  ),);
                    return CircleAvatar(
                      child: Text('${index+1}'), //index is in int but we have to convrt it in string
                      //child:index.toString()),
                    );

                  }
              ),
            )),
        // SingleChildScrollView(
        //   child: Column(
        //     children: [
        // Card(
        //   color: Colors.white,
        //   child:
        //   ListTile(
        //     leading: CircleAvatar(),
        //     title: Text ('Mama Jaan'),
        //     subtitle: Text('AOA. kesi hain ap?'),
        //     trailing: Text('8:00 AM'),
        //   ),),
        // Card(
        //   color: Colors.white,
        //   child:
        //   ListTile(
        //     leading: CircleAvatar(),
        //     title: Text ('Fizza'),
        //     subtitle: Text('AOA. kesi hain ap?'),
        //     trailing: Text('8:00 AM'),
        //   ),),
        // Card(
        //   color: Colors.white,
        //   child:
        //   ListTile(
        //     leading: CircleAvatar(),
        //     title: Text ('Abdullah'),
        //     subtitle: Text('AOA. kesi hain ap?'),
        //     trailing: Text('8:00 AM'),
        //   ),),
        // ListTile(
        //   leading: CircleAvatar(),
        //   title: Text ('Maryam'),
        //   subtitle: Text('typing..',style: TextStyle(color: Colors.green),),
        //   trailing: Text('8:00 AM'),
        // ),


        //             ],
        //           ),
        //         ),
        //     ),
        // ),
        //----3rd expanded used for botton
        Expanded(
          flex: 10,
          child:Container(
              color: Colors.blue
          ),
        ),
      ]),
    );
  }
}
