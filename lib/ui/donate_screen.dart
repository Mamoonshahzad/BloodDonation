import 'package:blood_donation_app/utils/app_urls.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:blood_donation_app/widgets/donate_widget.dart';
import 'package:blood_donation_app/widgets/reusable_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateScreen extends StatelessWidget {
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Donate Screen",
          style: GoogleFonts.poppins(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              const SizedBox(height: 22),
              SizedBox(
                width: Get.width * .8,
                height: Get.height * .15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/images/ProfilePictures/pic1.png',
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 14),
                        Text('Qasim Khan',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            )),
                        Row(
                          children: [
                            Text('Contact:',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500)),
                            Text(' 03001234567',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400))
                          ],
                        ),
                        const SizedBox(height: 14),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: mainColor),
                          child: Center(
                            child: Text(
                              'Call Recipient',
                              style: GoogleFonts.poppins(
                                  color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),
              Container(
                width: Get.width * 8,
                height: Get.height * .4,
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 2)
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color.fromRGBO(236, 83, 83, 0.7647058823529411)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    children: [
                      Text(
                        'Request Details',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Blood Type: ',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                          Stack(
                            children: [
                              Image.asset(
                                'assets/icons/BloodDrop.png',
                                width: 50,
                                height: 50,
                                color: Colors.white,
                              ),
                              Positioned(
                                  top: 20,
                                  left: 14,
                                  child: Text(
                                    'A+',
                                    style:
                                        GoogleFonts.poppins(color: mainColor),
                                  ))
                            ],
                          )
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Location: ',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                          const Text(
                            'Rawalpindi',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      const Divider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hospital: ',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                          const Text(
                            'City Hospital',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          )
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),

              // DonateContainer(
              //     title: 'Recipient Name',
              //     text: 'Qasim Khan',
              //     icon: Icons.person),
              // const SizedBox(height: 22),
              // DonateContainer(
              //     title: 'Recipient Location',
              //     text: 'Rawalpindi',
              //     icon: Icons.location_on_outlined),
              // const SizedBox(height: 22),
              // DonateContainer(
              //     title: 'Donation Center',
              //     text: 'City Hospital',
              //     icon: Icons.local_hospital),
              // const SizedBox(height: 22),
              // DonateContainer(
              //   title: 'Contact No',
              //   text: '030012345678',
              //   icon: Icons.phone,
              // ),
              const SizedBox(height: 33),
            ],
          ),
        ),
      ),
    );
  }
}
