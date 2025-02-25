import 'package:flutter/material.dart.';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(15.0),
      ),
    );

    return  Scaffold(
      backgroundColor: Colors.blueGrey,
        body:Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("0", style: TextStyle(
                  fontSize: 45 ,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                  child: TextField(
                    style:const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Plz inter your amount in USD',
                      hintStyle:const TextStyle(
                        color: Colors.black,
                      ),
                      prefixIcon:const Icon(Icons.monetization_on),
                      prefixIconColor: Colors.black,
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder:border,
                      enabledBorder: border,
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                  ),
                ),
                //button
                TextButton(onPressed: () {
                  print("button clicked");
                },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    fixedSize: MaterialStatePropertyAll(Size(200,50)),
                  ),
                  child: const Text("Convert"),
                ),
              ],
            ),
        ),
    );
  }
}