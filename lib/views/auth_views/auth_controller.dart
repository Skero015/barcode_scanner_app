import 'package:barcode_scanner_app/config/images.dart';
import 'package:barcode_scanner_app/config/size_config.dart';
import 'package:barcode_scanner_app/config/styleguide.dart';
import 'package:barcode_scanner_app/views/auth_views/login.dart';
import 'package:barcode_scanner_app/views/auth_views/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends StatefulWidget {
  @override
  _AuthControllerState createState() => _AuthControllerState();
}

class _AuthControllerState extends State<AuthController> with SingleTickerProviderStateMixin {

  final GlobalKey<ScaffoldState> _scaffoldKeyAuthController = new GlobalKey();

  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKeyAuthController,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 2 * SizeConfig.heightMultiplier,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: TabBar(
                      indicatorColor: Colors.black,
                      indicatorWeight: 2.0,
                      tabs: [
                        Text('Login',),
                        Text('Sign Up',),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelPadding: EdgeInsets.symmetric(vertical: 3.0),
                      labelColor: Colors.black,
                      labelStyle: AppTheme.headlineLight,
                      unselectedLabelColor: AppTheme.unSelectedTabBackgroundColor,
                      automaticIndicatorColorAdjustment: false,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 5 * SizeConfig.widthMultiplier),
                    child: Container(
                      height: 10 * SizeConfig.heightMultiplier,
                      width: 22 * SizeConfig.widthMultiplier,
                      decoration: ShapeDecoration(
                        color: Color(0xF525252),
                        shadows: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 2), // changes position of shadow
                          ),
                        ],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(100.0))),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(6 * SizeConfig.imageSizeMultiplier),
                        child: ClipRRect(
                          clipper: null,
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                          child: Image(
                            image: AssetImage(Images.barcodeImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 90,
              ),
              Expanded(
                flex: 2,
                child: TabBarView(
                    children: [
                      LoginScreen(),
                      RegisterScreen(),
                    ],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
