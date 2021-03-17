import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as fb;
import 'package:shared_preferences/shared_preferences.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'dart:async';

class FirebaseController {
  static FirebaseController get instanace => FirebaseController();


  Future<String> saveUserDataToFirebaseDatabase(userId,userFirstName,userLastName,phone,phoneCode,email,gender,pass,country,city,referalCode) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('users').where('FCMToken', isEqualTo: prefs.get('FCMToken')).getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('users').document(userId).setData({
          'userId':userId,
          'name':userFirstName,
          'lastName':userLastName,
          'phone':phone,
          'postalCode':phoneCode,
          'email':email,
          'gender':gender,
          'password':pass,
          'country':country,
          'city':city,
          'referalCode':referalCode??"no",
          'createdAt': DateTime.now().millisecondsSinceEpoch,
          'FCMToken':prefs.get('FCMToken')?? 'NOToken',

        });

      }else {
        String userID = documents[0]['userId'];
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('users').document(userID).setData({
          'userId':userId,
          'name':userFirstName,
          'lastName':userLastName,
          'phone':phone,
          'postalCode':phoneCode,
          'email':email,
          'gender':gender,
          'password':pass,
          'country':country,
          'city':city,
          'referalCode':referalCode??"no",
          'createdAt': DateTime.now().millisecondsSinceEpoch,
          'FCMToken':prefs.get('FCMToken')?? 'NOToken',
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }



//////////////////////////////////////////////


  Future<String> productTypeMaster(userId,productName,productNameInTamil,bodies,variations) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ProductTypeMaster').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ProductTypeMaster').document(userId).setData({
          'userId':userId,
          'productName':productName,
          'productNameInTamil':productNameInTamil,
          'bodies':bodies,
          'variations':variations,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ProductTypeMaster').document(userID).setData({
          'userId':userId,
          'productName':productName,
          'productNameInTamil':productNameInTamil,
          'bodies':bodies,
          'variations':variations,
          'createdAt': DateTime.now().millisecondsSinceEpoch,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productTypeMasterEdit(userId,productName,productNameInTamil,bodies,variations) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductTypeMaster').getDocuments();
        String userID = userId;

        await Firestore.instance.collection('ProductTypeMaster').document(userID).updateData({

          'productName':productName,
          'productNameInTamil':productNameInTamil,
          'bodies':bodies,
          'variations':variations,

        });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productTypeMasterDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductTypeMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductTypeMaster').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

//////////////////////////////
  Future<String> productBodyMaster(userId,bodyName,bodyNameInTamil,classSize) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ProductBodyMaster').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ProductBodyMaster').document(userId).setData({
          'userId':userId,
          'bodyName':bodyName,
          'bodyNameInTamil':bodyNameInTamil,
          'classSize':classSize,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ProductBodyMaster').document(userID).setData({
          'userId':userId,
          'bodyName':bodyName,
          'bodyNameInTamil':bodyNameInTamil,
          'classSize':classSize,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  Future<String> productBodyMasterEdit(userId,bodyName,bodyNameInTamil,classSize) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductBodyMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductBodyMaster').document(userID).updateData({

        'bodyName':bodyName,
        'bodyNameInTamil':bodyNameInTamil,
        'classSize':classSize,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productBodyMasterDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductBodyMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductBodyMaster').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  ////////////////////////////////////

  Future<String> productVariationMaster(userId,variationName,size,groupName) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ProductVariationMaster').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ProductVariationMaster').document(userId).setData({
          'userId':userId,
          'variationName':variationName,
          'size':size,
          'groupName':groupName,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ProductVariationMaster').document(userID).setData({
          'userId':userId,
          'variationName':variationName,
          'size':size,
          'groupName':groupName,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  Future<String> productVariationMasterEdit(userId,variationName,size,groupName) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductVariationMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductVariationMaster').document(userID).updateData({

        'variationName':variationName,
        'size':size,
        'groupName':groupName,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productVariationMasterDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductVariationMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductVariationMaster').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  ///////////////////////////////////////////

  Future<String> productPartMaster(userId,productName,productNameInTamil,department,weightOrPcs,podiName,gattiRequired,kambiType) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ProductPartMaster').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ProductPartMaster').document(userId).setData({
          'userId':userId,
          'partName':productName,
          'partNameInTamil':productNameInTamil,
          'department':department,
          'weightOrPcs':weightOrPcs,
          'podiName':podiName,
          'gattiRequired':gattiRequired,
          'kambiType':kambiType,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ProductPartMaster').document(userID).setData({
          'userId':userId,
          'partName':productName,
          'partNameInTamil':productNameInTamil,
          'department':department,
          'weightOrPcs':weightOrPcs,
          'podiName':podiName,
          'gattiRequired':gattiRequired,
          'kambiType':kambiType,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productPartMasterEdit(userId,productName,productNameInTamil,department,weightOrPcs,podiName,gattiRequired,kambiType) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductPartMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductPartMaster').document(userID).updateData({

        'productName':productName,
        'partNameInTamil':productNameInTamil,
        'department':department,
        'weightOrPcs':weightOrPcs,
        'podiName':podiName,
        'gattiRequired':gattiRequired,
        'kambiType':kambiType,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> productPartMasterDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductPartMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductPartMaster').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  ///////////////////////////////////

  Future<String> productDepartmentMaster(userId,departmentName,departmentNameInTamil,group,wastage) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ProductDepartmentMaster').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ProductDepartmentMaster').document(userId).setData({
          'userId':userId,
          'departmentName':departmentName,
          'departmentNameInTamil':departmentNameInTamil,
          'group':group,
          'wastage':wastage,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ProductDepartmentMaster').document(userID).setData({
          'userId':userId,
          'departmentName':departmentName,
          'departmentNameInTamil':departmentNameInTamil,
          'group':group,
          'wastage':wastage,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }



  Future<String> productDepartmentMasterEdit(userId,departmentName,departmentNameInTamil,group,wastage) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductDepartmentMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductDepartmentMaster').document(userID).updateData({

        'departmentName':departmentName,
        'departmentNameInTamil':departmentNameInTamil,
        'group':group,
        'wastage':wastage,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  Future<String> productDepartmentMasterDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ProductDepartmentMaster').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ProductDepartmentMaster').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  /////////////////////////////////////

  Future<String> manageProduct(userId,productName,productNameInTamil,productType,body,pidi,approxWeightSmall,approxWeightMedium,approxWeightBig,partRequirementMainBody,partRequirementKanni,partRequirementWeight, userImageFile) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('ManageProducts').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('ManageProducts').document(userId).setData({
          'userId':userId,
          'productName':productName,
          'productNameInTamil':productNameInTamil,
          'productType':productType,
          'body':body,
          'pidi':pidi,
          'image':userImageFile,
          'approxWeightSmall':approxWeightSmall,
          'approxWeightMedium':approxWeightMedium,
          'approxWeightBig':approxWeightBig,
          'partRequirementMainBody':partRequirementMainBody,
          'partRequirementKanni':partRequirementKanni,
          'partRequirementWeight':partRequirementWeight,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('ManageProducts').document(userID).setData({
          'userId':userId,
          'productName':productName,
          'productNameInTamil':productNameInTamil,
          'productType':productType,
          'body':body,
          'pidi':pidi,
          'image':userImageFile,
          'approxWeightSmall':approxWeightSmall,
          'approxWeightMedium':approxWeightMedium,
          'approxWeightBig':approxWeightBig,
          'partRequirementMainBody':partRequirementMainBody,
          'partRequirementKanni':partRequirementKanni,
          'partRequirementWeight':partRequirementWeight,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }

  }


  Future<String> manageProductEdit(userId,productName,productNameInTamil,productType,body,pidi,approxWeightSmall,approxWeightMedium,approxWeightBig,partRequirementMainBody,partRequirementKanni,partRequirementWeight, userImageFile) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ManageProducts').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ManageProducts').document(userID).updateData({

        'productName':productName,
        'productNameInTamil':productNameInTamil,
        'productType':productType,
        'body':body,
        'pidi':pidi,
        'image':userImageFile,
        'approxWeightSmall':approxWeightSmall,
        'approxWeightMedium':approxWeightMedium,
        'approxWeightBig':approxWeightBig,
        'partRequirementMainBody':partRequirementMainBody,
        'partRequirementKanni':partRequirementKanni,
        'partRequirementWeight':partRequirementWeight,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  Future<String> manageProductDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('ManageProducts').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('ManageProducts').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  //////////////////////////////////////////////


  Future<String> saveUserImageToFirebaseStorage(userId, productName, productNameInTamil, productType, body, pidi, approxWeightSmall, approxWeightMedium, approxWeightBig, partRequirementMainBody, partRequirementKanni, partRequirementWeight,userImageFile) async {


    String filePath = 'userImages/$userId';
    try {
      //Upload Profile Photo

       fb.Reference storageReference = FirebaseStorage().ref().child(filePath);
      fb.UploadTask uploadTask = storageReference.putFile(userImageFile);

      fb.TaskSnapshot storageTaskSnapshot = await uploadTask.whenComplete(() {

      });
      String imageURL = await storageTaskSnapshot.ref.getDownloadURL(); // Image URL from
      String result = await manageProduct(userId, productName, productNameInTamil, productType, body, pidi, approxWeightSmall, approxWeightMedium, approxWeightBig, partRequirementMainBody, partRequirementKanni, partRequirementWeight,imageURL);
      return result;
    } catch (e) {
      print(e.message);
      return null;
    }



  }

  ///////////////////////////////////////////


  Future<String> partRequirement(userId,partName,noOfPcs,condition) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      final QuerySnapshot result = await Firestore.instance.collection('PartRequirement').getDocuments();
      final List<DocumentSnapshot> documents = result.documents;
      String myID = userId;
      if (documents.length == 0) {
        await Firestore.instance.collection('PartRequirement').document(userId).setData({
          'userId':userId,
          'partName':partName,
          'noOfPcs':noOfPcs,
          'condition':condition,
          'createdAt': DateTime.monthsPerYear,


        });

      }else {
        String userID = userId;
        myID = userID;
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userId',myID);
        await Firestore.instance.collection('PartRequirement').document(userID).setData({
          'userId':userId,
          'partName':partName,
          'noOfPcs':noOfPcs,
          'condition':condition,
          'createdAt': DateTime.monthsPerYear,
        });
      }
      return myID;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

  Future<String> partRequirementEdit(userId,partName,noOfPcs,condition) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('PartRequirement').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('PartRequirement').document(userID).updateData({

        'partName':partName,
        'noOfPcs':noOfPcs,
        'condition':condition,

      });

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }


  Future<String> partRequirementDelete(userId) async {
    try {
      final QuerySnapshot result = await Firestore.instance.collection('PartRequirement').getDocuments();
      String userID = userId;

      await Firestore.instance.collection('PartRequirement').document(userID).delete();

      return userId;
    }catch(e) {
      print(e.message);
      return null;
    }
  }

///////////////////////////////////////////




}