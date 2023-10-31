import 'dart:io';
import 'package:blood_donation_app/controller/image_picker_controller.dart';
import 'package:blood_donation_app/utils/app_urls.dart';
import 'package:blood_donation_app/widgets/edit_profile_fields.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

import '../widgets/constant_colors.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              if (imageFile != null)
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                            image: FileImage(imageFile!), fit: BoxFit.cover)))
              else
                Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/ProfilePictures/pic1.png'),
                            fit: BoxFit.fill))),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(color: Colors.black26, blurRadius: 10)
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    color: mainColor),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                  child: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/icons/camera.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    onTap: () =>
                                        getImage(source: ImageSource.camera),
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      'assets/icons/picture.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    onTap: () =>
                                        getImage(source: ImageSource.gallery),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Edit Picture',
                      style: GoogleFonts.poppins(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              editProfileFields(title: 'Name', hintText: "Enter New Name"),
              const SizedBox(height: 20),
              editProfileFields(
                  title: 'Location', hintText: 'Enter New Location'),
              const SizedBox(height: 20),
              editProfileFields(
                  title: 'Contact', hintText: 'Enter New Contact'),
              const SizedBox(height: 20),
              editProfileFields(
                  title: 'Old Password', hintText: 'Enter Old Password'),
              const SizedBox(height: 20),
              editProfileFields(
                  title: 'New Password', hintText: 'Enter New Password'),
              const SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: mainColor),
                  onPressed: () {},
                  child: Text('Update',
                      style: GoogleFonts.poppins(color: Colors.white)))
            ],
          ),
        ),
      ),
    );
  }

  void getImage({required ImageSource source}) async {
    final file = await ImagePicker().pickImage(source: source);
    if (file?.path != null) {
      setState(() {
        imageFile = File(file!.path);
      });
    }
  }
}
