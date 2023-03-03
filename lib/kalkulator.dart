import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageRealState createState() => _CalculatorPageRealState();
}

class _CalculatorPageRealState extends State<KalkulatorPage> {
  String _output = '0';
  String _input = '';
  double _value1 = 0.0;
  double _value2 = 0.0;
  String _operator = '';

  void _handleNumberPress(String text) {
    setState(() {
      if (_output == '0') {
        _output = text;
      } else {
        _output += text;
      }
      _input += text;
    });
  }

  void _handleOperatorPress(String text) {
    setState(() {
      _value1 = double.parse(_output);
      _operator = text;
      _output = '0';
      _input += text;
    });
  }

  void _handleEqualPress() {
    setState(() {
      _value2 = double.parse(_output);
      switch (_operator) {
        case '+':
          _output = (_value1 + _value2).toStringAsFixed(2);
          break;
        case '-':
          _output = (_value1 - _value2).toStringAsFixed(2);
          break;
        case '×':
          _output = (_value1 * _value2).toStringAsFixed(2);
          break;
        case '÷':
          _output = (_value1 / _value2).toStringAsFixed(2);
          break;
        default:
        //_output = '0';
      }
      _input = '';
      _operator = '';
    });
  }

  void _handleClearPress() {
    setState(() {
      _output = '0';
      _input = '';
      _value1 = 0.0;
      _value2 = 0.0;
      _operator = '';
    });
  }

  Widget _buildButton(String text) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {
            if (text == 'C') {
              _handleClearPress();
            } else if (text == '=') {
              _handleEqualPress();
            } else if (text == '+' ||
                text == '-' ||
                text == '×' ||
                text == '÷') {
              _handleOperatorPress(text);
            } else {
              _handleNumberPress(text);
            }
          },
          child: Text(
            text,
            style: const TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style:
                    const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    _buildButton('7'),
                    _buildButton('8'),
                    _buildButton('9'),
                    _buildButton('÷'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('4'),
                    _buildButton('5'),
                    _buildButton('6'),
                    _buildButton('×'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('1'),
                    _buildButton('2'),
                    _buildButton('3'),
                    _buildButton('-'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('.'),
                    _buildButton('0'),
                    _buildButton('00'),
                    _buildButton('+'),
                  ],
                ),
                Row(
                  children: [
                    _buildButton('C'),
                    _buildButton('='),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
