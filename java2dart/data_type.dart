void main() {
  //list
  List<String> names = ['John', 'Paul', 'George', 'Ringo'];
  names.forEach(print);
  names.insert(2, "Ringo");  
  names.forEach(print);

  //map
  Map<String, int> ages = {'John': 30, 'Paul': 28, 'George': 27, 'Ringo': 25};
  print(ages.keys);
  print(ages.values);
  ages.forEach((name, age) => print('$name is $age years old'));
  ages['Ringo'] = 26;
  ages.forEach((name, age) => print('$name is $age years old'));

}