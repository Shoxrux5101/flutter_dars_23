import 'package:flutter/material.dart';
import 'loginRegisterPage.dart';

class RegisterNowPage extends StatefulWidget {
  RegisterNowPage({super.key});

  @override
  State<RegisterNowPage> createState() => _RegisterNowPageState();
}

class _RegisterNowPageState extends State<RegisterNowPage> {
  bool obscureText = false;
  final controller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final ismController = TextEditingController();
  final raqamController = TextEditingController();
  final emailController = TextEditingController();
  final confirmController = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    ismController.dispose();
    raqamController.dispose();
    emailController.dispose();
    confirmController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Color(0xFF2E2E2E),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                height: 66,
              ),
              Padding(
                padding: EdgeInsets.all(27),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome to NowTV,",
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
                        "Create an account to explore amazing feature",
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
                            return "Ism 3 ta hrfdan kam bo'lmasligi kerak";
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
                        controller: emailController,
                        validator:(value){
                          if (value == null || value.isEmpty){
                            return "Email kiritilishi shart";
                          }else if (value.length < 5){
                            return "Email 5 ta harfdan kam bo'lmasligi kerak";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Color(0xFF3F3F3F),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(
                            Icons.email_outlined,
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
                        height: 40,
                      ),
                      TextFormField(
                        controller: confirmController,
                        validator:(value){
                          if (value == null || value.isEmpty){
                            return "Confirm Password kiritilishi shart";
                          }else if (value.length < 5){
                            return "Confirm Password 5 ta harfdan kam bo'lmasligi kerak";
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
                          hintText: "Confirm Password",
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
                        height: 40,
                      ),
                      SizedBox(
                        height: 42,
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
                              ).showSnackBar(SnackBar(content: Text(emailController.text)));
                            }
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(SnackBar(content: Text(raqamController.text)));
                            }
                            if (formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(
                                context,
                              ).showSnackBar(SnackBar(content: Text(confirmController.text)));
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
                              "Register",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      Align(
                        child: Text(
                          "Or register with",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFEAEAEA),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        spacing: 40,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/google.png"),
                          Image.asset("assets/facebook.png"),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              " Login",
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
      ),
    );
  }
}
