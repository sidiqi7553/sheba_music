import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';

import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';
import 'package:sheba_music/const/App_Logo.dart';
import 'package:sheba_music/const/App_Text.dart';
import 'common_login/continer_templete.dart';
import 'continue_with_phone.dart';
import 'forget_password_page.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController tectec = TextEditingController();

  bool _obsecure = true;

  bool? checkedvalue = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BackGround_Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: App_Logo(
                  widht: 146,
                  height: 146,
                  logoheight: 90,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            AppText(
              text: "Login",
              SizeofFont: 32,
              textcolor: white,
              WeightofFont: FontWeight.w700,
            ),
            SizedBox(
              height: 45,
            ),
            LoginTemplete(
              HintText: 'Email Address',
              svgicon: SvgPicture.asset('assets/Icons/Email.svg'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.89,
                child: TextFormField(
                  style: TextStyle(color: white),
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  controller: tectec,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required"),
                    MinLengthValidator(7,
                        errorText:
                            "Password must contains more than 7 characters")
                  ]),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                      borderSide: BorderSide(color: primary, width: 1.0),
                    ),
                    fillColor: Color(0xff18191B),
                    filled: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset('assets/Icons/Password.svg'),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: white),
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obsecure = !_obsecure;
                        });
                      },
                      child: Icon(
                        _obsecure ? Icons.visibility_off : Icons.visibility,
                        color: white,
                      ),
                    ),
                  ),
                  obscureText: _obsecure,
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () {
                Get.to(ContinueWithPhone());
              },
              child: ContinerTemplete(
                BoxText: "Login",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Get.to(ForgetPasswordPage());
                    },
                    child: AppText(
                      text: "Forget Password?",
                      SizeofFont: 15,
                      textcolor: white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '-------------- or --------------',
                  style: TextStyle(
                      color: white, fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft,
                          colors: [
                            black.withOpacity(0.65),
                            white.withOpacity(0.15)
                          ]),
                      shape: BoxShape.circle),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: black,
                      intensity: 0.5,
                      shadowLightColor: white,
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: 1,
                      lightSource: LightSource.topLeft,
                      color: black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/Icons/Phone.svg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft,
                          colors: [
                            black.withOpacity(0.65),
                            white.withOpacity(0.15)
                          ]),
                      shape: BoxShape.circle),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: black,
                      intensity: 0.5,
                      shadowLightColor: white,
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: 1,
                      lightSource: LightSource.topLeft,
                      color: black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/Icons/facebook.svg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft,
                          colors: [
                            black.withOpacity(0.65),
                            white.withOpacity(0.15)
                          ]),
                      shape: BoxShape.circle),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: black,
                      intensity: 0.5,
                      shadowLightColor: white,
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: 1,
                      lightSource: LightSource.topLeft,
                      color: black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/Icons/Google.svg"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft,
                          colors: [
                            black.withOpacity(0.65),
                            white.withOpacity(0.15)
                          ]),
                      shape: BoxShape.circle),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shadowDarkColor: black,
                      intensity: 0.5,
                      shadowLightColor: white,
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: 1,
                      lightSource: LightSource.topLeft,
                      color: black.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/Icons/apple.svg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  text: "Don’t Have an Account? ",
                  SizeofFont: 15,
                  textcolor: white,
                ),
                TextButton(
                  onPressed: () {
                    Get.to(RegisterPage());
                  },
                  child: AppText(
                    text: "Register Here",
                    SizeofFont: 15,
                    textcolor: primary,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    )));
  }
}
