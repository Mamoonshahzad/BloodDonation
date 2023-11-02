import 'package:blood_donation_app/model/find_donors_model.dart';
import 'package:blood_donation_app/ui/donors_profile_screen.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/profile_screen_button.dart';

class FindDonorsScreen extends StatefulWidget {
  const FindDonorsScreen({super.key});

  @override
  State<FindDonorsScreen> createState() => _FindDonorsScreenState();
}

class _FindDonorsScreenState extends State<FindDonorsScreen> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Find Donors Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
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
            const SizedBox(height: 20),
            SizedBox(
              height: Get.height * .7,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  DonorsModel donorsModel = donorsList[index];
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Showing the bottom sheet when any item is tapped
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                  width: Get.width,
                                  child: Column(
                                    children: [
                                      Image.asset(donorsModel.imageUrl,
                                          width: 150,
                                          height: 150,
                                          fit: BoxFit.fill),
                                      const SizedBox(height: 10),
                                      Text(donorsModel.donorName,
                                          style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                              Icons.location_on_outlined),
                                          Text(donorsModel.donorLocation,
                                              style: GoogleFonts.poppins(
                                                  fontSize: 15)),
                                        ],
                                      ),
                                      Container(
                                        height: 75,
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Image.asset(
                                                      'assets/icons/HandDrop.png',
                                                      width: 35,
                                                      height: 35,
                                                      fit: BoxFit.fill,
                                                    ),
                                                    const Text(
                                                        '6 Times donated')
                                                  ]),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Image.asset(
                                                    'assets/images/Logo.png',
                                                    color: mainColor,
                                                    width: 25,
                                                    height: 30,
                                                    fit: BoxFit.fill,
                                                  ),
                                                  const Text('Blood type AB+')
                                                ],
                                              )
                                            ]),
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          profileScreenButton(
                                              iconImage:
                                                  'assets/icons/Person Call.png',
                                              btnText: 'CallNow',
                                              btnColor: mainColor),
                                          profileScreenButton(
                                              iconImage:
                                                  'assets/icons/request.png',
                                              btnText: 'Request',
                                              btnColor: Colors.blueGrey)
                                        ],
                                      )
                                    ],
                                  ));
                            },
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black26, blurRadius: 10.0)
                            ],
                            shape: BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white,
                          ),
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(donorsModel.imageUrl),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(donorsModel.donorName),
                                  Text(donorsModel.donorLocation),
                                ],
                              ),
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/icons/BloodDrop.png',
                                    width: 50,
                                    height: 50,
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 14,
                                    child: Text(donorsModel.donorBloodType),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 22),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
