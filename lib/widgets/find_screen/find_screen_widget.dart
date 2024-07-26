import 'package:flutter/material.dart';

class FindListWidget extends StatelessWidget {
  const FindListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 200,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(3, 37, 65, 1),
                border: Border.all(color: Colors.black.withOpacity(0.2)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Travel date',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Point A',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Point B',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Text(
                          'No space',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'IsCAr',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 30),
                        Icon(
                          Icons.account_box,
                          color: Colors.white,
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Text(
                              'name',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'Rating',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
