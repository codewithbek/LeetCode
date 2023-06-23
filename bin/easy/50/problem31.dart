// * 412. Fizz Buzz

List<String> fizzBuzz(int n) {
  List<String> answers = [];
  for (var i = 1; i <= n; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      answers.add("FizzBuzz");
    } else if (i % 3 == 0) {
      answers.add('Fizz');
    } else if (i % 5 == 0) {
      answers.add("Buzz");
    } else {
      answers.add(i.toString());
    }
  }
  return answers;
}
