import 'package:docsack/views/widgets/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FoldersScreen extends StatelessWidget {
  const FoldersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingButton(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 4.h,
                            ),
                          ),
                          Text("Folder Name",style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.w500),),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none,
                            color: Colors.white, size: 4.h),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12,top: 16,bottom: 6),
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.lightBlue,
                                    child: Icon(Icons.folder_copy_outlined,size: 30,color: Colors.white,)),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("File name",style: TextStyle(fontSize: 20),),
                                    SizedBox(height: 4,),
                                    Text("Something",style: TextStyle(fontSize: 18))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.lightBlue,
                                    child: Icon(Icons.folder_copy_outlined,size: 30,color: Colors.white,)),
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("File name",style: TextStyle(fontSize: 20),),
                                    SizedBox(height: 4,),
                                    Text("Something",style: TextStyle(fontSize: 18))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
