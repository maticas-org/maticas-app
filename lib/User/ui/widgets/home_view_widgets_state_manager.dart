import 'package:flutter/material.dart';

//import 'package:responsivedashboard/blocs/data_provider.dart';
import 'package:responsivedashboard/VariableType/model/variable_type.dart';

class HomeAmbientVariableDashboard with ChangeNotifier {
  final Map<int, VariableType> _allVariables = {};
  final Map<int, bool> _isClicked = {};
  final Map<int, bool> _isHovered = {};

  //DataProvider? _dataProvider;

  int get variableNumber {
    if (_allVariables.isEmpty) {
      return 9;
    } else {
      return _allVariables.length;
    }
  }

  int get numberOfClickedVariables {
    int count = 0;

    if (_isClicked.isNotEmpty) {
      for (int i = 0; i < _isClicked.length; i++) {
        bool? clicked = _isClicked[i];
        if (clicked != null) {
          clicked ? count++ : count;
        }
      }
    }

    return count;
  }

  bool isClicked(int nvar) {
    if (_isClicked.isNotEmpty) {
      bool? current = _isClicked[nvar];

      if (current != null) {
        return current;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  bool isHovered(int nVar) {
    if (_isHovered.isNotEmpty) {
      bool? current = _isHovered[nVar];

      if (current != null) {
        return current;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  void changeStateClick(int nVar) {
    if (_isClicked.isNotEmpty) {
      bool? current = _isClicked[nVar];

      if (current != null) {
        _isClicked[nVar] = !(current);
        notifyListeners();
      }
    }
  }

  void changeStateHover(int nVar) {
    if (_isHovered.isNotEmpty) {
      bool? current = _isHovered[nVar];

      if (current != null) {
        _isHovered[nVar] = !(current);
        notifyListeners();
      }
    }
  }

  VariableType? getVar(int nVar) {
    if (_allVariables.isNotEmpty) {
      VariableType? variable = _allVariables[nVar];
      if (variable == null) {
        return null;
      } else {
        return variable;
      }
    } else {
      return null;
    }
  }

  String getVarName(int nVar) {
    if (_allVariables.isNotEmpty) {
      VariableType? variable = _allVariables[nVar];

      if (variable != null) {
        return variable.name;
      } else {
        //returns a default name
        return 'var';
      }
    } else {
      return 'var';
    }
  }

  Future<void> init(BuildContext context) async {
    debugPrint("Building state manager for the dashboard...");

    bool noVariables = _allVariables.isEmpty;

    if (noVariables) {
      await _init(context);
      debugPrint("Built state manager for the dashboard!!!");
    }
    //debugPrint(_allVariables.toString());
  }

  Future<void> _init(BuildContext context) async {
    //_dataProvider ??= Provider.of<DataProvider>(context, listen: false);
    //_dataProvider?.db;

    //List<VariableType>? listOfVariables =
    //await _dataProvider?.getDistinctVariables();

    debugPrint("Filling state variables...");
    /*
    for (int i = 0; i < listOfVariables!.length; i++) {
      _allVariables[i] = listOfVariables[i];
      _isClicked[i] = false;
      _isHovered[i] = false;
      debugPrint(listOfVariables[i].toString());
    }
    */
    notifyListeners();
  }
}
