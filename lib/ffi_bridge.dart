
import 'dart:ffi';
import 'dart:io';
import 'package:ffi/ffi.dart';
class Place extends Struct {
  Pointer<Double> matrix;
}
typedef AddFunction = Place Function(Pointer<Pointer<Double>> a);
typedef AddFunctionDart = Place Function(Pointer<Pointer<Double>> a);

typedef FreeFunction = Void Function(Pointer<NativeType> a);
typedef FreeFunctionDart = void Function(Pointer<NativeType> a);

class FFIBridge {
  AddFunctionDart _getadd;
  FreeFunctionDart _freeadd;
  FFIBridge() {
    final dl = Platform.isAndroid
        ? DynamicLibrary.open('libdoit.so')
        : DynamicLibrary.process();
    //_getadd = dl.lookupFunction<AddFunction, AddFunctionDart>('native_add2');
    final addPointer = dl.lookup<NativeFunction<AddFunction>>('doit');
    _getadd = addPointer.asFunction<AddFunctionDart>();
    final freePointer = dl.lookup<NativeFunction<FreeFunction>>
    ('releasepointer');
    _freeadd = freePointer.asFunction<FreeFunctionDart>();
  }

  Pointer<Pointer<Double>> create(List<List<double>> data) {
    final numRows = 2;
    final numCols = 2;
    final ptr = calloc<Pointer<Double>>(sizeOf<Pointer<Double>>() * numRows);
    for(int i=0; i<numRows; i++) {
      final row = calloc<Double>(sizeOf<Double>() * numCols);
      for(int j=0; j< numCols;j++) {
        row.elementAt(j).value = data[i][j];
      }
      ptr.elementAt(i).value = row;
    }
    return ptr;
  }


  double getadd(double double1,double double2) {
    // final p = calloc.allocate<Double>(4 * 8);
    final p = create([[double1,double1], [double2,double2]]);
    // p[0] = 1.0;
    // p[1] = 2.0;
    // p[2] = 3.0;
    // p[3] = 4.0;
    
    final res = _getadd(p);
    final mat = res.matrix;
    final result = mat.elementAt(3);
    final myValue = result.value;
    _freeadd(res.matrix);
    /*for(int i = 0; i < 2; i++) {
      for(int j = 0; j < 2; j++) {
        calloc.free(p.elementAt(i).elementAt(j));
      }
      calloc.free(p.elementAt(i));
    }*/
    calloc.free(p);
    return myValue;
  }
}