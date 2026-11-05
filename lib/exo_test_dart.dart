/* Map<String, int> studentScores = {
  'Mona': 90,
  'Sarah': 50,
  'Vanessa': 30,
  'Baldé': 90,
};

void main() {
  var resultat = studentScores.entries.where((entry) => entry.key == 'Mona');

  //print(resultat.first.value);
  //print(resultat);

  var res = studentScores.entries.where((entry) => entry.value == 90);

  print(res.first.value);
}
 */

/* bool highScore(int num) {
  return num > 68;
}

void main() {
  var scores = [34, 32, 69, 45, 78, 98, 22];

  var highScores = scores.where(highScore);

  print('High scores: $highScores');

  var evenScores = scores.where((num) => num.isEven);
  print('Even scores: $evenScores');

  var oddScores = scores.where((num) {
    return num.isOdd;
  });
  print('Odd scores: $oddScores');

  print(68.isEven);
  print(73.isOdd);
} */

