import 'package:bwa_pesawats/models/user_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserServices {
  final CollectionReference _userCollectionReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUserdata(UserModel usermodel) async {
    try {
      _userCollectionReference.doc(usermodel.id).set({
        'email': usermodel.email,
        'name': usermodel.name,
        'hobby': usermodel.hobby,
        'balance': usermodel.balance,
      });
    } catch (err) {
      rethrow;
    }
  }
}
