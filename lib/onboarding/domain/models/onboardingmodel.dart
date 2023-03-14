class Onboard {
  final String image, title, description;
  const Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  const Onboard(
      image: r'lib\onboarding\assets\images\svgtest1.svg',
      title: 'Lorem ipsum dolor sit amet',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,'),
  const Onboard(
      image: r'lib\onboarding\assets\images\svgtest2.svg',
      title: 'Lorem ipsum dolor sit amet',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,'),
  const Onboard(
      image: r'lib\onboarding\assets\images\svgtest3.svg',
      title: 'Lorem ipsum dolor sit amet',
      description:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,'),
];
