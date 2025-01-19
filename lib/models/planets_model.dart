// Solar System Model
import '/core/constants/app_assets.dart';
import '/core/constants/app_model_images.dart';

class PlanetsModel {
  final String name;
  final String image;
  final String model;
  final String title;
  final String about;
  final int distanceFromSun;
  final double lengthOfDay;
  final double orbitalPeriod;
  final double radius;
  final String mass;
  final double gravity;
  final String surfaceArea;

  PlanetsModel({
    required this.name,
    required this.image,
    required this.model,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });


// Static list of celestial bodies
  static List<PlanetsModel> planets = [
    PlanetsModel(
      name: "Sun",
      image: AppAssets.sun,
      model: AppModelsImages.sun,
      title: "The Sun: Our Solar System's Star",
      about: "The Sun is the heart of our solar system, a massive ball of burning gas that supports life on Earth.",
      distanceFromSun: 0,
      lengthOfDay: 0.0,
      orbitalPeriod: 0.0,
      radius: 695700.0,
      mass: "1.989 × 10³⁰",
      gravity: 274.0,
      surfaceArea: "6.09 × 10¹²",
    ),
    PlanetsModel(
      name: "Mercury",
      image: AppAssets.mercury,
      model: AppModelsImages.mercury,
      title: "Mercury: The Closest Planet",
      about: "The smallest planet in our solar system and closest to the Sun, Mercury is only slightly larger than Earth's Moon.",
      distanceFromSun: 57909227,
      lengthOfDay: 1407.6,
      orbitalPeriod: 0.24,
      radius: 2439.7,
      mass: "3.301 × 10²³",
      gravity: 3.7,
      surfaceArea: "7.48 × 10⁷",
    ),
    PlanetsModel(
      name: "Venus",
      image: AppAssets.venus,
      model: AppModelsImages.venus,
      title: "Venus: Earth's Toxic Twin",
      about: "Venus is often referred to as Earth's twin due to its similar size and proximity to the Sun, but its atmosphere is toxic.",
      distanceFromSun: 108209072,
      lengthOfDay: 5832.2,
      orbitalPeriod: 0.62,
      radius: 6051.8,
      mass: "4.867 × 10²⁴",
      gravity: 8.87,
      surfaceArea: "4.60 × 10⁸",
    ),
    PlanetsModel(
      name: "Earth",
      image: AppAssets.earth,
      model: AppModelsImages.earth,
      title: "Earth: Our Blue Marble",
      about: "Earth is the only known planet in the universe to harbor life, with vast oceans and diverse ecosystems.",
      distanceFromSun: 149598026,
      lengthOfDay: 23.93,
      orbitalPeriod: 1.0,
      radius: 6371.0,
      mass: "5.972 × 10²⁴",
      gravity: 9.81,
      surfaceArea: "5.10 × 10⁸",
    ),
    PlanetsModel(
      name: "Mars",
      image: AppAssets.mars,
      model: AppModelsImages.mars,
      title: "Mars: The Red Planet",
      about: "Mars, often called the Red Planet due to its reddish appearance, has the tallest volcano and deepest canyon in the solar system.",
      distanceFromSun: 227943824,
      lengthOfDay: 24.62,
      orbitalPeriod: 1.88,
      radius: 3389.5,
      mass: "6.39 × 10²³",
      gravity: 3.71,
      surfaceArea: "1.45 × 10⁸",
    ),
    PlanetsModel(
      name: "Jupiter",
      image: AppAssets.jupiter,
      model: AppModelsImages.jupiter,
      title: "Jupiter: The Giant Planet",
      about: "Jupiter is the largest planet in our solar system and is known for its Great Red Spot, a persistent storm larger than Earth.",
      distanceFromSun: 778340821,
      lengthOfDay: 9.93,
      orbitalPeriod: 11.86,
      radius: 69911.0,
      mass: "1.898 × 10²⁷",
      gravity: 24.79,
      surfaceArea: "6.14 × 10¹⁰",
    ),
    PlanetsModel(
      name: "Saturn",
      image: AppAssets.saturn,
      model: AppModelsImages.saturn,
      title: "Saturn: The Ringed Planet",
      about: "Saturn is famous for its prominent ring system, composed mostly of ice particles, along with smaller amounts of rocky debris.",
      distanceFromSun: 1426666422,
      lengthOfDay: 10.7,
      orbitalPeriod: 29.46,
      radius: 58232.0,
      mass: "5.683 × 10²⁶",
      gravity: 10.44,
      surfaceArea: "4.27 × 10¹⁰",
    ),
    PlanetsModel(
      name: "Uranus",
      image: AppAssets.uranus,
      model: AppModelsImages.uranus,
      title: "Uranus: The Ice Giant",
      about: "Uranus is a unique planet that rotates on its side, and it has a blue-green color due to methane in its atmosphere.",
      distanceFromSun: 2870658186,
      lengthOfDay: 17.24,
      orbitalPeriod: 84.01,
      radius: 25362.0,
      mass: "8.681 × 10²⁵",
      gravity: 8.69,
      surfaceArea: "8.12 × 10⁹",
    ),
    PlanetsModel(
      name: "Neptune",
      image: AppAssets.neptune,
      model: AppModelsImages.neptune,
      title: "Neptune: The Windy Planet",
      about: "Neptune is the farthest planet from the Sun and is known for its deep blue color and extremely strong winds.",
      distanceFromSun: 4498396441,
      lengthOfDay: 16.11,
      orbitalPeriod: 164.79,
      radius: 24622.0,
      mass: "1.024 × 10²⁶",
      gravity: 11.15,
      surfaceArea: "7.64 × 10⁹",
    ),
  ];
}
