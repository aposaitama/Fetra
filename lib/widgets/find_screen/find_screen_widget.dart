import 'package:flutter/material.dart';

class Ride {
  final String travelDate;
  final String destinationAddress;
  final String sourceAddress;
  final String carBrand;
  final String driverName;
  final int price;
  final String isSpace;
  final String driverRating;

  Ride({
    required this.travelDate,
    required this.destinationAddress,
    required this.sourceAddress,
    required this.carBrand,
    required this.driverName,
    required this.price,
    required this.isSpace,
    required this.driverRating,
  });
}

class FindListWidget extends StatefulWidget {
  FindListWidget({super.key});

  @override
  State<FindListWidget> createState() => _FindListWidgetState();
}

class _FindListWidgetState extends State<FindListWidget> {
  final _rides = [
    Ride(
      travelDate: '29.07',
      destinationAddress: 'Київ',
      sourceAddress: 'Одеса',
      carBrand: 'Toyota',
      driverName: 'Олександр',
      price: 150,
      isSpace: 'Місць немає',
      driverRating: '4.8',
    ),
    Ride(
      travelDate: '30.07',
      destinationAddress: 'Львів',
      sourceAddress: 'Київ',
      carBrand: 'Honda',
      driverName: 'Іван',
      price: 200,
      isSpace: 'Є місця',
      driverRating: '4.5',
    ),
    Ride(
      travelDate: '31.07',
      destinationAddress: 'Одеса',
      sourceAddress: 'Київ',
      carBrand: 'BMW',
      driverName: 'Дмитро',
      price: 300,
      isSpace: 'Є місця',
      driverRating: '4.9',
    ),
    Ride(
      travelDate: '29.07',
      destinationAddress: 'Харків',
      sourceAddress: 'Дніпро',
      carBrand: 'Mercedes',
      driverName: 'Сергій',
      price: 250,
      isSpace: 'Є місця',
      driverRating: '4.7',
    ),
    Ride(
      travelDate: '29.07',
      destinationAddress: 'Дніпро',
      sourceAddress: 'Черкаси',
      carBrand: 'Ford',
      driverName: 'Віктор',
      price: 180,
      isSpace: 'Є місця',
      driverRating: '4.6',
    ),
  ];

  var _filteredRides = <Ride>[];

  final _searchController = TextEditingController();

  void _searchRide() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredRides = _rides.where((Ride rides) {
        return rides.destinationAddress
            .toLowerCase()
            .contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredRides = _rides;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredRides = _rides;
    _searchController.addListener(_searchRide);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: EdgeInsets.only(top: 70),
          itemCount: _filteredRides.length,
          itemExtent: 200,
          itemBuilder: (BuildContext context, int index) {
            final ride = _filteredRides[index];
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
                                  ride.travelDate,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ride.sourceAddress,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ride.destinationAddress,
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Text(
                              ride.isSpace,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              ride.carBrand,
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
                                  ride.driverName,
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  ride.driverRating,
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              labelText: 'Destination Address',
              filled: true,
              border: OutlineInputBorder(),
              fillColor: Colors.white.withAlpha(235),
            ),
          ),
        )
      ],
    );
  }
}
