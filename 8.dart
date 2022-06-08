void main() {
  AdminUser adm = new AdminUser();
  adm.email = "admin@mail.ru";
  GeneralUser vas = new GeneralUser();
  vas.email = "vasya@mail.ru";
  UserManager data = UserManager();
  data.addUser(adm);
  data.addUser(vas);
  print(data.showUsers());
}

class User {
  String? email;
}

class AdminUser extends User with MailInfo {}

class GeneralUser extends User {}

mixin MailInfo on User {
  String? getMailSystem() {
    if (email == null) {
      return "error, Your mail is null";
    }
    return email!.split("@")[1];
  }
}

class UserManager<T extends User> {
  List<T> users = [];
  void addUser(T user) {
    users.add(user);
  }

  void deleteUser(T user) {
    users.remove(user);
  }

  List<String?> showUsers() {
    return users.map((user) {
      if (user is AdminUser) {
        return user.getMailSystem();
      } else {
        return user.email;
      }
    }).toList();
  }
}
