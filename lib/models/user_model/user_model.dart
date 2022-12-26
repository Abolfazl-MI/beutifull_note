import 'package:beutifull_note/models/note_modle/note_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user_model.g.dart';
@JsonSerializable()
class NoteUser {
  String? emailAddress;
  String? userName;
  List<Note>? notes;

  NoteUser({this.emailAddress, this.userName, this.notes});

  factory NoteUser.fromJson(Map<String,dynamic>json)=>_$NoteUserFromJson(json);

  Map<String,dynamic>toJson()=>_$NoteUserToJson(this);


}
