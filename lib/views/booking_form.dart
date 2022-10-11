part of 'pages.dart';

class Bookingform extends StatefulWidget {
  const Bookingform({Key? key}) : super(key: key);
  static const String routeName = '/Bookingform';

  @override
  _BookingformState createState() => _BookingformState();
}

class _BookingformState extends State<Bookingform> {
  @override
  void initState() {
    super.initState();
  }

  final _Bookingkey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Form"),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 32),
        child: Form(
          key: _Bookingkey,
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Full Name", prefixIcon: Icon(Icons.contacts)),
                controller: ctrlName,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Email", prefixIcon: Icon(Icons.email)),
                controller: ctrlEmail,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  return !EmailValidator.validate(value.toString())
                      ? 'Email tidak valid!'
                      : null;
                },
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Phone Number", prefixIcon: Icon(Icons.phone)),
                controller: ctrlPhone,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              TextFormField(
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                    labelText: "City", prefixIcon: Icon(Icons.location_city)),
                controller: ctrlCity,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {},
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                  child: ElevatedButton.icon(
                      onPressed: () {
                        if (_Bookingkey.currentState!.validate()) {
                          Fluttertoast.showToast(
                              msg: 'Name:' +
                                  ctrlName.text.toString() +
                                  ', Email: ' +
                                  ctrlEmail.text.toString() +
                                  ', Phone:' +
                                  ctrlPhone.text.toString() +
                                  ', City: ' +
                                  ctrlCity.text.toString(),
                              toastLength: Toast.LENGTH_SHORT,
                              fontSize: 14,
                              backgroundColor: Colors.greenAccent,
                              textColor: Colors.white);
                          Navigator.pushNamed(context, WidgetsPart1.routeName);
                        } else {
                          Fluttertoast.showToast(
                              msg: "Please fill all fields!",
                              toastLength: Toast.LENGTH_SHORT,
                              fontSize: 14,
                              backgroundColor: Colors.redAccent,
                              textColor: Colors.white);
                        }
                      },
                      icon: Icon(Icons.save),
                      label: Text("Book Now")))
            ],
          ),
        ),
      ),
    );
  }
}
