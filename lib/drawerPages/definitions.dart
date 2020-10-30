import 'package:flutter/material.dart';
import 'package:IB_Chemsitry_App/constants.dart';

class Definitions extends StatefulWidget {
  @override
  _DefinitionsState createState() => _DefinitionsState();
}

class _DefinitionsState extends State<Definitions> {
  List<String> wordList = [];
  List<String> filteredWordsLists = [];
  List<String> definition = [];
  Map<String, String> mydefinitions = kDefintions;
  void _loadWords() async {
    String tempData = await DefaultAssetBundle.of(context)
        .loadString('assets/definitionnames.txt');

    setState(() {
      wordList = tempData.split(',');
      wordList.sort();
      filteredWordsLists = wordList;
    });
  }

  void _onSearch(value) {
    setState(() {
      filteredWordsLists =
          wordList.where((element) => element.contains('$value')).toList();
    });
  }

  void _showDialog({String value, String definition}) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(value),
          content: new Text(definition),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Got it"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadWords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Definitions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Flexible(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search here...',
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.black, width: 1.0),
                    ),
                  ),
                  onChanged: _onSearch,
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    onTap: () {
                      _showDialog(
                          value: '${filteredWordsLists[index]}',
                          definition:
                              mydefinitions['${filteredWordsLists[index]}']);
                      print('${filteredWordsLists[index]}');
                      print(mydefinitions['Atomic mass']);
                    },
                    title: Text('${filteredWordsLists[index]}'),
                  ),
                );
              },
              itemCount: filteredWordsLists.length,
            ))
          ],
        ),
      ),
    );
  }
}
