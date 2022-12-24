import 'package:beutifull_note/core/data_state.dart';
import 'package:beutifull_note/core/error_code.dart';
import 'package:beutifull_note/core/firebase_auth_error_helper.dart';
import 'package:beutifull_note/services/local/shared_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_auth/'
class AuthService {
  /// [dependencies]
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final SharedService _sharedService = SharedService();
  
  /// [functions]
  /// [login user with email and pssword]
  Future<DataState<User>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      UserCredential user = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      await _sharedService.saveUserToken(
          userToken: user.credential!.token.toString());
      return DataSuccesState(user.user!);
    } on FirebaseAuthException catch (e) {
      return DataFailState(getErrorMeesage(e.code));
    } catch (e) {
      return DataFailState(SOMETHING_WENT_WRONG);
    }
  }

  // singin user with email and password
  Future<DataState<User>> siginWithEmailAndPassword(
      {required String password, required String email}) async {
    try {
      UserCredential user = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      await _sharedService.saveUserToken(
          userToken: user.credential!.token.toString());
      return DataSuccesState(user.user!);
    } on FirebaseAuthException catch (e) {
      return DataFailState(getErrorMeesage(e.code));
    } catch (e) {
      return DataFailState(SOMETHING_WENT_WRONG);
    }
  }

  // logs out user from system
  Future<DataState<bool>> logout()async {
    try{
      await _firebaseAuth.signOut();
      await _sharedService.deleteUserToken();
      return DataSuccesState(true);
    }catch(e){
      return DataFailState(SOMETHING_WENT_WRONG);
    }
  }
}
