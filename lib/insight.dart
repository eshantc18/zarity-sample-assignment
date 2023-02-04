import 'package:flutter/material.dart';

class Insights extends StatelessWidget {
  final constraints;
  Insights(this.constraints);
  Widget build(BuildContext buildContext) {
    return GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: List.generate(5, (index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(
              constraints.maxWidth * 0.05,
              constraints.maxHeight * 0.005,
              constraints.maxWidth * 0.0,
              constraints.maxHeight * 0.007),
          child: Container(
            padding: EdgeInsets.only(top: constraints.maxHeight * 0.02),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Text(
                'CTA -' + (index + 1).toString(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: constraints.maxHeight * 0.05,
              ),
              CircleAvatar(
                  maxRadius: 15,
                  child: Center(
                    child: Icon(
                      Icons.navigate_next,
                    ),
                  )),
            ]),
          ),
        );
      }),
    );
  }
}
