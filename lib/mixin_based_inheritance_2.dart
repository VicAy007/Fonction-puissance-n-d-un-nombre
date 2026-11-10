class User {
  String name;

  User(this.name);

  void displayName() {
    print('Nom : $name');
  }
}

mixin CanSendNotification {
  void sendNotification() {
    print('Notification envoyée');
  }
}

class Admin extends User with CanSendNotification {
  Admin(String name) : super(name);
}

mixin CanTrackActivity {
  int activityCount = 0;

  void recordActivity() {
    activityCount++;
    print('Nombre d\'activités : $activityCount');
  }
}

class Seller with CanTrackActivity {}

void main() {
  Admin admin = Admin('Victor');

  admin.displayName();
  admin.sendNotification();

  print('-------------------------\n\n');

  Seller seller = Seller();

  seller.recordActivity();
  seller.recordActivity();
  seller.recordActivity();
}
