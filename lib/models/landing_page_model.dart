class Model {
  final int id;
  final String image;
  final String title;
  final String description;
  final String buttonText;

  Model(
      {required this.id,
      required this.image,
      required this.title,
      required this.description,
      required this.buttonText});
}

class LandingPageModel {
  static List<Model> modelList = [
    Model(
        id: 0,
        image: 'lib/assets/cat-1.png',
        title: 'Your One-Stop Pet Shop Experience! 1',
        description:
            'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
        buttonText: 'Next'),
    Model(
        id: 1,
        image: 'lib/assets/cat-1.png',
        title: 'Your One-Stop Pet Shop Experience! 2',
        description:
            'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
        buttonText: 'Next'),
    Model(
        id: 2,
        image: 'lib/assets/cat-1.png',
        title: 'Your One-Stop Pet Shop Experience! 3',
        description:
            'Connect with 5-star pet caregivers near you who offer boarding, walking, house sitting or day care.',
        buttonText: 'Get Started'),
  ];
}
