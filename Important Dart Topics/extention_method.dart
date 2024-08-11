import 'dart:ffi';

extension stringReversal on String {
  String stringReverse() {
    return this.split('').reversed.join('');
  }

}

void main() {
  String s = "zakaria";
  print(s.stringReverse());
}

