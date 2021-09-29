import 'package:flutter/material.dart';
import 'package:kalpas_login_news/Screens/SuccessSignIn.dart';
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String fb="assets/images/fb.png";
  GlobalKey _key=GlobalKey();
  TextEditingController email=TextEditingController();
  TextEditingController password=TextEditingController();
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
                    child: Text("Sign In",style: TextStyle(
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
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: email,
                        decoration: InputDecoration(
                            icon: Icon(Icons.email_outlined,color: Colors.white,),
                            hintText: "Email",
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
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        controller: password,
                        obscureText: true,
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
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text("Forgot password?",style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width*.1,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SuccessLogIn()));

                  }, child: Text("Sign In",style: TextStyle(
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
