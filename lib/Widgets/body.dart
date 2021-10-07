import 'package:flutter/material.dart';
import 'package:portfolio_ananta/Widgets/Custom_Contact_Button.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final projectList = [
    {
      'title': 'A Cat',
      'subtitle': 'Great client',
      'image':
          'https://images.unsplash.com/photo-1500259571355-332da5cb07aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'
    },
    {
      'title': 'Banana',
      'subtitle': 'Khub tass!',
      'image':
          'https://images.unsplash.com/photo-1481349518771-20055b2a7b24?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1239&q=80',
    },
    {
      'title': 'Pikachu',
      'subtitle': 'Great client',
      'image':
          'https://images.unsplash.com/photo-1627856608109-9cd57d12966c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1133&q=80'
    },
    {
      'title': 'Plane keno bone?',
      'subtitle': 'Great client',
      'image':
          'https://images.unsplash.com/photo-1508138221679-760a23a2285b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1974&q=80'
    },
    {
      'title': 'Pecha',
      'subtitle': 'Great client',
      'image':
          'https://images.unsplash.com/photo-1532562066470-f6f5f6d47924?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80'
    },
    {
      'title': 'Cloud',
      'subtitle': 'Great client',
      'image':
          'https://images.unsplash.com/photo-1517483000871-1dbf64a6e1c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      // return statement need ; (semicolon) at the end
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 100,
        ),
        Expanded(
          // left to right
          flex: 1,
          child: Container(
            //color: Colors.yellow,
            child: Column(
              children: [
                Expanded(
                  //Expand top to bottom
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: 0.5,
                        child: Image.asset('R.jpeg'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 75,
                                vertical: 60,
                              ),
                              child: Text(
                                'I\'m Ananta\na software engineer\nand a developer',
                                style: TextStyle(fontSize: 44),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 75,
                                vertical: 60,
                              ),
                              child: CustomContactButton(
                                buttonText: 'Drop me a line',
                                icon: Icon(Icons.mail_outline),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'My Projects',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 23,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  //listView is a viewport so it can't be in another viewport. to able to show listview we need to wrap with Expanded widget.
                  itemCount: projectList.length,
                  itemBuilder: (context, index) {
                    //itemCount determines how many list will show
                    //itemBuilder will build the context itemCount times with indexs.
                    //listview has itemCount and itemBuilder which takes fucntion with context and index argument.
                    return Container(
                      // return statement need ;(semicolon) at the end
                      child: Column(
                        children: [
                          Card(
                            //what Card() do????????????
                            elevation: 3,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(
                                    Icons.work_off_rounded,
                                  ),
                                  title: Text(
                                    projectList[index]['title'] ?? '',
                                  ),
                                  subtitle: Text(
                                    projectList[index]['subtitle'] ?? '',
                                  ), // use ?? '' to remove error for nullable types
                                ),
                                Container(
                                  //alignment: Alignment.center,
                                  child: Image.network(
                                    projectList[index]['image'] ?? '',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ); // return statement need ;(semicolon) at the end
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 100,
        ),
      ],
    ); // return statement need ; (semicolon)at the end
  }
}
