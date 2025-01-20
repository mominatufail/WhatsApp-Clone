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
    'Love youn Mom', //0
    "How's Effu Baby?", //1
    'Ok!!', //2
    'Parhai kar lo',
    'Congratulations',
    'Kesi ho? ghar main sb kesay hain?',
    'Tabiyat kesi hy?',
    'Send Haider now',
    'Assignment karli?',
    'Ok Fat Dr.'
  ];

  List userImage=[
    'assets/1.jpg',
    'assets/Mama.jpg',
    'assets/3.jpg',
    'assets/ab.jpg',
    'assets/5.jpeg',
    'assets/6.jpeg',
    'assets/arttt.jpg',
    'assets/8.jpeg',
    'assets/9.png',
    'assets/drrrr.jpeg'
   ];

  List MessageCircle=[
    '2',
    '4',
    '1',
    '1',
    '7',
    '3',
    '3',
    '9',
    '6',
    '2'
  ];

  List Date=[
    '8:15 AM',
    '8:30 AM',
    '9:45 AM',
    '9:50 PM',
    '1:00 PM',
    '1:00 PM',
    '2:00 PM',
    '2:45 PM',
    '5:00 PM',
    '8:45 PM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Text('WhatsApp'),
        title: Text('WhatsApp'),
        backgroundColor: Colors.lightGreenAccent.shade400

      ),
      body: Column(children: [
        //---First Expanded used for top
        // Expanded(
        //   //flex: 10,
        //   child:Container(
        //     color: Colors.lightGreenAccent.shade400,
        //   ),),
        //   //---scnd Expanded used for chats
        Expanded(
            flex: 80,
            child:Container(
              color: Colors.white,
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
                      trailing: Column(
                        children: [
                          Text(Date[index]),
                          SizedBox(height:6),
                          CircleAvatar(
                              backgroundColor: Colors.green, radius: 9,
                              child: Text(MessageCircle[index],
                                style: TextStyle(fontSize:11.5,color: Colors.white),)),

                        ],)


                      // Text('8:00 AM'),
                      // Column(
                      //   children: [
                      //     CircleAvatar(
                      //         backgroundColor: Colors.green, radius: 10,
                      //       child: Text(MessageCircle[index],
                      //         style: TextStyle(color: Colors.white),)),

                      )
                      //Text('8:00 AM'),



                    //return CircleAvatar(
                      //child: Text('${index+1}'), //index is in int but we have to convrt it in string
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
        //Expanded(
          //flex: 10,
          //child:Container(
        //       color: Colors.lightGreenAccent.shade400,
        //   ),
        // ),

      ]),
    );
  }
}
