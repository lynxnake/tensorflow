%module Tensorflow

%include "typemaps.i"

%import "tensorflow/core/lib/core/status.h"

struct TF_Status {
  Status status;
};

struct TF_Tensor {
  TF_DataType dtype;
  TensorShape shape;
  TensorBuffer* buffer;
};


%rename (_type) type; // To fix c_api.h(606) : Warning 314:  'type' is an ocaml keyword ...

// TODO : c_api.h(878) : Warning 451: Setting a const char * variable may leak memory.
// %warnfilter(451) TF_WhileParams; 

%ignore TF_NewTensor;

%include "tensorflow/c/c_api.h"


%rename ("%s") TF_NewTensor; //unignore TF_NewTensor

typedef void (*workarounded_function_pointer_01) (void* data, size_t len, void* arg);

extern TF_Tensor* TF_NewTensor(TF_DataType, const int64_t* dims, int num_dims,
							   void* data, size_t len,
							   workarounded_function_pointer_01 deallocator,
							   void* deallocator_arg);
