Function makePowerOf(int power) {
  return (int num) {
    int result = 1;

    for (int i = 0; i < power; i++) {
      result *= num;
    }

    return result;
  };
}

void main() {
  var squareFn = makePowerOf(2);
  var cubeFn = makePowerOf(3);
  var tenFn = makePowerOf(10);

  print('Square of 5: ${squareFn(5)}');
  print('Cube of 7: ${cubeFn(7)}');
  print('7 power for 10: ${tenFn(7)}');
  
}
