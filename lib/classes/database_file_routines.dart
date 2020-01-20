import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:convert';
import 'database.dart';


class DatabaseFileRoutines {
  Database databaseFromJson(String str){
    final dataFromJson = json.decode(str);
    return Database.fromJson(dataFromJson);
  }

  String databaseToJson(Database data){
    final dataToJson = data.toJson();
    return json.encode(dataToJson);
  }


  Future<String> get _localPath async{
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async{
    final path = await _localPath;

    return File('$path/local_persistence.json');
  }

  Future<String> readJournals() async{
    try{
      final file = await _localFile;

      if(!file.existsSync()) {
        print("File does not exist: ${file.absolute}");
        await writeJournals('{"journals": []}');
        //Read the file
        String contents = await file.readAsString();

        return contents;
      } else {
        String contents = await file.readAsString();

        return contents;
      }
    } catch (e) {
      print("Error readJournals: $e");
      return "";
    }
  }

  Future<File> writeJournals(String json) async{
    final file = await _localFile;

    //Write file
    return file.writeAsString('$json');
  }

}