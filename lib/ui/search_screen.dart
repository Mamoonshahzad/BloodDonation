import 'package:blood_donation_app/ui/profile_screen.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'donation_requests.dart';
import 'home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _selectedIndex = 0;
  bool isTapped = false;
  void toggleColors() {
    setState(() {
      isTapped = false;
    });
  }

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isTapped ? Colors.red : Colors.white;
    Color textColor = isTapped ? Colors.white : Colors.black;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Search Screen"),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 48,
                        width: 260,
                        child: ReUsableTextField(
                          leadingIcon: Icons.search,
                          hintText: 'Search',
                          controller: _searchController,
                        ),
                      ),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(
                          "assets/icons/filtering.png",
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 29),
                Container(
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                            .withOpacity(0.1), // Color of the shadow
                        spreadRadius: 3, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Filters",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                      ExpansionTile(
                        title: Text("Blood Type"),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "A-"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "A+"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "B-"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "B+"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "O-"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "O+"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "AB-"),
                                BloodTypeContainer(
                                    initialColor: Colors.black12,
                                    bloodGroup: "AB+")
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                      ExpansionTile(
                        title: Text("Location"),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Rawalpindi"),
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Islamabad"),
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "DIKhan")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Lahore"),
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Multan"),
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Karachi")
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                      ExpansionTile(
                        title: Text("Blood Bank"),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "Lahore Blood Bank"),
                                LocationContainer(
                                    basicColor: Colors.black12,
                                    location: "GCU Blood Bank")
                              ],
                            ),
                          )
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, // Set the current selected index
          onTap: (int index) {
            if (index == 0) {
              Get.to(const HomeScreen());
            } else if (index == 1) {
              Get.to(const SearchScreen());
            } else if (index == 2) {
              Get.to(const DonationRequestsScreen());
            } else if (index == 3) {
              Get.to(const ProfileScreen());
            }
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.red,
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
                color: Colors.red,
              ),
              label: "Requests",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.red,
              ),
              label: "Profile",
            ),
          ],
        ));
  }
}

class BloodTypeContainer extends StatefulWidget {
  final Color initialColor;
  final String bloodGroup;
  const BloodTypeContainer(
      {super.key, required this.initialColor, required this.bloodGroup});

  @override
  State<BloodTypeContainer> createState() => _BloodTypeContainerState();
}

class _BloodTypeContainerState extends State<BloodTypeContainer> {
  late Color backgroundColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = widget.initialColor;
  }

  void toggleColor() {
    setState(() {
      backgroundColor = backgroundColor == widget.initialColor
          ? Colors.red
          : widget.initialColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleColor,
      child: Container(
        width: 45,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: backgroundColor,
        ),
        child: Center(
          child: Text(widget.bloodGroup),
        ),
      ),
    );
  }
}

class LocationContainer extends StatefulWidget {
  final Color basicColor;
  final String location;
  const LocationContainer(
      {super.key, required this.basicColor, required this.location});

  @override
  State<LocationContainer> createState() => _LocationContainerState();
}

class _LocationContainerState extends State<LocationContainer> {
  late Color backgroundColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backgroundColor = widget.basicColor;
  }

  void toggleColor() {
    setState(() {
      backgroundColor =
          backgroundColor == widget.basicColor ? Colors.red : widget.basicColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleColor,
      child: Container(
        // width: 45,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: backgroundColor,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Text(widget.location),
          ),
        ),
      ),
    );
  }
}
