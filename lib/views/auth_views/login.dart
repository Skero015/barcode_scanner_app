import 'package:barcode_scanner_app/config/images.dart';
import 'package:barcode_scanner_app/config/size_config.dart';
import 'package:barcode_scanner_app/config/styleguide.dart';
import 'package:barcode_scanner_app/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKeyLogin = new GlobalKey<ScaffoldState>(debugLabel: '_LoginScreenState');

  final GlobalKey<FormState> _formKeyLogin = GlobalKey<FormState>(debugLabel: '_LoginScreenState');

  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();

// Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKeyLogin,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Text('Login,', style: AppTheme.titleLight,),
                  Text('to your account', style: AppTheme.titleLightWeight,),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 35,),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: TextFormField(
                      controller: _password,
                      decoration: InputDecoration(
                          hintText: 'Password',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.7 * SizeConfig.heightMultiplier,),
                  Row(
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Image(
                            image: AssetImage(Images.facebookImage),
                            fit: BoxFit.fill,
                            height: 8.1 * SizeConfig.imageSizeMultiplier,
                          ),
                        ),
                      ),
                      SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                      GestureDetector(
                        child: Image(
                          image: AssetImage(Images.googleImage),
                          fit: BoxFit.cover,
                          height: 9.5 * SizeConfig.imageSizeMultiplier,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 30),
                        color: Colors.white,
                        height: 2.8 * SizeConfig.heightMultiplier,
                        child: GestureDetector(
                            child: Text('Forgot Password?', style: AppTheme.bodyLightBold, textAlign: TextAlign.start,),
                          onTap: () {

                          },
                        ),
                      ),
                      Container(
                        color: Color(0xFF8F7A7A),
                        height: 5 * SizeConfig.heightMultiplier,
                      ),
                    ],
                  ),
                  Positioned(
                    right: 5 * SizeConfig.widthMultiplier,
                    child: GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        height: 5.5 * SizeConfig.heightMultiplier,
                        width: 16 * SizeConfig.widthMultiplier,
                        decoration: ShapeDecoration(
                          color: Color(0xFfEEEDE7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0))),
                        ),
                        child: Image(
                          image: AssetImage(Images.nextImage),
                          fit: BoxFit.cover,
                          height: 13 * SizeConfig.imageSizeMultiplier,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
