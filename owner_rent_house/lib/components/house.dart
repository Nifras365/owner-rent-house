class House {
  String type;
  String address;
  List<String> imageUrls;
  String ownername;
  String university;
  String faculty;
  String rooms;
  String nperson;
  String rent;
  String contact;

  House(this.type, this.address, this.imageUrls, this.ownername, this.contact,
      this.faculty, this.nperson, this.rent, this.rooms, this.university);

  static List<House> moreDetailsofHouse() {
    return [
      House(
          'Boarding House',
          'Wakwella road, Galle',
          [
            'assets/images/house01.jpeg',
            'assets/images/house02.jpeg',
          ],
          'Kumara S.K.D.',
          '0771234567',
          'Faculty of Engineering',
          '6 Peoples',
          '5000 per one person',
          '3 Rooms',
          'University of Ruhuna'),
    ];
  }
}

class Housepost {
  String type;
  String address;
  List<String> imageUrls;

  Housepost(
    this.type,
    this.address,
    this.imageUrls,
  );

  static List<Housepost> yourHousePostings() {
    return [
      Housepost(
        'Boarding House',
        'Wakwella road, Galle',
        [
          'assets/images/house01.jpeg',
          'assets/images/house02.jpeg',
        ],
      ),
      Housepost(
        'House',
        'Wakwella road, Hapugala',
        [
          'assets/images/house02.jpeg',
          'assets/images/house01.jpeg',
        ],
      )
    ];
  }
}
