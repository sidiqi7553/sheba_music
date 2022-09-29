import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sheba_music/Views/Widgets/BackGround_Container.dart';
import 'package:sheba_music/Views/Widgets/inner_Pages_App_Bar.dart';
import 'package:sheba_music/const/App_Colors.dart';
import 'package:sheba_music/const/App_Text.dart';

class Change_Password extends StatefulWidget {
  const Change_Password({Key? key}) : super(key: key);

  @override
  State<Change_Password> createState() => _Change_PasswordState();
}

class _Change_PasswordState extends State<Change_Password> {
  TextEditingController tectec = TextEditingController();
  bool _obsecure = true;
  bool? checkedvalue = false;

  TextEditingController tectec2 = TextEditingController();
  bool _obsecure2 = true;
  bool? checkedvalue2 = false;

  TextEditingController tectec3 = TextEditingController();
  bool _obsecure3 = true;
  bool? checkedvalue3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: inner_Pages_App_Bar(
          title: "Change Password",
          action: ActionIcon(icon: SvgPicture.asset("assets/Icons/Wallet.svg"),),
        ),
      ),
      body: BackGround_Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
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
                      hintText: 'Old Password',
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
              SizedBox(height: 15,),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.89,
                  child: TextFormField(
                    style: TextStyle(color: white),
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    controller: tectec2,
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
                      hintText: 'New Password',
                      hintStyle: TextStyle(color: white),
                      contentPadding: EdgeInsets.only(left: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecure2 = !_obsecure2;
                          });
                        },
                        child: Icon(
                          _obsecure2 ? Icons.visibility_off : Icons.visibility,
                          color: white,
                        ),
                      ),
                    ),
                    obscureText: _obsecure2,
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.89,
                  child: TextFormField(
                    style: TextStyle(color: white),
                    autofocus: true,
                    keyboardType: TextInputType.emailAddress,
                    controller: tectec3,
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
                      hintText: 'Re-Type New Password',
                      hintStyle: TextStyle(color: white),
                      contentPadding: EdgeInsets.only(left: 5),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obsecure3 = !_obsecure3;
                          });
                        },
                        child: Icon(
                          _obsecure3 ? Icons.visibility_off : Icons.visibility,
                          color: white,
                        ),
                      ),
                    ),
                    obscureText: _obsecure3,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.4,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 100),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary,
                ),
                child: Center(
                  child: AppText(
                    text: "Update",
                    SizeofFont: 20,
                    textcolor: white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
