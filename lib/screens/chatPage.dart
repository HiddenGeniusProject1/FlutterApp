import 'package:flutter/material.dart';
import 'package:inspired_finalproject/models/chatUsers.dart';
import 'package:inspired_finalproject/screens/widgets/conversationList.dart';
import 'package:inspired_finalproject/storyscreen.dart';


class PageChat extends StatefulWidget {
  @override 
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<PageChat> {
  List<MyAppUser> chatUsers = [];

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFD4AF37),
          title: const Text(
            'Chat',
            style: TextStyle(
              fontFamily: 'Finlandica',
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                    child: RawMaterialButton(
                      child: const Icon (
                        Icons.apps_rounded,
                        size: 40.0,
                    ),
                    elevation: 0.0,
                      onPressed: () {
                        Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen())
                    );
                      },
                    constraints: BoxConstraints.tightFor(
                      width: 50.0,
                      height: 50.0,
                    ),
                    shape: CircleBorder(),
                    fillColor: Color(0xFFC35454),
                    ),
                  ),
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Conversations', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold,),),
                      Container(
                        padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xFFA11E1E)
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20,
                            ),
                            SizedBox(width: 2,),
                            Text(
                              'Add Person',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true, fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100,
                      )
                    )
                  ),
                ),
              ),
              // ListView.builder(
              //   itemCount: chatUsers.length,
              //   shrinkWrap: true,
              //   padding: EdgeInsets.only(top: 16),
              //   physics: NeverScrollableScrollPhysics(),
              //   itemBuilder: (context, index){
              //     return ConversationList(
              //       name: chatUsers[index].name,
              //       messageText: chatUsers[index].messageText,
              //       imageURL: chatUsers[index].imageURL,
              //       time: chatUsers[index].time,
              //       isMessageRead: (index == 0 || index == 3)? true:false,
              //     );
              //   }
              //   )
            ],
          ),
        ),
      );
    }
}