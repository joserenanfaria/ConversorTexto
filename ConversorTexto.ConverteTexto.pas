unit ConversorTexto.ConverteTexto;

interface

uses
    ConversorTexto.Conversor.Intf, System.Classes;

type
  TConverteTexto = class(TInterfacedObject, IConversor)
  private
    FTexto: String;
    function GetTexto: String;
    procedure SetTexto(AValue: String);
  public
    property Texto : String read GetTexto write SetTexto;
    function Converter : String; virtual; abstract;
  end;

implementation

uses
  System.SysUtils, Winapi.Windows;

{ TConverteTexto }

function TConverteTexto.GetTexto: String;
begin
  Result := FTexto;
end;

procedure TConverteTexto.SetTexto(AValue: String);
begin
  if length(Trim(AValue)) = 0 then
    raise ETextoVazio.Create('Texto Vazio');

  FTexto := AValue;
end;

end.
