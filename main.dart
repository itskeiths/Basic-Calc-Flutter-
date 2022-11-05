import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Home()
  ));
}
class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String value=" ";
  String val1='';
  String val2='';
  int index=0;
  double value1=0;
  double value2=0;
  @override
  Widget build(BuildContext context) {
    return(
        Scaffold(
          appBar: AppBar(
              title: Text("My Calc"),
              centerTitle: true,
              backgroundColor: Colors.lightBlueAccent
          ),
          resizeToAvoidBottomInset: false,

          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '$value',
                    ),

                  ),
                ),
                SizedBox(
                  height: 200,
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FlatButton(
                            child:Text("C"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value=" ";
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child:Text("%"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+="%";
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Icon(Icons.arrow_back),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                int len=value.length-1;
                                value=value.substring(0,len);
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                            child: Text("/"),
                             onPressed: () {
                              setState(() {
                                value+="/";
                              });
                             },
                          ),
                        )

                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FlatButton(
                            child:Text("7"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='7';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child:Text("8"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='8';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text("9"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='9';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                            child: Text("X"),
                            onPressed: () {
                              setState(() {
                                value+="X";
                              });
                            },
                          ),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FlatButton(
                            child:Text("4"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='4';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child:Text("5"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+="5";
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text("6"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+="6";
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                            child: Text("-"),
                            onPressed: () {
                              setState(() {
                                value+="-";
                              });
                            },
                          ),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FlatButton(
                            child:Text("1"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='1';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child:Text("2"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='2';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text("3"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='3';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                            child: Text("+"),
                            onPressed: () {
                              setState(() {
                                value+="+";
                              });

                            },
                          ),
                        )

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: FlatButton(
                            child:Text("00"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='00';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child:Text("0"),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                value+='0';
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FlatButton(
                            child: Text("."),
                            padding: EdgeInsets.all(30), onPressed: () {
                              setState(() {
                                if(value.contains('.')){
                                  value+='';
                                }
                                else{
                                  value+='.';
                                }
                              });
                          },
                          ),
                        ),
                        Expanded(
                          child: FloatingActionButton(
                            child: Text("="),
                            backgroundColor: Colors.red,
                            onPressed: () {

                              if(value.contains('+')) {
                                index=value.indexOf('+');
                                val1=value.substring(0,index);
                                val2=value.substring(index+1,value.length);
                                if(val1.indexOf('-')==0){
                                  val1=value.substring(1,index);
                                  value1=double.parse(val1);
                                  value1=-1*value1;
                                }
                                else {
                                  value1 = double.parse(val1);
                                }
                                if(val2.indexOf('-')==0){
                                  val2=value.substring(index+2,value.length);
                                  value2=double.parse(val2);
                                  value2=-1*value2;
                                }
                                else {
                                  value2 = double.parse(val2);
                                }
                                setState(() {
                                  value=(value1+value2).toString();
                                  value1=0;
                                  value2=0;
                                  val1='';
                                  val2='';
                                });

                              }
                              if(value.contains('X')) {
                                index=value.indexOf('X');
                                val1=value.substring(0,index);
                                val2=value.substring(index+1,value.length);
                                if(val1.indexOf('-')==0){
                                  val1=value.substring(1,index);
                                  value1=double.parse(val1);
                                  value1=-1*value1;
                                }
                                else {
                                  value1 = double.parse(val1);
                                }
                                if(val2.indexOf('-')==0){
                                  val2=value.substring(index+2,value.length);
                                  value2=double.parse(val2);
                                  value2=-1*value2;
                                }
                                else {
                                  value2 = double.parse(val2);
                                }
                                setState(() {
                                  value=(value1*value2).toString();
                                  value1=0;
                                  value2=0;
                                });

                              }
                              if(value.contains('/')) {
                                index=value.indexOf('/');
                                val1=value.substring(0,index);
                                val2=value.substring(index+1,value.length);
                                if(val1.indexOf('-')==0){
                                  val1=value.substring(1,index);
                                  value1=double.parse(val1);
                                  value1=-1*value1;
                                }
                                else {
                                  value1 = double.parse(val1);
                                }
                                if(val2.indexOf('-')==0){
                                  val2=value.substring(index+2,value.length);
                                  value2=double.parse(val2);
                                  value2=-1*value2;
                                }
                                else {
                                  value2 = double.parse(val2);
                                }
                                setState(() {
                                  value=(value1/value2).toString();
                                  value1=0;
                                  value2=0;
                                });

                              }
                              if(value.contains('-')) {
                                index=value.indexOf('-',2);
                                val1=value.substring(0,index);
                                val2=value.substring(index+1,value.length);
                                if(val1.indexOf('-')==0){
                                  val1=value.substring(1,index);
                                  value1=double.parse(val1);
                                  value1=-1*value1;
                                }
                                else {
                                  value1 = double.parse(val1);
                                }
                                value2=double.parse(val2);
                                setState(() {
                                  value=(value1-value2).toString();
                                  value1=0;
                                  value2=0;
                                });

                              }


                              if(value.contains('%')) {
                                index=value.indexOf('%');
                                val1=value.substring(0,index);
                                val2=value.substring(index+1,value.length);
                                if(val1.indexOf('-')==0){
                                  val1=value.substring(1,index);
                                  value1=double.parse(val1);
                                  value1=-1*value1;
                                }
                                else {
                                  value1 = double.parse(val1);
                                }
                                if(val2.indexOf('-')==0){
                                  val2=value.substring(index+2,value.length);
                                  value2=double.parse(val2);
                                  value2=-1*value2;
                                }
                                else {
                                  value2 = double.parse(val2);
                                }
                                setState(() {
                                  value=((value1/100)*value2).toString();
                                  value1=0;
                                  value2=0;
                                });

                              }
                            },
                          ),
                        )

                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

        )
    );
    throw UnimplementedError();
  }
}

