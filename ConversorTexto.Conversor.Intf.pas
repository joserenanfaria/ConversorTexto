unit ConversorTexto.Conversor.Intf;

interface

type

  IConversor = interface
    function Converter : String;

    function GetTexto : String;
    procedure SetTexto(const AValue: String);

    property Texto : String read GetTexto write SetTexto;
  end;

  IConversorFactory = interface
    function getConversor : IConversor;
  end;

implementation

end.
