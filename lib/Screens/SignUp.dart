import 'package:flutter/material.dart';
import 'package:kalpas_login_news/Screens/SignIn.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email=TextEditingController();
  TextEditingController userName=TextEditingController();
  TextEditingController pass=TextEditingController();
  TextEditingController confirmPass=TextEditingController();
  String fb="assets/images/fb.png";
  String gogle="assets/images/google.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg_blur.jpg")
            )
        ),
        child: Column(
          children: [
            Expanded(child: Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left: 68.0),
                child: Text("Welcome!!",style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold
                ),),
              ),
            )),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                      topRight:  Radius.circular(40))
              ),
              child: Column(
                children: [
                  Center(
                    heightFactor: 2,
                    child: Text("Sign Up",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.deepPurple
                    ),),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,color: Colors.white,),
                            hintText: "Enter Email",
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: userName,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,color: Colors.white,),
                            hintText: "User Name",
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: pass,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,color: Colors.white,),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.1),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        controller: confirmPass,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,color: Colors.white,),
                            hintText: "Re-enter Password",
                            hintStyle: TextStyle(
                                color: Colors.white70
                            ),
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){

                  }, child: Text("Sign Up",style: TextStyle(
                      fontSize: 17
                  ),),
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(Size(120, 40)),
                        backgroundColor: MaterialStateProperty.all(Colors.teal),
                        shape:MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(20),
                            side: BorderSide.none
                        ))
                    ),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Expanded(child: Divider(
                        color: Colors.black26,
                        thickness: 2,)),
                      SizedBox(width: 10),
                      Text("Or Sign Up With",style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10,),
                      Expanded(child: Divider(
                        color: Colors.black26,
                        thickness: 2,)),
                      SizedBox(width: 10,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(gogle),
                        backgroundColor: Colors.white10,
                        radius: 21,
                      ),
                      SizedBox(width: 40,),
                      CircleAvatar(
                        backgroundImage: AssetImage(fb),
                        backgroundColor: Colors.white30,
                        radius: 21,
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Have an account?"),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));

                        },
                        child: Text("Sign in",style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold
                        ),),
                      )

                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              ),

            ),
          ],
        ),
      ),

    );
  }
}
