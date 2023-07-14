import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
void main() {
  runApp(const MyApp());
}

/*
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double topDim=10;
  double leftDim=10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("trial")),
            body: Column(
              children: [
                Container(
                  child:Container(
                    height: 500,
                    width: 500,
                    child: Stack(
                      children: [AnimatedPositioned(
                          duration: Duration(seconds: 1),
                          child: FlutterLogo(size: 50,),
                      top: topDim,
                        left: leftDim,

                      ),]
                    ),
                  ),
                  height: 520,
                  width: 500,
                ),
                Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          topDim=56;
                          leftDim=56;
                        });},
                      child: Text("change"),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("change again"),
                    )
                  ],
                )
              ],
            )));
  }
}
*/
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  String dropdownValue = 'Africa';
  String dropdown2Value= 'Cairo';
  void getTime() async{
    Response response=await get(Uri.parse('http://worldtimeapi.org/api/timezone/$dropdownValue/$dropdown2Value'));
  Map data= jsonDecode(response.body);
  debugPrint(data.toString());
  //print("\n");
  debugPrint(data['datetime']);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Welcome to world app")),),
        body: Center(
        child: Column(
        children: [
        SizedBox(
        height: 50,
    ),
    // Step 2.
    DropdownButton<String>(
    // Step 3.
    value: dropdownValue,
    // Step 4.
    items: <String>['Africa', 'America', 'Antarctica', 'Asia','Atlantic','Australia','CET','Europe']
        .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(
    value,
    style: TextStyle(fontSize: 30),
    ),
    );
    }).toList(),
    // Step 5.
    onChanged: (String? newValue) {
    setState(() {
    dropdownValue = newValue!;
    });
    },
    ),
    SizedBox(
    height: 20,
    ),
    Text(
    'Selected Value: $dropdownValue',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    ),DropdownButton<String>(
            // Step 3.
            value: dropdown2Value,
            // Step 4.
            items: <String>['Cairo', 'Abidjan', 'Algiers', 'Bissau','Detroit','New_York','Gaza','London']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: TextStyle(fontSize: 30),
                ),
              );
            }).toList(),
            // Step 5.
            onChanged: (String? newValue) {
              setState(() {
                dropdown2Value = newValue!;
              });
            },
          ),SizedBox(
            height: 20,
          ),
          Text(
            'Selected Value: $dropdown2Value',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          )
    ,
        ElevatedButton(onPressed: (){getTime();}, child: Text("display"))

        ],
    ),
    )));
    //     appBar: AppBar(
    //       title: Center(child: Text("welcome to world app")),
    //     ),
    //     body: Column(children: [SizedBox(height: 50,),
    //     DropdownButton<String>(
    //         value: dropdownvalue,
    //         items: <String>['Africa','America'].map<DropdownMenuItem<String>>(String value)
    //         {
    //           return DropdownMenuItem<String>{
    //             value:value,
    //         child: Text(value,style: TextStyle(fontSize:30),
    //         ),);
    //         }
    //         }
    //         , onChanged: onChanged)],),
    //   ),
    // );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getTime();
  }
}
