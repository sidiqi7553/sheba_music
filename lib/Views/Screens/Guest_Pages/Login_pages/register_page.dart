import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:sheba_music/Views/Widgets/customtextformfield.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Logo.dart';
import 'package:sheba_music/const/App_Text.dart';

import 'common_login/continer_templete.dart';
import 'login_main_page.dart';
import 'verify_otp_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int groupValue = 0;
  bool firstValue = false;
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
                height: 30,
              ),
              AppText(
                text: "Register",
                SizeofFont: 32,
                textcolor: white,
                WeightofFont: FontWeight.w700,
              ),
              SizedBox(
                height: 25,
              ),
              LoginTemplete(
                HintText: 'User Name',
                svgicon: SvgPicture.asset('assets/Icons/Profile.svg'),
              ),
              SizedBox(
                height: 20,
              ),
              LoginTemplete(
                HintText: 'Email Address',
                svgicon: SvgPicture.asset('assets/Icons/Email.svg'),
              ),
              SizedBox(
                height: 20,
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
                        borderRadius: BorderRadius.circular(16),
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
              Container(
                margin: EdgeInsets.all(20),
                child: CSCPicker(
                  layout: Layout.vertical,
                  flagState: CountryFlag.ENABLE,
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: textformfieldColor,
                      border: Border.all(color: primary, width: 1)),
                  selectedItemStyle: TextStyle(
                    color: white,
                    fontSize: 14,
                  ),
                  onCountryChanged: (country) {},
                  onStateChanged: (state) {},
                  onCityChanged: (city) {},
                  countryDropdownLabel: "*Country",
                  stateDropdownLabel: "*State",
                  cityDropdownLabel: "*City",
                  //dropdownDialogRadius: 30,
                  //searchBarRadius: 30,
                ),
              ),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: IntlPhoneField(
                    dropdownTextStyle: TextStyle(color: white),
                    dropdownIcon: Icon(
                      Icons.arrow_drop_down,
                      color: white,
                    ),
                    style: TextStyle(color: white),
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: Colors.red, width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(17),
                        borderSide: BorderSide(color: primary, width: 1.0),
                      ),
                      fillColor: Color(0xff18191B),
                      filled: true,
                      hintText: 'Phone Number',
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(VerifyOtpPage());
                },
                child: ContinerTemplete(
                  BoxText: "Register",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    side: BorderSide(color: primary, width: 3),
                    value: firstValue,
                    checkColor: Colors.white,
                    activeColor: primary,
                    splashRadius: 8,
                    onChanged: (val) {
                      setState(() {
                        firstValue = val!;
                      });
                    },
                  ),
                  Text(
                    'I Agree to Sheba Music’s Terms and Conditions',
                    style: TextStyle(fontWeight: FontWeight.bold, color: white),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '-------------- or --------------',
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
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
                    text: "Already Have an Account?",
                    SizeofFont: 15,
                    textcolor: white,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    child: AppText(
                      text: " Login Here",
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
      ),
    ));
  }
}
