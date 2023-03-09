class Address{

  final String _id;
  final String user_id;
  final String parish;
  final String address_1;
  final String address_2;
  final String city;
  final String status;

  Address(this._id, this.user_id, this.parish, this.address_1, this.address_2, this.city, this.status);

  static List<Address> addressSample = [
    Address("63febdfeff1199a19cf92857","annmarieholloway@globoil.com","Manchester" ,"547 Hubbard Street","Varick Street","Roulette","ACTIVE"),
    Address("63febdfef5dd0be6f13f4bcc","katrinamoss@globoil.com","Manchester" ,"868 Seigel Court","Beayer Place","Groveville","APPROVED"),
    Address("63febdfef5782db7a5045ca6","antoinetteshepard@globoil.com","Westmoreland" ,"368 Bay Parkway","Hewes Street","Benson","ACTIVE"),
  ];
}