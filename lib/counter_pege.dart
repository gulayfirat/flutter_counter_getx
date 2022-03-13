import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medium_getx_counter_app/controller.dart';
import 'next_page.dart';

class CounterPage extends StatelessWidget {
  CounterPage({Key? key}) : super(key: key);
  CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App with GetX"),
      ),
      body: Center(
        child: GetBuilder<CounterController>(
          builder: (counterController) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  counterController.count.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
                FloatingActionButton(
                  onPressed: () => counterController.increase(),
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                    onPressed: () => Get.to(
                        const NextPage()), // Navigator.push(context, MaterialPageRoute(builder: (context)=>NextPage())),
                    child: const Text("Next"))
              ],
            );
          },
        ),
      ),
    );
  }
}
