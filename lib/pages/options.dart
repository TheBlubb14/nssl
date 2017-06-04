import 'dart:async';
import 'package:flutter/material.dart';
import 'package:testProject/localization/nssl_strings.dart';
import 'package:testProject/options/themes.dart';

class CustomThemePage extends StatefulWidget {
  CustomThemePage();

  @override
  CustomThemePageState createState() => new CustomThemePageState();
}

class CustomThemePageState extends State<CustomThemePage> {
  CustomThemePageState();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  bool _saveNeeded = false;
  TextEditingController tec = new TextEditingController();

  MaterialColor primary = Colors.blue;
  MaterialAccentColor accent = Colors.blueAccent;
  Brightness primaryBrightness = Brightness.light;
  Brightness accentBrightness = Brightness.dark;

  ThemeData td = new ThemeData(
      primarySwatch: Colors.blue,
      accentColor: Colors.blueAccent,
      accentColorBrightness: Brightness.dark,
      brightness: Brightness.light);


  NSSLStrings loc = NSSLStrings.instance;

  double primaryColorSlider = 0.0;
  double accentColorSlider = 0.0;
  bool primaryColorCheckbox = false;
  bool accentColorCheckbox = true;

  Future<bool> _onWillPop() async {
    if (!_saveNeeded) return true;

    final ThemeData theme = Theme.of(context);
    final TextStyle dialogTextStyle =
        theme.textTheme.subhead.copyWith(color: theme.textTheme.caption.color);

    return await showDialog<bool>(
            context: context,
            child: new AlertDialog(
                content:
                    new Text(loc.discardNewProduct(), style: dialogTextStyle),
                actions: <Widget>[
                  new FlatButton(
                      child: new Text(loc.cancelButton()),
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      }),
                  new FlatButton(
                      child: new Text(loc.discardButton()),
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      })
                ])) ??
        false;
  }

  void _handleSubmitted() {
    Themes.themes.clear();
    Themes.saveTheme(td, primary, accent);
    setState(() {
      Themes.themes.add(td);
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return new Scaffold(
      key: _scaffoldKey,
      appBar: new AppBar(title: new Text(loc.changeTheme()), actions: <Widget>[
        new FlatButton(
            child: new Text(loc.saveButton(),
                style: theme.textTheme.body1.copyWith(color: Colors.white)),
            onPressed: () => _handleSubmitted())
      ]),
      body: new Form(
          key: _formKey,
          onWillPop: _onWillPop,
          child: new ListView(
              padding: const EdgeInsets.all(16.0),
              children: <Widget>[
                new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  new Text(loc.changePrimaryColor()),
                  new Slider(
                      value: primaryColorSlider,
                      max: Colors.primaries.length.ceilToDouble() - 1.0,
                      divisions: Colors.primaries.length - 1,
                      onChanged: onChangedPrimarySlider),
                ]),
                new Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  new Text(loc.changeAccentColor()),
                  new Slider(
                      value: accentColorSlider,
                      max: Colors.accents.length.ceilToDouble() - 1.0,
                      divisions: Colors.accents.length - 1,
                      onChanged: onChangedSecondarySlider),
                ]),
                new Row(children: [
                  new Text(loc.changeDarkTheme()),
                  new Checkbox(
                      value: primaryColorCheckbox,
                      onChanged: primaryBrightnessChange),
                ]),
                new Row(children: [
                  new Text(loc.changeAccentTextColor()),
                  new Checkbox(
                      value: accentColorCheckbox,
                      onChanged: secondaryBrightnessChange),
                ]),
                new ConstrainedBox(
                  child: new MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: new Scaffold(
                      body: buildBody(),
                      resizeToAvoidBottomPadding: false,
                    ),
                    theme: td,
                  ),
                  constraints: const BoxConstraints(maxHeight: 470.0),
                )
              ])),
    );
  }

  void onChangedPrimarySlider(double value) {
    int index = value.floor();
    primaryColorSlider = value;
    primary = Colors.primaries[index];
    setColors();
  }

  void onChangedSecondarySlider(double value) {
    int index = value.floor();
    accentColorSlider = value;
    accent = Colors.accents[index];
    setColors();
  }

  void setColors() => setState(() {
        _saveNeeded = true;
        td = new ThemeData(
            primarySwatch: primary,
            accentColor: accent,
            brightness: primaryBrightness,
            accentColorBrightness: accentBrightness);
      });

  void primaryBrightnessChange(bool value) {
    primaryColorCheckbox = value;
    primaryBrightness = value ? Brightness.dark : Brightness.light;
    setColors();
  }

  void secondaryBrightnessChange(bool value) {
    accentColorCheckbox = value;
    accentBrightness = value ? Brightness.dark : Brightness.light;
    setColors();
  }

  buildBody() {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text("Theme"),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: () => {},
          child: new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {},
          ),
        ),
        body: new ListView(
          children: <Widget>[
            new RaisedButton(
              onPressed: () {},
              child: const Text("Theme"),
            ),
            new Divider(),
            new FlatButton(
              onPressed: () {},
              child: const Text("Theme"),
            ),
            new Divider(),
            new TextField(
              controller: tec,
            ),
          ],
        ),
        persistentFooterButtons: [
          new FlatButton(child: const Text("Theme"), onPressed: () {})
        ]);
  }
}