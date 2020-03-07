import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as syspaths;
import 'package:path/path.dart' as path;

class FileUploader extends StatefulWidget {
  @override
  _FileUploaderState createState() => _FileUploaderState();
}

class _FileUploaderState extends State<FileUploader> {
  void getFile() async{
    String filePath;

// Will let you pick one file path, from all extensions
    File file = await FilePicker.getFile(type: FileType.CUSTOM,fileExtension: 'pdf');
    final fileName = path.basename(file.path);
    print(fileName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messi"),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: getFile,
            child: Text("Messi"),
        ),
      ),
    );
  }
}
