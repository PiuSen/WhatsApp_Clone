import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/colors.dart';
import 'package:whatsapp/widgets/contact_list.dart';
class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3, child: Scaffold(
         appBar: AppBar(
           backgroundColor: appBarColor,
           elevation: 0.0,
           title: Text("WhatsApp",style:TextStyle(
             fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white

           ),),
           centerTitle: false,
           actions: [
             IconButton(onPressed: (){}, icon:Icon( Icons.search,color: Colors.white,)),
             IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))

           ],
           bottom: TabBar(
             indicatorColor:tabColor ,
             indicatorWeight: 4,
             labelColor: tabColor,
             unselectedLabelColor: Colors.white,
             labelStyle: TextStyle(
               fontWeight: FontWeight.bold
             ),
             tabs: [
               Tab(text: "CHAT",),
               Tab(text: "STATUS",),
               Tab(text: "CALL",)
             ],
           ),


      ),
      body: ContactList(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: tabColor,
        child: Icon(Icons.comment,color: Colors.white,),
      ),
    ));
  }
}
