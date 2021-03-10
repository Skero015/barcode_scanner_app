import 'package:barcode_scanner_app/config/size_config.dart';
import 'package:barcode_scanner_app/config/styleguide.dart';
import 'package:barcode_scanner_app/views/auth_views/login.dart';
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 3 * SizeConfig.heightMultiplier,
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
                      Text("2"),
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
