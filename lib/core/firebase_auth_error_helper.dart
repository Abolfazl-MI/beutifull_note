
import 'package:beutifull_note/core/error_code.dart';

String getErrorMeesage(String errorCode){
  switch (errorCode){
    case 'wrong-password':
      return WRONG_PASSWORD;
    case 'invalid-email':
      return INVALID_EMAIL_ADDRRESS;
    case 'user-disabled':
      return USER_DISABLED;
    case 'user-not-found':
      return USER_NOT_FOUND;
    case 'email-already-in-use':
      return EMAIL_ALREADY_IN_USE;
    case 'weak-password':
      return WEAK_PASSWORD;
    default:
      return SOMETHING_WENT_WRONG;
  }
}