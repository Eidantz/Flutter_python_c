
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

typedef AddFunction = Pointer<Double> Function(Pointer<Double> a);
typedef AddFunctionDart = Pointer<Double> Function(Pointer<Double> a);

class FFIBridge {
  AddFunctionDart _getadd;
  FFIBridge() {
    final dl = Platform.isAndroid
        ? DynamicLibrary.open('libdoit.so')
        : DynamicLibrary.process();
    //_getadd = dl.lookupFunction<AddFunction, AddFunctionDart>('native_add2');
    final addPointer = dl.lookup<NativeFunction<AddFunction>>('doit');
    _getadd = addPointer.asFunction<AddFunctionDart>();
  }
  double getadd(int1, int2) {
    final p = calloc<Double>(2);
    p[0] = int1;
    p[1] = int2;
    final res = _getadd(p);
    final double result = res[1];

    return result;
  }
}