import 'package:lorem_ipsum/lorem_ipsum.dart';

class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Find Blood Donors',
      image: 'assets/images/rafiki.svg',
      description: loremIpsum(words: 40)),
  OnboardingContent(
      title: 'Post Blood request',
      image: 'assets/images/bro.svg',
      description: loremIpsum(words: 40)),
];
