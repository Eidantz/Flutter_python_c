
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';

typedef AddFunction = Pointer<Double> Function(Pointer<Pointer<Double>> a);
typedef AddFunctionDart = Pointer<Double> Function(Pointer<Pointer<Double>> a);

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

  Pointer<Double> floatListToArrayPointer(List<double> list) {
  final ptr = calloc<Double>(list.length);
  ptr.asTypedList(list.length).setAll(0, list);
  return ptr;
}
  double getadd(int1, int2) {
    final Pointer<Pointer<Double>> p = calloc();
    p[0][0] = int1;
    p[1][0] = int2;
    p[0][1] = int1;
    p[1][1] = int2;
    final res = _getadd(p);
    final double result = res[1];
    calloc.free(p);
    return result;
  }
}