import 'package:eurolearning/models/treinamento_model.dart';
import 'package:eurolearning/services/api_services.dart';
import 'package:eurolearning/card/myTreinamentos.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _Homepage();
}

class _Homepage extends State<Homepage> {
  ApiServices apiServices = ApiServices();
  List<Treinamento> treinamentos = [];

  @override
  void initState() {
    treinamentos = apiServices.getTreinamentos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(0, 58, 112, 1),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(55.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: AppBar(
            title: const Text('Meus Treinamentos'),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView.builder(
          itemCount: treinamentos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: MyTreinamentos(treinamento: treinamentos[index]),
            );
          },
        ),
      ),
    );
  }
}
