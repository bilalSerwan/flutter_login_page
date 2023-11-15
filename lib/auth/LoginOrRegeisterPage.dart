import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_page.dart';
import 'package:modernlogintute/pages/register_page.dart';
class LoginOrRegeisterPage extends StatefulWidget {
  const LoginOrRegeisterPage({super.key});

  @override
  State<LoginOrRegeisterPage> createState() => _LoginOrRegeisterPageState();
}

class _LoginOrRegeisterPageState extends State<LoginOrRegeisterPage> {
  bool showloginpage=true;
  void togglepages(){
    setState(() {
      showloginpage=!showloginpage;
    });
  }
  @override
  Widget build(BuildContext context) {
      if(showloginpage){
        return LoginPage(ontap: togglepages);
      }else{
        return RegeisterPage(ontap: togglepages);
      }

  }
}
