import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //ປະກາດໂຕແກ
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ແອ໊ບ ນັບເລກ'),
      ),
      body: Center(
        //ສະແດງໂຕແປງອອກ
        child: Text(
          'ຈຳນວນ: ${Counter}',
          style: TextStyle(fontSize: 34),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              // ໃຊ້ setState ເພື່ອກຳນົດຄ່າໂຕແປ
              setState(() {
                Counter++;
              });
            },
            child: Icon(Icons.add),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Counter--;
              });
            },
            child: Icon(Icons.remove),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Counter = 0;
              });
            },
            child: Icon(Icons.recycling),
          )
        ],
      ),
    );
  }
}
