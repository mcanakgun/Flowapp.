import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flow/Utilities/styles.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? kThemecolor : Color(0xffD6D6D6),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff56b94e),
      body: SingleChildScrollView(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Login");
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: kColor,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 550.0,
                    child: PageView(
                      physics: ClampingScrollPhysics(),
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/redlight.png',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 50,
                              ),
                              Text(
                                'Do You Know How Much You Pollute the Environment While You Are Waiting At The Red Light?',
                                style: kTitleStyle,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                '',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/FlowApp.png',
                                  ),
                                  height: 250.0,
                                  width: 250.0,
                                ),
                              ),
                              SizedBox(
                                height: 75,
                              ),
                              Text(
                                'FLOW Could Potentially Lower The Emissions Of The Considered Air Pollutants by 10 % to 40 %',
                                style: kTitleStyle,
                              ),
                              SizedBox(height: 15.0),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/greenlight.png',
                                  ),
                                  height: 300.0,
                                  width: 300.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                'With FLOW Get The Optimal Speed Recommendation and Stay Inphase With the Green Light.',
                                style: kTitleStyle,
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                'With FLOW Get The Optimal Speed Recommendation',
                                style: kSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      color: kThemecolor,
                      onPressed: () {
                        Navigator.pushNamed(context, "/Login");
                      },
                      child: Text(
                        _currentPage != _numPages - 1 ? 'Next' : 'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
