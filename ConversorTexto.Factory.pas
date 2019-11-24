unit ConversorTexto.Factory;

interface

uses
  ConversorTexto.Conversor.Intf;

type
  TConversorFactory = class(TInterfacedObject, IConversorFactory)
    function GetConversor : IConversor;
  end;

implementation

end.
