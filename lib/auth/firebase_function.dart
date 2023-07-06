import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/auth/valid_utils.dart';
import 'package:todo/model/dialog_utils.dart';
import 'package:todo/model/task_model.dart';
import 'package:todo/screen/home/home.dart';

class FirebaseFunction {

  static createUserWithEmailAndPassword(
      String emailAddress, String password, BuildContext context) async {
    DialogUtils.showLoadingDialog(context, 'Loading....');

    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      DialogUtils.hidegDialog(context);
      // DialogUtils.showMassageDialog(context,"sucsessful ${credential.user?.uid}","");
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    } on FirebaseAuthException catch (e) {
      DialogUtils.hidegDialog(context);
      if (e.code == 'weak-password') {
        DialogUtils.showMassageDialog(
            context, "Error", "The password provided is too weak.",
            negtActionName: "cancel");
      } else if (e.code == 'email-already-in-use') {
        DialogUtils.showMassageDialog(
            context, "Error", "The account already exists for that email",
            negtActionName: "cancel");
      }
    } catch (e) {
      DialogUtils.showMassageDialog(context, "Error", "e.toString()",
          postActionName: 'cancel',
          negtActionName: "tray agine",
          negtAction: () {
        ValidUtils.register(e, emailAddress, password, context);
      });
    }
  }

  //sigin in------------------
  static signInWithEmailAndPassword(
      String emailAddress, String password, BuildContext context) async {
    DialogUtils.showLoadingDialog(context, 'Loading....');
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      DialogUtils.hidegDialog(context);
      // DialogUtils.showMassageDialog(context,"sucsessful ${credential.user?.uid}","");
      Navigator.pushReplacementNamed(context, HomePage.routeName);

    } on FirebaseAuthException catch (e) {
      DialogUtils.showMassageDialog(context, "Error", "wrong-password - email",
          negtActionName: "cancel");
    }
  }





//this Method to create task collection
 static CollectionReference<Task> getTaskCollection(){
   return FirebaseFirestore.instance.collection("Task").
    withConverter<Task>(
        fromFirestore:(snapshot, options) => Task.formJson(snapshot.data()!) ,
        toFirestore: (value, options) =>value.toJson(),);
  }


 static Future<void> addTaskToFireStore(Task obj){

   var folderTask= getTaskCollection(); //folder name task
   var fileDoc=folderTask.doc(); //fileName doc
   obj.id= fileDoc.id; //number file
    return fileDoc.set(obj); //write all data in file from obj tas;
  }





}
