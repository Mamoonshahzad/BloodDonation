import 'package:blood_donation_app/model/find_donors_model.dart';
import 'package:blood_donation_app/ui/donors_profile_screen.dart';
import 'package:blood_donation_app/widgets/reusable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        title: const Text('Donors Profile'),
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
            Container(
              height: Get.height * .7,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  DonorsModel donorsModel = donorsList[index];
                  return GestureDetector(
                    onTap: () =>
                        Get.to(DonorsProfileScreen(donorsModel: donorsModel)),
                    child: Container(
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black26, blurRadius: 10.0)
                          ],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          color: Colors.white),
                      height: 100,
                      width: MediaQuery.of(context).size.width * .9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(donorsModel.imageUrl),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(donorsModel.donorName),
                              Text(donorsModel.donorLocation)
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
                                  child: Text(donorsModel.donorBloodType))
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
