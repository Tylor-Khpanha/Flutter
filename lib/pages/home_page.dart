import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdownbutton.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  Spacer(),
                  _bookRideWidget(context),
                  SizedBox(height: 24),
                  _rideButton(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return Text(
      "#GoMoon",
      style: GoogleFonts.nunito(
        fontSize: 85,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.55,
      width: _deviceWidth * 0.75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/astro_moon.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _bookRideWidget(BuildContext context) {
    return SizedBox(
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          SizedBox(height: 24),
          _travellerInformationWidget(context),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    // List<String> items = [
    //   'Tylor Web Station',
    //   'Preneure Station',
    // ];
    TextStyle dropdownTextStyle = GoogleFonts.nunitoSans(
      textStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    );
    return CustomDropdownbutton(
      values: [
        'Tylor Web Station',
        'Preneure Station',
      ],
      width: _deviceWidth,
      textStyle: dropdownTextStyle,
    );
  }

  Widget _travellerInformationWidget(BuildContext context) {
    double totalWidth = _deviceWidth * 0.9;
    double numberDropdownWidth = totalWidth * 0.3;
    double classDropdownWidth = totalWidth * 0.7;
    TextStyle dropdownTextStyle = GoogleFonts.nunito(
      textStyle: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
    );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownbutton(
          values: ['1', '2', '3', '4'],
          width: numberDropdownWidth,
          textStyle: dropdownTextStyle,
        ),
        SizedBox(width: 10),
        CustomDropdownbutton(
          values: [
            'First Class',
            'Business Class',
            'Economy Class1',
            'Economy Class2',
          ],
          width: classDropdownWidth,
          textStyle: dropdownTextStyle,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      width: _deviceWidth,
      margin: EdgeInsets.only(
        bottom: _deviceHeight * 0.02,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride",
          style: GoogleFonts.nunito(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
