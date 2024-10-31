import 'package:flutter/material.dart';
import 'package:flutter_tugas/HalamanDashboard.dart';

class DisenHalamanLogin extends StatefulWidget {
  const DisenHalamanLogin({super.key});

  @override
  State<DisenHalamanLogin> createState() => _DisenHalamanLoginState();
}

class _DisenHalamanLoginState extends State<DisenHalamanLogin> {
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerpass = TextEditingController();
  final formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Silahakan Untuk Login Terlebihdahulu'),
      ),
      body: Form(
        key: formkey,
        child: Center(
          child:SizedBox(
            width: 280, height: 250,
            child: Card(
              elevation: 10,
              shadowColor: const Color.fromARGB(255, 11, 119, 11),
              color:  Color.fromARGB(255, 11, 13, 11),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextFormField(
                      controller: controllerUser,
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        hintText: 'Input User Name',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'User Masih Kosong';
                        }return null;
                      },
                    ),
                    SizedBox(height: 10,),
                  
                      TextFormField(
                        obscureText: true,
                      controller: controllerpass,
                      decoration: InputDecoration(
                        labelText: 'Passwoard',
                        hintText: 'Input Passwoard',
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1),
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                      validator: (value) {
                        if (value!.isEmpty){
                          return 'Passwoard Masih Kosong';
                        }return null;
                      },
                    ),
                    SizedBox(height: 10 ,),
                    ElevatedButton(
                      onPressed: (){
                        String tUser = 'Ahmad Syarifudin';
                        String tPass = '123456';
                        if(formkey.currentState!.validate()){
                          if(controllerUser.text == tUser && controllerpass.text == tPass){
                        // perintah untuk memanggil halaman baru
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:
                         (context) => DisenHalamandashboard(username: controllerUser.text),
                         ), (Route<dynamic> route) => false,);

                          }else{
                            showDialog(
                              context: context,
                               builder: (context){
                                return AlertDialog(
                                  title: Text('Konfirmasi Login'),
                                  content: Text('User Atau Passwoard Masih Salah'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: (){
                                        controllerUser.text='';
                                        controllerpass.text='';

                                        Navigator.of(context).pop();
                                      },
                                       child: Text('ok')
                                    )
                                  ],
                                );

                               }
                            );
                          }

                        }

                    },
                     child: Text('LOGIN')
                    )

                  ],
          ) 
           
              ),
        ),
      ),
    ),
      ),
    );

  }
}
