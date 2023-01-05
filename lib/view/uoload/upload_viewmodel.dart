import 'package:stacked/stacked.dart';

class UploadViewModel extends BaseViewModel {
  List<String> city = [
    'Ibadan',
    'Oyo',
  ];
  String? _selectedCity;
  String? get selectedCity => _selectedCity;

  void updateSelectedCity(String? value) {
       _selectedCity = value;
    notifyListeners();
  }


List<String> rooms = [
    'A room ordinary',
    'A room and parlour',
    'A room self con',
    'Room and parlour self con',
    '2 bedroom flat',
    '3 bedroom flat',
    '4 bedroom flat',
    '5 bedroom flat',
    '6 bedroom flat',
    '2 bedroom duplex',
    '3 bedroom duplex',
    '4 bedroom duplex',
    '4 bedroom duplex'
    '5 bedroom duplex',
    '6 bedroom duplex',
    'Shop',
    'Office space',
    'Warehouse/commercial',
    'Room in a flat',
    '2 Rooms and parlor',
];
  String? _selectedRoom;
  String? get selectedRoom=> _selectedRoom;

  void updateSelectedRoom(String? value) {
    _selectedRoom = value;
    notifyListeners();
  }


 List<String> area  = [
    'Adamasingba',
    'Adeoyo',
    'Agbowo',
    'Apete',
    'Agodi',
    'Ajibode',
    'Akala Express',
    'Akobo',
    'Alakia',
    'Alalubosa',
    'Apete',
    'Apata',
    'Basorun',
    'Barika',
    'Bodija',
    'Challenge',
    'Eleyele',
    'Felele',
    'Gate'
    'Ibadan North West',
    'Ibadan Polytechnic/UI',
    'Idishin',
    'ijaye Orile',
    'Idi ishin'
    'Iyaganku',
    'Jericho',
    'Mokola'
    'Molete',
    'Moniya',
    'Odinjo',
    'Odo Oba',
    'Odo Ona',
    'Ojo',
    'Oke Ado',
    'Olodo',
    'Olorunda',
    'Old Iyanru/Ijanagangan',
    'Olomi',
    'Oluyole Estate',
    'Omi Adio',
    'Orogun'
    'Ring Rd',
    'Sabo',
    'Salvation',
    'Samonda',
    'Sango',
    'Soka',
    'Wakajaye',
    'Yemetu',


  ];
  String? _selectedArea;
  String? get selectedArea => _selectedArea;

  void updateSelectedArea(String? value) {
    _selectedArea= value;
    notifyListeners();
  }

}
