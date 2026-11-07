class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height) {
    if (width < 0 && height < 0) {
      throw ArgumentError(
        'L\'une des valeurs du coté du rectangle ne peut être négative',
      );
    }
  }

  double get area => width * height;

  set area(double areaValue) {
    width = areaValue / height;
  }

  double get perimeter => 2 * (width + height);

  set perimeter(double perimeterValue) {
    if (perimeterValue < 0) {
      throw ArgumentError('La valeur du périmètre ne peut être négative');
    }
    width = perimeterValue / 2 - height;
  }
}

void main() {
  Rectangle rectangle = Rectangle(5, 4);

  print('Area: ${rectangle.area}');
  print('Height: ${rectangle.height}');
  print('Width: ${rectangle.width}');
  print('Perimeter: ${rectangle.perimeter}');

  print('---------- Modification de l\'aire');
  rectangle.area = 40.0;
  print('Area: ${rectangle.area}');
  print('Height: ${rectangle.height}');
  print('Width: ${rectangle.width}');
  print('Perimeter: ${rectangle.perimeter}');
}
