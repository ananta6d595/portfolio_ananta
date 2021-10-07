import 'package:flutter/material.dart';
import 'package:portfolio_ananta/Widgets/body.dart';
import 'package:portfolio_ananta/Widgets/button_row.dart';

import '../Widgets/Custom_Contact_Button.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0.0,
        backgroundColor: Colors.amberAccent,
        title: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: Colors.yellow,
              foregroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Ananta Roy',
                style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
        actions: [
          CustomContactButton(
            buttonText: 'Contact Me',
            icon: Icon(
              Icons.send_rounded,
            ),
            onPressed: () {
              print('Hello');
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: SizedBox(
              height: 260,
              width: 330,
              child: ButtonWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
