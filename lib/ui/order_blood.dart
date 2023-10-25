import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderBlood extends StatefulWidget {
  const OrderBlood({super.key});

  @override
  State<OrderBlood> createState() => _OrderBloodState();
}

class _OrderBloodState extends State<OrderBlood> {
  final TextEditingController locationController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Order Blood"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              CustomTextField(
                  leadingIcon: Icons.location_on,
                  followUpText: "City",
                  controller: locationController),
              const SizedBox(height: 20),
              CustomTextField(
                  leadingIcon: Icons.warehouse_outlined,
                  followUpText: "Hospital",
                  controller: locationController),
              const SizedBox(height: 20),
              CustomTextField(
                  leadingIcon: Icons.bloodtype,
                  followUpText: "Blood",
                  controller: locationController),
              const SizedBox(height: 20),
              CustomTextField(
                  leadingIcon: Icons.phone,
                  followUpText: "Mobile",
                  controller: locationController),
              const SizedBox(height: 20),
              CustomTextField(
                  leadingIcon: Icons.note,
                  followUpText: "Add a note",
                  controller: locationController),
              const SizedBox(height: 80),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Image.asset(
                            'assets/images/SuccessCompleted.png', // Replace with your image path
                            fit: BoxFit.cover,
                          ),
                          actions: [
                            Column(
                              children: [
                                Text(
                                  "Your Order is Placed Successfully",
                                  style: GoogleFonts.poppins(color: textColor),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pop(); // Close the dialog
                                  },
                                  child: const Icon(Icons.arrow_back_outlined),
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: mainColor,
                  ),
                  child: Text(
                    'Request',
                    style: GoogleFonts.poppins(
                        color: Colors.white, // Button text color
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final IconData leadingIcon;
  final String followUpText;
  final TextEditingController controller;

  const CustomTextField({
    super.key,
    required this.leadingIcon,
    required this.followUpText,
    required this.controller,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 2))
            ]),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(widget.leadingIcon),
            ),
            Container(
              color: Colors.grey,
              width: 1,
              height: 50,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                controller: widget.controller,
                decoration: InputDecoration(
                    hintText: widget.followUpText,
                    hintStyle: GoogleFonts.poppins(color: textColor),
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
