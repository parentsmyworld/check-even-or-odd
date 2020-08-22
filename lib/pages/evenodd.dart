import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  TextEditingController num=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Even OR Odd?")),
        ),
        body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 40.0,),
                  TextField(
                    controller: num,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      hintText: "Enter a number",
                      prefixIcon: Icon(Icons.keyboard)
                      )
                    ),
              SizedBox(height: 20.0,),
                  Center(
                    child: RaisedButton(
                      child: Text("Check"),
                      color: Colors.blue,
                      onPressed: (){
                        var a= int.parse(num.text);
                        if (a%2==0)
                          print("$a is even");
                        else
                          print("$a is odd");
                      },
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
