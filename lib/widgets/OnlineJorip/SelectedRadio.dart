import 'package:flutter/material.dart';

class SelectedRadioButton extends StatefulWidget {
  const SelectedRadioButton({Key? key}) : super(key: key);

  @override
  _SelectedRadioButtonState createState() => _SelectedRadioButtonState();
}

class _SelectedRadioButtonState extends State<SelectedRadioButton> {
  double selectedPercentage = 0.0;

  void setSelectedPercentage(double percentage) {
    setState(() {
      selectedPercentage = percentage;
    });
  }

  Color getColorForPercentage(double percentage) {
    if (percentage <= 0.5) {
      return Color(0X3B89FFFF);
    } else if (percentage <= 0.75) {
      return Color(0X00C4FFFF);
    } else {
      return Color(0X3B89FFFF);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRadioTile(0.5),
        _buildRadioTile(0.75),
        _buildRadioTile(1.0),
        SizedBox(height: 16),
      ],
    );
  }

  Widget _buildRadioTile(double value) {
    return RadioListTile(
      value: value,
      groupValue: selectedPercentage,
      onChanged: (value) {
        setSelectedPercentage(value as double);
      },
      title: Container(
        height: 30,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Stack(
          children: [
            LinearProgressIndicator(
              value: value,
              valueColor: AlwaysStoppedAnimation<Color>(Color(0X3B89FFFF)),
              backgroundColor: Colors.white,
              minHeight: 30,
            ),
            Center(
              child: Text(
                '${(value * 100).toStringAsFixed(2)}%',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      activeColor: Color(0X00C4FFFF), // Set the active color
    );
  }
}

