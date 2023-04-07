import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(yash());
}

class yash extends StatelessWidget {
  const yash({super.key});

  @override
  Widget build(BuildContext context) {
    var emailtext = TextEditingController();
    var passtext = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "home",
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Flutter_Login"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/f.jpg'),
                TextField(
                  keyboardType: TextInputType.phone,
                  controller: emailtext,
                  decoration: InputDecoration(
                      hintText: 'Enter Email',
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2,
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 82, 86, 93),
                          width: 2,
                        ),
                      ),
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.email,
                          color: Colors.orangeAccent,
                        ),
                        onPressed: () {},
                      )),
                ),
                SizedBox(height: 5),
                TextField(
                  controller: passtext,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter number',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 115, 34, 255),
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 39, 23, 24),
                          width: 2,
                        )),
                    prefixIcon: IconButton(
                      icon: Icon(
                        Icons.phone,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  controller: passtext,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 115, 34, 255),
                          width: 2,
                        )),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 39, 23, 24),
                          width: 2,
                        )),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.blue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    minimumSize: Size(200, 40),
                  ),
                  onPressed: () {
                    String uemail = emailtext.text.toString();
                    String upass = passtext.text;

                    print("Email:$uemail,pass:$upass");
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        height: 2,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
