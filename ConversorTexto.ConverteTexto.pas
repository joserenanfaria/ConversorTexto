unit ConversorTexto.ConverteTexto;

interface

uses
    ConversorTexto.Conversor.Intf, System.SysUtils;

type
  ETextoVazio = Exception;

  TConverteTexto = class(TInterfacedObject, IConversor)
    function GetTexto : String;
    procedure SetTexto(const AValue: String);

    function Converter : String; abstract;
    property Texto : String read GetTexto write SetTexto;
  end;

implementation

{ TConverteTexto }

function TConverteTexto.GetTexto: String;
begin
end;

procedure TConverteTexto.SetTexto(const AValue: String);
begin
  if length(Trim(AValue)) = 0 then
    raise ETextoVazio.Create('Texto em branco');
end;

end.
