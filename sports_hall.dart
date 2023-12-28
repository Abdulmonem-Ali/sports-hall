// import 'dart:core';

// ignore_for_file: unused_local_variable

import 'dart:io';

class Subscripers {
  String name = "_";
  int id = -1;
  List subids = [];
  Subscripers({required this.name, required this.id, required this.subids}) {
    // while (true) {
    // int i = 1;
    print("please enter the name of the subscriper:");
    name = stdin.readLineSync()!;
    subids.add(this);
    id = subids.length;
    print("you have added a new subscriper with a:");
    print("name: ${name}\nid: ${id}");

    // print("do you want to add any subscripers?Y/N");
    // String chek = stdin.readLineSync()!;
    // if (chek.toLowerCase()[0] == "y") {
    //   i++;
    //   continue;
    // } else {
    //   break;
    // }
    // }
  }
}

class Teams {
  String name = "";
  List teamList = [];
  Map teamsMap = {};

  Subscripers subscripers = Subscripers(name: "", id: -1, subids: []);

  Teams({required this.name, required this.teamList}) {
    print("please enter the name of the team:\n");
    name = stdin.readLineSync()!;
    print("\n\nplease enter the id's of the 2 team members:");
    for (var i = 0; i < 2; i++) {
      int s = int.parse(stdin.readLineSync()!);
      teamList.add(subscripers.subids[s]);
    }
    teamList.forEach((item) {
      teamsMap[item[subscripers.id]] = {
        'name': item[name],
        'details': item[teamList]
      };
    });

    print("you have added a team $name successfully.\n\n");
  }

  // void showTheTeams() {
  //   print("the teams in your system are:");
  //   teamsMap.forEach((key, value) {
  //     print(key);
  //     print(value);
  //   });
  // }
}

void main() {
//   var now = DateTime.now();
//   print(now);
// // For example, to create a DateTime object representing the 7th of September 2017, 5:30pm
//   var dentistAppointment = DateTime(2017, 9, 7, 17, 30);
//   print(dentistAppointment);
  List<Subscripers> subids = [];
  Map teamsMap = {};
  String name = "";
  int id = -1;

  void addNewSubscriper() {
    Subscripers s = Subscripers(name: name, id: id, subids: subids);
  }

  void showTheSubscripers() {
    print("your subscripers are:");
    subids.forEach((var i) => print("${i.name} and his id is ${i.id}"));
  }

  void subscriptions() {}

  void addTeam() {
    Teams teams = Teams(name: name, teamList: []);
  }

  void showTeams() {
    print("the teams in your system are:");
    teamsMap.forEach((key, value) {
      print(key);
      print(value);
    });

    void deleteTeam() {
      print("");
    }
  }

  while (true) {
    print("\n\nplease inter the number of the operation that you want to do:");
    print("1.add new subscripers.");
    print("2.show the subscripers.");
    print("3.show the subscriptions.");
    print("4.add team.");
    print("5.delete team.");
    print("6.show the teams.");

    String answer = stdin.readLineSync()!;
    switch (answer) {
      case "1":
        addNewSubscriper();
        break;
      case "2":
        showTheSubscripers();
        break;
      case "3":
        break;
      case "4":
        addTeam();
        break;
      case "5":
        break;
      case "6":
        showTeams();
        break;
      default:
        print("please choose a correct number.\n\n");
    }
  }
}


// print('Enter a key:');
//  String key = stdin.readLineSync();
 
//  print('Enter a value:');
//  String value = stdin.readLineSync();
 
//  Map<String, String> userInput = {};
//  userInput[key] = value;
 
//  print('Your input: $userInput');