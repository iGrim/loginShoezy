import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.fill
                )
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -10,
                    width: 400,
                    height: 500,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/person.png')
                        )
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    width: 100,
                    height: 250,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/lines.png')
                          )
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(77, 148, 255, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10)
                          )
                        ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(7.0),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email",
                                hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey[400])
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color.fromRGBO(77, 148, 255, 1),
                            Color.fromRGBO(77, 148, 255, .8),
                          ]
                        ),
                      ),
                      child: Center(
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Not registered yet?", style: TextStyle(color: Color.fromRGBO(77, 148, 255, 1), fontWeight: FontWeight.bold),),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}