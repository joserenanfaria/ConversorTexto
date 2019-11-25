unit ConversorTexto.ConverteOrdenado;

interface

uses
  ConversorTexto.ConverteTexto, System.Classes;

type

  TConverteOrdenado = class(TConverteTexto)
    function Converter : String; override;
    class function New : TConverteOrdenado;
  end;

implementation

uses
  System.SysUtils;

{ TConverteOrdenado }

function TConverteOrdenado.Converter: String;

  {$REGION 'Função Ordernar letras string'}

  function OrdernarLetrasString(const AValue: String) : String;
  var
    _listaLetras : TStringList;
    _tempText : String;
    i : integer;
  begin
    try
      _listaLetras := TStringList.Create;

      for i := 1 to length(AValue) do
      begin
        _listaLetras.Add(AValue[i]);
      end;

      _listaLetras.Sorted := True;

      for i := 0 to pred(_listaLetras.count) do
      begin
       _tempText := _tempText + _listaLetras.Strings[i];
      end;

      Result := _tempText;
    finally
      _listaLetras.Free;
    end;
  end;

  {$ENDREGION}

begin
  Result := Trim(OrdernarLetrasString(Self.Texto));
end;

class function TConverteOrdenado.New: TConverteOrdenado;
begin
  Result := Self.Create;
end;

end.
