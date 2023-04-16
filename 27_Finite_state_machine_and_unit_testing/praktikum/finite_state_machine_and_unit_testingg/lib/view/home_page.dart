import 'package:finite_state_machine_and_unit_testingg/view_model/food_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    // ! oh ini bisa pake microtask
    // Future.microtask(
    //     () => Provider.of<FoodProvider>(context, listen: false).fetchFood());
    // ! ini bisa pake widgetBindings
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FoodProvider>(context, listen: false);
      await viewModel.fetchFood();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finite State and Testing Unit"),
        centerTitle: true,
      ),
      body: Consumer<FoodProvider>(builder: (context, provider, child) {
        if (provider.state == FoodViewState.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (provider.state == FoodViewState.loaded) {
          return ListView(
            children: [
              SizedBox(
                  height: 800,
                  child: ListView.builder(
                      itemCount: provider.foods.length,
                      itemBuilder: (context, index) {
                        final item = provider.foods[index];
                        return Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(21, 167, 167, 167),
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            title: Text(
                              item.name,
                              style: const TextStyle(fontSize: 18),
                            ),
                            subtitle: Text(item.name),
                            leading: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 25, 97, 67),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                item.name[0],
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          );
        }
        if (provider.state == FoodViewState.error) {
          return const Center(
              child: Text("Gagal Mengambil Data, Periksa Akses Internet Mu"));
        } else {
          return const Text("tidak diketahui");
        }
      }),
    );
  }
}
