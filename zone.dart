class Zone {

  int id;
  String street;
  String city;
  String cap;

  Zone (this.id, this.street, this.city, this.cap);

  Zone.fromJson(Map<String, dynamic> json) //costruttore che acquisisce i dati dal json e gli associa ai  campi dello
  //stato interno della classe
  : id = json["id"],
    street = json["street"],
    city = json["city"],
    cap = json["cap"];


}