import 'package:flutter/material.dart';
import 'package:untitled1/onBoarding/registerNowPage.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  bool obscureText = false;
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ismController = TextEditingController();
  final raqamController = TextEditingController();


  @override
  void dispose() {
    ismController.dispose();
    raqamController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color(0xFF2E2E2E),
        child: Column(
          children: [
            SizedBox(
              height: 127,
            ),
            Padding(
              padding: EdgeInsets.all(27),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back,",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Please login to enjoy full feature",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xFFD9D9D9),
                      ),
                    ),
                    SizedBox(
                      height: 44.7,
                    ),
                    TextFormField(
                      controller: ismController,
                      validator:(value){
                        if (value == null || value.isEmpty){
                          return "Ism kiritilishi shart";
                        }else if (value.length < 3){
                          return "Ism 3 ta harfdan kam bo'lmasligi kerak";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Color(0xFF3F3F3F),
                        hintText: "Username or Email",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: raqamController,
                      validator:(value){
                        if (value == null || value.isEmpty){
                          return "Parol kiritilishi shart";
                        }else if (value.length < 7){
                          return "Parol 7 ta harfdan kam bo'lmasligi kerak";
                        }
                        return null;
                      },
                      obscureText: obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Color(0xFF3F3F3F),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.key,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          color: Colors.grey,
                          onPressed: () {
                            obscureText = !obscureText;
                            setState(() {});
                          },
                          icon: Icon(
                            obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot password",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 46,
                    ),
                    GestureDetector(
                      onTap: (){
                        if (formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(
                            context,
                          ).showSnackBar(SnackBar(content: Text(ismController.text)));
                        }
                        if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(
                        context,
                        ).showSnackBar(SnackBar(content: Text(raqamController.text)));
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF00A3B7),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Align(
                      child: Text(
                        "Or login with",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFEAEAEA),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 34,
                    ),
                    Row(
                      spacing: 40,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/google.png"),
                        Image.asset("assets/facebook.png"),
                      ],
                    ),
                    SizedBox(height: 150,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Not have an account?",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterNowPage()),);
                        },
                          child: Text(
                            " Register now",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Color(0xFF00A3B7),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
