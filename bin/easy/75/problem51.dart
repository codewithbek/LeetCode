// * 2788. Split Strings by Separator
List<String> splitWordsBySeparator(List<String> words, String separator) {
  List<String> result = [];

  for (var element in words) {
    if (element.contains(separator)) {
      result.addAll(element.split(separator));
    } else {
      result.add(element);
    }
  }
  result.removeWhere((element) => element.isEmpty);

  return result;
}
