mixin CanLogin {
  void login() {
    print('Connexion réussie');
  }
}

mixin CanSendNotification {
  void sendNotification() {
    print('Notification envoyée');
  }
}

mixin CanGenerateReport {
  void generateReport() {
    print('Rapport généré');
  }
}

class Admin with CanLogin, CanSendNotification, CanGenerateReport {}

void main() {
  Admin admin = Admin();

  admin.login();
  admin.sendNotification();
  admin.generateReport();
}
