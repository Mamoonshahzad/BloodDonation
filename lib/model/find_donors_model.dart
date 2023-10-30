class DonorsModel {
  String donorName;
  String donorLocation;
  String donorBloodType;
  String imageUrl;

  DonorsModel(
      {required this.donorName,
      required this.donorLocation,
      required this.donorBloodType,
      required this.imageUrl});
}

List<DonorsModel> donorsList = [
  DonorsModel(
      donorName: "Yassin Hussain",
      donorLocation: "Rawalpindi",
      donorBloodType: "A+",
      imageUrl: 'assets/images/ProfilePictures/pic1.png'),
  DonorsModel(
      donorName: "Qasim Khan",
      donorLocation: "Islamabad",
      donorBloodType: "B+",
      imageUrl: 'assets/images/ProfilePictures/pic2.png'),
  DonorsModel(
      donorName: "Umair Ahmad",
      donorLocation: "Karachi",
      donorBloodType: "O+",
      imageUrl: 'assets/images/ProfilePictures/pic3.png'),
  DonorsModel(
      donorName: "Rizwan Ullah",
      donorLocation: "Multan",
      donorBloodType: "AB+",
      imageUrl: 'assets/images/ProfilePictures/pic4.png'),
  DonorsModel(
      donorName: "Hamza Shareef",
      donorLocation: "KPK",
      donorBloodType: "A-",
      imageUrl: 'assets/images/ProfilePictures/pic5.png'),
];
