import 'package:flutter/material.dart';

class Tasklist extends StatelessWidget {
  final constraints;
  bool immediate = false;
  bool this_week = false;
  bool this_month = false;
  Tasklist(this.constraints);
  Widget build(BuildContext buildContext) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: ((context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            immediate
                ? Padding(
                    padding: EdgeInsets.fromLTRB(
                        constraints.maxWidth * 0.05,
                        constraints.maxHeight * 0.01,
                        0,
                        constraints.maxHeight * 0.01),
                    child: Text(
                      'Immediate',
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.025,
                      ),
                    ),
                  )
                : Container(),
            false
                ? Padding(
                    padding: EdgeInsets.fromLTRB(
                        constraints.maxWidth * 0.05,
                        constraints.maxHeight * 0.01,
                        0,
                        constraints.maxHeight * 0.01),
                    child: Text(
                      'This Week',
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.025,
                      ),
                    ),
                  )
                : Container(),
            false
                ? Padding(
                    padding: EdgeInsets.fromLTRB(
                        constraints.maxWidth * 0.05,
                        constraints.maxHeight * 0.01,
                        0,
                        constraints.maxHeight * 0.01),
                    child: Text(
                      'This Month',
                      style: TextStyle(
                        fontSize: constraints.maxHeight * 0.025,
                      ),
                    ),
                  )
                : Container(),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.01,
                      constraints.maxWidth * 0.05,
                      constraints.maxHeight * 0.01),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(20)),
                    child: ListTile(
                      title: Text(
                        'Task' + (index + 1).toString(),
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 79, 250),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(DateTime.now().toString()),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      constraints.maxWidth * 0.6,
                      constraints.maxHeight * 0.035,
                      0,
                      constraints.maxHeight * 0.0),
                  child: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.all(constraints.maxWidth * 0.02),
                    width: constraints.maxWidth * 0.3,
                    child: Center(
                      child: Text(
                        "Open Dialogue",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
      itemCount: 5,
    );
  }
}
