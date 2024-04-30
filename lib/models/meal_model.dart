enum Affordability { affordable, expensive, cheap }

enum Simplicity { simple, difficult,hard}

class Meal {
  final int id;
  final String title;
  final String imageURL;
  final List<String> categories;
  final Affordability affordability;
  final Simplicity simplicity = Simplicity.simple;
  final List<String> ingridents;

  Meal({required this.id, required this.title, required this.imageURL, required this.categories, required this.affordability,required this.ingridents});

  String get getSimplicityText {
    if(simplicity == Simplicity.hard) {
      return 'Very Hard';
    } else if(simplicity == Simplicity.difficult) {
      return 'Difficult';
    } else {
      return 'Easy';
    }
  }


  String get affordabilityText {
    if(affordability == Affordability.affordable) {
      return 'Very Affordable';
    } else if(affordability == Affordability.cheap) {
      return 'Very Cheap';
    } else {
      return 'Very Expensive';
    } 
  }

}
