import 'package:blood_donation_app/model/find_donors_model.dart';
import 'package:flutter/material.dart';

class DonorsProfileScreen extends StatelessWidget {
  const DonorsProfileScreen({super.key, required this.donorsModel});
  final DonorsModel donorsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(donorsModel.donorName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(donorsModel.imageUrl),
            ],
          ),
        ));
  }
}
