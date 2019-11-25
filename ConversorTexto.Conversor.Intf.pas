unit ConversorTexto.Conversor.Intf;

interface

uses
  System.SysUtils, System.Classes;

type
  ETextoVazio = Exception;

  IConversor = interface
    function Converter: String;

    function GetTexto : String;
    procedure SetTexto(AValue: String);

    property Texto : String read GetTexto write SetTexto;
  end;

  IConversorFactory = interface
    function getConversorPrimeiraMaiuscula : IConversor;
    function getConversorInvertido : IConversor;
    function getConversorOrdenado : IConversor;
  end;

implementation

end.
