unit ConversorTexto.ConverteInvertido;

interface

uses
  ConversorTexto.ConverteTexto, System.Classes;

type
  TConverteInvertido = class(TConverteTexto)
    function Converter : String; override;
    class function New : TConverteInvertido;
  end;

implementation

uses
  StrUtils;

{ TConverteInvertido }

function TConverteInvertido.Converter: String;
begin
  Result := ReverseString(Self.Texto);
end;

class function TConverteInvertido.New: TConverteInvertido;
begin
  Result := Self.Create;
end;

end.
