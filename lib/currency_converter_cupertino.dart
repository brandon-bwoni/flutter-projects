import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
      double result = 0;
      final TextEditingController textEditingController = TextEditingController();

    void convert() {
    result = double.parse(textEditingController.text) * 35;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black,
          width: 2,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignOutside),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text(
            "\$ Currency converter \$",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blueGrey,
          elevation: 0,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'ZWG ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                    style: const TextStyle(
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Enter amount in USD",
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(
                      Icons.monetization_on_outlined,
                      color: Colors.black,
                      size: 32,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),
                // button
                const SizedBox(height: 10),
                TextButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text("Convert"),
                )
              ],
            ),
          ),
        ));
  }
}

}
