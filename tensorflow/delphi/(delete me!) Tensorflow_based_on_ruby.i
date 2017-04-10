%module Tensorflow
%include "typemaps.i"
// TODO : %include "std_vector.i"
%include "std_string.i"
// TODO : %include "std_complex.i"
// TODO : %include "std_pair.i"

// %{
// #include "./files/tensor_c_api.h"
// #include "./files/version.h"
// #include "./files/tf_tensor_helper.h"
// #include "./files/tf_tensor_helper.cc"
// %}

namespace std {
   %template(String_Vector)       vector<string>;
   %template(Integer_Vector)      vector<long long>;
   %template(Tensor_Vector)       vector<TF_Tensor*>;
   %template(TF_Output_vector)    vector<TF_Output>;
   %template(TF_Operation_vector) vector<TF_Operation*>;
   %template(Complex_Vector)      vector<std::complex<double> >;
}

%include "./files/version.h"
%include "./files/tensor_c_api.h"
%include "./files/tf_tensor_helper.h"
%include "./files/tf_tensor_helper.cc"

%include "carrays.i"
%array_class(long long, Long_long);
%array_class(int, Int);
%array_class(float, Float);
%array_class(double, Double);
%array_class(char, Character);