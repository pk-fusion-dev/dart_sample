class Profile {
  String? name;
  String? bio;

  Profile(this.name, this.bio);

  void printProfile() {
    print("Name: ${name ?? "Unknown"}");
    print("Bio: ${bio ?? "None provided"}");
  }
}

void main() {
  //int age = null; // give error

  /*
  int productid = 20; // non-nullable
  int productid = null; // give error
  */

  // Declaring a nullable variable by using ?
  String? nickName;
  // Assigning John to name
  nickName = "John";
  // Assigning null to name
  nickName = null;
  print(nickName);

  // Declaring a nullable variable by using ?
  String? name;
  // Assigning John to name
  name = "John";
  // Assigning null to name
  name = null;
  // Checking if name is null using if statement
  if (name == null) {
    print("Name is null");
  }
  // Using ?? operator to assign a default value
  String name1 = name ?? "Stranger";
  print(name1);

  // Using ! operator to return null if name is null
  //var name2 = name!;
  //print(name2);

  // list of nullable ints
  List<int?> items = [1, 2, null, 4];
  print(items);

  // Passing null to printAddress
  printAddress(null); // Works

  // Create a profile with a name and bio
  Profile profile1 = Profile("John", "Software engineer and avid reader");
  profile1.printProfile();

  // Create a profile with only a name
  Profile profile2 = Profile("Jane", null);
  profile2.printProfile();

  // Create a profile with only a bio
  Profile profile3 = Profile(null, "Loves to travel and try new foods");
  profile3.printProfile();

  // Create a profile with no name or bio
  Profile profile4 = Profile(null, null);
  profile4.printProfile();
}

// address is a nullable string
void printAddress(String? address) {
  print(address);
}


/*

Note

How To Use Nullable Variables

You can use nullable variables in many ways. Some of them are shown below:

    You can use if statement to check whether the variable is null or not.
    You can use ! operator, which returns null if the variable is null.
    You can use ?? operator to assign a default value if the variable is null.


Advantage Of Null Safety

    Write safe code.
    Reduce the chances of application crashes.
    Easy to find and fix bugs in code.

Important Point In Dart Null Safety

    Null means no value.
    Common error in programming is caused due to null.
    Dart 2.12 introduced sound null Safety to solve null problems.
    Non-nullable type is confirmed never to be null.

Sometimes you heard word like NNBD. 
It is Non-Nullable By Default, which means you can’t assign null to a variable by default.

*/