import 'package:bwa_pesawats/models/user_data.dart';
import 'package:bwa_pesawats/services/user_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:uuid/uuid.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserModel> signUpRequest({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      const uuid = Uuid();
      String randomIdBackup = await Future.delayed(
        const Duration(seconds: 1),
        () {
          return uuid.v4();
        },
      );

      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      UserModel usermodel = UserModel(
          id: userCredential.user?.uid ?? randomIdBackup,
          email: email,
          name: name,
          hobby: hobby,
          balance: 280000000);

      await UserServices().setUserdata(usermodel);

      return usermodel;
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
