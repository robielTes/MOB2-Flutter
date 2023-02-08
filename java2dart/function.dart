void main() {
  //function optional parameter
  name(String firstname, [lastname]) {
    return ('$firstname $lastname');
  }

  print(name('John', 'Doe'));
  print(name('Jane'));

  //function named parameter
  name2(String firstname, {lastname}) {
    return ('$firstname $lastname');
  }

  print(name2('luck', lastname: 'cage'));
  print(name2(lastname: 'cage','luck'));
  print(name2('philipe'));

  //function as default parameter
  name3(String firstname,{lastname='Doe'}) {
    return ('$firstname $lastname');
  }
  print(name3('John'));
  print(name3('Jane',lastname:'Doe'));
}
