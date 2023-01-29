// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Profile extends Equatable {
  
   Profile({
     required this.ratings,
        required this.properties,
        required this.notification,
        required this.unread,
        required this.emailVerified,
        required this.verifiedPicture,
        required this.verifiedphoneNumber,
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.verified,
        required this.dateRegistered,
        required this.ratingvalue,
        required this.gbaleid,
        required this.askCount,
        required this.endsAt,
        required this.v,
        required this.phoneNumber,
        required this.profilePicture,
        required this.data,
        required this.read,
        required this.typeOfNotification,
  });

/// factory constructor to create a [User] object from a [Map]
  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
          ratings: List<dynamic>.from(json["ratings"].map((x) => x)),
        properties: List<dynamic>.from(json["properties"].map((x) => x)),
        notification: List<dynamic>.from(json["notification"].map((x) => x)),
        unread: List<dynamic>.from(json["unread"].map((x) => x)),
        emailVerified: json["emailVerified"],
        verifiedPicture: json["verifiedPicture"],
        verifiedphoneNumber: json["verifiedphoneNumber"],
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        verified: json["verified"],
        dateRegistered: json["dateRegistered"],
        ratingvalue: json["ratingvalue"],
        gbaleid: json["gbaleid"],
        askCount: json["askCount"],
        endsAt: json["endsAt"],
        v: json["__v"],
        phoneNumber: json["phoneNumber"],
        profilePicture: json["profilePicture"],
        data: List<dynamic>.from(json["data"].map((x) => x)),
        read: json["read"],
        typeOfNotification: List<dynamic>.from(json["typeOfNotification"].map((x) => x)));
  }

 List<dynamic> ratings;
    List<dynamic> properties;
    List<dynamic> notification;
    List<dynamic> unread;
    bool emailVerified;
    bool verifiedPicture;
    bool verifiedphoneNumber;
    String id;
    String firstName;
    String lastName;
    String email;
    bool verified;
    int dateRegistered;
    int ratingvalue;
    String gbaleid;
    int askCount;
    int endsAt;
    int v;
    String phoneNumber;
    String profilePicture;
    List<dynamic> data;
    bool read;
    List<dynamic> typeOfNotification;

  @override
  bool? get stringify => true;

  @override
  List<Object?> get props => [
    firstName, 
    lastName, 
    email,  
    ratings, 
    profilePicture, 
    properties, 
    notification,
    unread,
    emailVerified,
    verifiedPicture,
    id,
    phoneNumber,
    data,
    read,
    typeOfNotification,
    dateRegistered,
    endsAt,
    v,
    verifiedphoneNumber,
    ratingvalue,
    gbaleid,
    askCount,
    
     ];
}
