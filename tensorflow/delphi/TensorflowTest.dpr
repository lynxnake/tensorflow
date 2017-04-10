program TensorflowTest;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Tensorflow in 'Tensorflow.pas';

begin
  try
    { TODO -oUser -cConsole Main :
      import tensorflow as tf
      hello = tf.constant('Hello, TensorFlow!')
      sess = tf.Session()
      print(sess.run(hello))
    }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
