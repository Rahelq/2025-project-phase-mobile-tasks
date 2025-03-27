import 'package:flutter/material.dart';
import '../../data/models/user.dart';
import '../../data/services/api_services.dart';
import '../../data/services/storage_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  final StorageService storageService = StorageService();

  List<User> users = [];
  User? savedUser;
  bool isLoading = true;
  String errorMessage = "";

  @override
  void initState() {
    super.initState();
    fetchUsers();
    loadSavedUser();
  }

  Future<void> fetchUsers() async {
    try {
      List<User> fetchedUsers = await apiService.fetchUsers();
      setState(() {
        users = fetchedUsers;
        isLoading = false;
      });
    } catch (error) {
      setState(() {
        errorMessage = "No internet connection";
        isLoading = false;
      });
    }
  }

  Future<void> loadSavedUser() async {
    User? user = await storageService.getSavedUser();
    setState(() {
      savedUser = user;
    });
  }

  Future<void> saveUser(User user) async {
    await storageService.saveUser(user);
    loadSavedUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("User List & Storage")),
      body: Column(
        children: [
          if (savedUser != null)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Last Saved: ${savedUser!.name} - ${savedUser!.email}",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          if (isLoading)
            Center(child: CircularProgressIndicator())
          else if (errorMessage.isNotEmpty)
            Center(child: Text(errorMessage))
          else
            Expanded(
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  User user = users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing: ElevatedButton(
                      onPressed: () => saveUser(user),
                      child: Text("Save"),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
