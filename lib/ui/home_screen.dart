import 'package:blood_donation_app/ui/assistant_screen.dart';
import 'package:blood_donation_app/ui/campaign_screen.dart';
import 'package:blood_donation_app/ui/donation_requests.dart';
import 'package:blood_donation_app/ui/find_donors_screen.dart';
import 'package:blood_donation_app/ui/order_blood.dart';
import 'package:blood_donation_app/ui/profile_screen.dart';
import 'package:blood_donation_app/ui/report_screen.dart';
import 'package:blood_donation_app/ui/search_screen.dart';
import 'package:blood_donation_app/widgets/constant_colors.dart';
import 'package:blood_donation_app/widgets/home_screen_grid.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../utils/app_urls.dart';
import 'package:google_fonts/google_fonts.dart';

import 'donates_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  final List<String> imageList = [
    'assets/images/HomePage/donr.jpg',
    'assets/images/HomePage/connectedblood.jpg',
    'assets/images/HomePage/womandonating.jpg',
    'assets/images/HomePage/worldblood.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              "assets/icons/fourdots.png",
              width: 27,
              color: mainColor,
            ),
          );
        }),
        actions: [
          IconButton(
            icon: Image.asset("assets/icons/bell.png"),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: mainColor,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              accountName: Text("Mamoon Shahzad",
                  style: GoogleFonts.poppins(color: Colors.white)),
              accountEmail: Text("mamoonsherani@gmail.com",
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 12)),
              currentAccountPicture: const CircleAvatar(
                child: ClipOval(
                    child: Image(
                  image: AssetImage(
                    'assets/images/ProfilePictures/pic1.png',
                  ),
                )),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(const ProfileScreen());
              },
              child: ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  "Profile",
                  style: GoogleFonts.poppins(color: Colors.white),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: Text(
                "Cart",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.message_outlined),
              title: Text(
                "FAQs",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.quick_contacts_mail),
              title: Text(
                "Contact Us",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(
                "Log Out",
                style: GoogleFonts.poppins(color: Colors.white),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            CarouselSlider(
              items: imageList.map((imagePath) {
                return SizedBox(
                  width: Get.size.width * .9,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: Get.size.height * 0.22,
                pauseAutoPlayOnTouch: true,
                // autoPlay: true,
                aspectRatio: 1,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList.map((url) {
                int index = imageList.indexOf(url);
                return Container(
                  width: _currentIndex == index ? 15.0 : 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentIndex == index ? Colors.red : Colors.grey,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * .9,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(const FindDonorsScreen()),
                        child: const HomeScreenGrid(
                            gridText: 'Find Donor',
                            gridIcon: 'assets/icons/Search Donors.svg'),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(const DonatesScreen()),
                        child: const HomeScreenGrid(
                            gridText: 'Donates',
                            gridIcon: 'assets/icons/Donates.svg'),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(const OrderBlood()),
                        child: const HomeScreenGrid(
                            gridText: 'Order Blood',
                            gridIcon: 'assets/icons/Order Blood.svg'),
                      )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(const AssistantScreen()),
                        child: const HomeScreenGrid(
                            gridText: 'Assistant',
                            gridIcon: 'assets/icons/Assistant.svg'),
                      ),
                      GestureDetector(
                        onTap: () => Get.to(const ReportScreen()),
                        child: const HomeScreenGrid(
                            gridText: 'Report',
                            gridIcon: 'assets/icons/Report.svg'),
                      ),
                      GestureDetector(
                        onTap: () => const CampaignScreen(),
                        child: const HomeScreenGrid(
                            gridText: 'Campaign',
                            gridIcon: 'assets/icons/Campaign.svg'),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 18),
            Container(
              width: Get.width * .9,
              alignment: Alignment.centerLeft,
              child: Text(
                "Donation Request",
                style: GoogleFonts.poppins(
                    fontSize: 17, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 18),
            Container(
              width: Get.width * .9,
              child: Card(
                child: Container(
                  color: Colors.white12,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 14, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align text to the left
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Mamoon Shahzad",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 12),
                              Text(
                                "Location",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(height: 6),
                              Text(
                                "Islamabad Capital",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "5 min Ago",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 50,
                                height: 60,
                                child: Image.asset(
                                  "assets/images/Logo.png",
                                  color: Colors.red,
                                ),
                              ),
                              const Text(
                                "Donate",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _selectedIndex, // Set the current selected index
      //   onTap: (int index) {
      //     if (index == 0) {
      //       Get.to(const HomeScreen());
      //     } else if (index == 1) {
      //       Get.to(const SearchScreen());
      //     } else if (index == 2) {
      //       Get.to(const DonationRequestsScreen());
      //     } else if (index == 3) {
      //       Get.to(const ProfileScreen());
      //     }
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      //   selectedItemColor: Colors.red,
      //   unselectedItemColor: Colors.grey,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.red,
      //       ),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.red,
      //       ),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.add_box_outlined,
      //         color: Colors.red,
      //       ),
      //       label: "Requests",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person,
      //         color: Colors.red,
      //       ),
      //       label: "Profile",
      //     ),
      //   ],
      // )
    );
  }
}
