
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  dynamic data = [
    {
      "profile_name": "Alex Carter",
      "image_file": "cool-profile-picture-paper-bag-head-4co57dtwk64fb7lv.jpg",
      "notification_title": "New Message Received",
      "notification_details": "Hey! How’s everything going?",
      "time": "10:25 AM",
      "unread_count": 2
    },
    {
      "profile_name": "Sophia Green",
      "image_file": "download.jpeg",
      "notification_title": "Photo Shared",
      "notification_details": "Sophia sent you a new photo.",
      "time": "9:40 AM",
      "unread_count": 1
    },
    {
      "profile_name": "Liam Johnson",
      "image_file": "download.png",
      "notification_title": "File Uploaded",
      "notification_details": "Liam uploaded a new document.",
      "time": "Yesterday",
      "unread_count": 3
    },
    {
      "profile_name": "Emma Brown",
      "image_file": "download (1).jpeg",
      "notification_title": "Missed Call Alert",
      "notification_details": "You missed a call from Emma.",
      "time": "8:15 PM",
      "unread_count": 1
    },
    {
      "profile_name": "Noah Davis",
      "image_file": "download (2).jpeg",
      "notification_title": "Meeting Reminder",
      "notification_details": "Don’t forget your meeting at 3 PM.",
      "time": "11:50 AM",
      "unread_count": 5
    },
    {
      "profile_name": "Olivia Wilson",
      "image_file": "images.jpeg",
      "notification_title": "New Comment",
      "notification_details": "Olivia commented on your post.",
      "time": "Yesterday",
      "unread_count": 0
    },
    {
      "profile_name": "Ethan White",
      "image_file": "images (1).jpeg",
      "notification_title": "Invitation Received",
      "notification_details": "Ethan invited you to a group chat.",
      "time": "7:30 AM",
      "unread_count": 2
    },
    {
      "profile_name": "Ava Thompson",
      "image_file": "images (2).jpeg",
      "notification_title": "Event Rescheduled",
      "notification_details": "The meeting has been moved to Friday.",
      "time": "6:45 PM",
      "unread_count": 0
    },
    {
      "profile_name": "James Martinez",
      "image_file": "images (3).jpeg",
      "notification_title": "Task Completed",
      "notification_details": "James marked the project as done.",
      "time": "4:10 PM",
      "unread_count": 2
    },
    {
      "profile_name": "Mia Robinson",
      "image_file": "images (4).jpeg",
      "notification_title": "Project Update",
      "notification_details": "Mia uploaded the final version.",
      "time": "3:20 PM",
      "unread_count": 0
    },
    {
      "profile_name": "Lucas Clark",
      "image_file": "images (5).jpeg",
      "notification_title": "New Chat Message",
      "notification_details": "Lucas: Good morning ☀️",
      "time": "9:00 AM",
      "unread_count": 4
    },
    {
      "profile_name": "Isabella Lewis",
      "image_file": "images (6).jpeg",
      "notification_title": "Friend Request",
      "notification_details": "Isabella sent you a friend request.",
      "time": "Yesterday",
      "unread_count": 0
    },
    {
      "profile_name": "Henry Walker",
      "image_file": "images (7).jpeg",
      "notification_title": "Location Request",
      "notification_details": "Henry requested your location.",
      "time": "10:05 AM",
      "unread_count": 3
    },
    {
      "profile_name": "Charlotte Hall",
      "image_file": "images (8).jpeg",
      "notification_title": "Message Delivered",
      "notification_details": "Your message to Charlotte was delivered.",
      "time": "8:40 AM",
      "unread_count": 0
    },
    {
      "profile_name": "William Young",
      "image_file": "images (9).jpeg",
      "notification_title": "Reaction Received",
      "notification_details": "William liked your comment.",
      "time": "Yesterday",
      "unread_count": 1
    },
    {
      "profile_name": "Amelia King",
      "image_file": "images (10).jpeg",
      "notification_title": "Good Night Message",
      "notification_details": "Amelia: Good night 🌙",
      "time": "11:59 PM",
      "unread_count": 0
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Notification",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
              ),
            ),




            // show all notification card
            Expanded(
              child: ListView.builder(
                itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage("assets/product_grid_04/${data[index]["image_file"]}"),
                            ),
                            title: Text(
                              "${data[index]["notification_title"]}",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 15
                              ),
                            ),
                            subtitle: Text(
                              "${data[index]["notification_details"]}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10
                              ),
                            ),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${data[index]["time"]}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),

                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                       BoxShadow(
                                         color: Color(0xFFE7E5E4),
                                         spreadRadius: 2,
                                         blurRadius: 4
                                       )
                                    ]
                                  ),
                                  height: 20,
                                    width: 20,
                                  child: Center(
                                    child: Text(
                                      "${data[index]["unread_count"]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),



                            ),
                          Container(
                            margin: EdgeInsets.only(left: 50, top: 10, bottom: 10),
                            color: Color(0xFFE5E5E5),
                            height: 2,
                            width: double.infinity,
                          ),
                        ],
                      );
                  },
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.list,size: 25,),
                      Text(
                        "List",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.settings,size: 25,),
                      Text(
                        "Settings",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Positioned(
                  left: 120,
                  bottom: 20,

                  child: ElevatedButton(

                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        backgroundColor: Colors.blue
                      ),

                      child: Icon(
                          Icons.add,
                          size: 40,
                        color: Colors.white,
                      )
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}
