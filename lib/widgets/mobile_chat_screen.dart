import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/colors.dart';

import 'chatlist.dart';
import 'info.dart';
class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString()
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.video_call_outlined,color: Colors.white,)),
          IconButton(onPressed:(){}, icon: Icon(Icons.call,color: Colors.white,)),
          IconButton(onPressed:(){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.emoji_emotions_outlined,color: Colors.grey,),
              ),
              suffixIcon:

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.attach_file,color: Colors.grey,),
                    Icon(Icons.currency_rupee_outlined,color: Colors.grey,),
                    Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                  ],
                ),
              ),
              hintText: "Type a message",
              border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        width: 0,
                            style: BorderStyle.none,
                       )

    ),
              contentPadding: EdgeInsets.all(18),
            ),
          )
        ],
      ),
    );
  }
}
