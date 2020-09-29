import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ThemeXpert",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  HomepageState createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/images/1.jpg",
          color: Colors.black87,
          colorBlendMode: BlendMode.darken,
          ),
          Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/images/banner.png",       
              height: 130.0,
              width: 280.0,
              
              
              fit: BoxFit.scaleDown,
              ),
              SingleChildScrollView(
                child: Container(
                decoration:BoxDecoration(
                  color: Colors.white,
                   shape: BoxShape.rectangle,
                   borderRadius: BorderRadius.circular(25.0),
                  
                ),
                height: 250.0,
                width: 300.0,                           
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                      decoration: InputDecoration(
                        
                        suffixIcon: Icon(Icons.person,),
                        hintText: "Username",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          
                        )
                      ),
                    ),),
                    Padding(padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 10.0),
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.lock,),                              
                        
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          
                        )
                      ),
                    ),
                    
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 17.0),
                      
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Forgot Password?",
                          
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700,
                            
                          ),)
                        ],
                      ),
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(onPressed: (){},
                      child: Text("SIGN IN"),
                      color: Colors.blue,
                      minWidth: 270,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Dont have an account? "),
                          Text("SIGN UP",
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                          ),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ),
            ],
          )
          
        ],
      ),      
    );
  }
}