import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdownbutton extends StatelessWidget {
  List<String> values;
  double width;

  CustomDropdownbutton({
    super.key,
    required this.values,
    required this.width,
    required TextStyle textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.03,
      ),
      width: width,
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        elevation: 0,
        value: values.first,
        onChanged: (_) {},
        items: values.map(
          (e) {
            return DropdownMenuItem(
              value: e,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.03,
                ),
                child: Text(e),
              ),
            );
          },
        ).toList(),
        underline: Container(),
        dropdownColor: Colors.grey[900]!,
        isExpanded: true,
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}
