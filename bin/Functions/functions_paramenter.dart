//Use Of Positional Parameter
void printInfo(String name, String gender) {
  print("Hello $name your gender is $gender.");
}

//Providing Default Value On Positional Parameter
void defaultValue(String name, String gender, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $gender.");
}

//Use Of Named Parameter
void namedParam({String? name, String? gender}) {
  print("Hello $name your gender is $gender.");
}

void deviceInfo({os, version}) {
  print("Device os is $os with version $version");
}

//Use Of Required In Named Parameter
void requiredParam({required String name, required String gender}) {
  print("Hello $name your gender is $gender.");
}

//Use Of Optional Parameter
void optionalParam(String name, String gender, [String? title]) {
  print("Hello $title $name your gender is $gender.");
}

void main() {
  // passing values in wrong order
  printInfo("Male", "John");
  // passing values in correct order
  printInfo("John", "Male");

  defaultValue("John", "Male");
  defaultValue("John", "Male", "Mr.");
  defaultValue("Kavya", "Female", "Ms.");

  // you can pass values in any order in named parameters.
  namedParam(gender: "Male", name: "John");
  namedParam(name: "Sita", gender: "Female");
  namedParam(name: "Reecha", gender: "Female");
  namedParam(name: "Reecha", gender: "Female");
  namedParam(name: "Harry", gender: "Male");
  namedParam(gender: "Male", name: "Santa");

  deviceInfo(version: 13, os: 'android');

  requiredParam(name: "Jame", gender: "M");

  optionalParam("John", "Male");
  optionalParam("John", "Male", "Mr.");
  optionalParam("Kavya", "Female", "Ms.");
}
