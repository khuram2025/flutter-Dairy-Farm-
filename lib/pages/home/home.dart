import 'package:admin_panel_responsive_flutter/pages/drawer/drawer_page.dart';
import 'package:flutter/material.dart';

class ListingPage extends StatelessWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Container(
                margin: EdgeInsets.all(10),
                height: 100,
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset("images/img.png")
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.notifications, color: Colors.grey, size: 15,),
                              Text("This is the genric notification for the animal", style: TextStyle( fontSize: 10, color: Colors.grey),),
                            ],
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                            Text("CS101", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                            Container(
                              height: 20,
                              width: 70,
                              child: Center(child: Text("Milking",style: TextStyle(color: Colors.amber,),)),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.amber),
                                  borderRadius: BorderRadius.circular(10)
                              ),

                            )
                          ],),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AgeWight(head: "Age", detail: "1 Y 3 M",),

                              AgeWight(head: "Weight", detail: "300 KG",),
                            ],
                          ),

                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(200.0),
                                  child: Image.asset("images/img.png", height: 40, width: 40,)
                              ),


                            ],),
                        ],
                      ),
                    )


                  ],
                ),


              ),
            );
          }, itemCount: 10,

          ))
        ],
      )
    );
  }
}

class AgeWight extends StatelessWidget {
  const AgeWight({
    Key? key,
    required this.head,
    required this.detail,
  }) : super(key: key);
  final String head, detail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(head+" : ", style: TextStyle(fontWeight: FontWeight.bold),),
        Text(detail)
      ],
    );
  }
}

