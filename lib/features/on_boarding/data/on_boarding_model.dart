class OnBoardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnBoardingModel(
      {required this.imagePath, required this.title, required this.subTitle});

  static List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_1.png',
        title: 'Confidence in your words',
        subTitle:
            'With conversation-based learning,\n you\'ll be talking from lesson one'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_2.png',
        title: 'Take your time to learn',
        subTitle:
            'Develop a habit of learning and\n make it a part of your daily routine'),
    OnBoardingModel(
        imagePath: 'assets/images/onboarding_3.png',
        title: 'The lessons you need to learn',
        subTitle: 'Using a variety of learning styles to learn\n and retain')
  ];
}
