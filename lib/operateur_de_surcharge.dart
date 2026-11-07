/* class Square {
  double side;

  Square(this.side);

  Square operator +(Square other) {
    return Square(side + (other.side));
  }
}

void main() {
  Square square = Square(5);
  Square square1 = Square(6);

  Square result = square1 + square;

  print(result.side);
}
 */

/* class Distance {
  double meters;

  Distance(this.meters) {
    if (meters < 0) {
      throw ArgumentError('Le metre ne peut être négatif');
    }
  }

  Distance operator +(Distance other) {
    return Distance(meters + (other.meters));
  }
}

void main() {
  Distance dis1 = Distance(5.0);
  Distance dis2 = Distance(6.0);
} */

class Vector {
  double x;
  double y;

  Vector(this.x, this.y);

  Vector operator +(Vector other) => Vector(x + other.x, y + other.y);

  Vector operator -(Vector other) => Vector(x - other.x, y - other.y);

  @override
  bool operator ==(Object other) {
    if (!(other is Vector)) {
      return false;
    }

    // Note that the cast is not needed here since the "is" check
    // has already been performed
    Vector otherVector = other;

    return x == otherVector.x && y == otherVector.y;
  }

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() {
    return "x: $x, y: $y";
  }
}

void main() {
  // Création de deux vecteurs
  Vector vector1 = Vector(5, 3);
  Vector vector2 = Vector(2, 4);

  // Addition
  Vector addition = vector1 + vector2;

  // Soustraction
  Vector subtraction = vector1 - vector2;

  // Comparaison
  Vector vector3 = Vector(5, 3);

  print(vector1 == vector3);

  // HashCode
  print(vector1.hashCode);
  print(vector3.hashCode);

  // Affichage
  print(vector1);
  print(vector2);
  print(addition);
  print(subtraction);
}
