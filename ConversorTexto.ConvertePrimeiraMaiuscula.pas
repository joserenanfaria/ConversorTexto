unit ConversorTexto.ConvertePrimeiraMaiuscula;

interface

uses
  ConversorTexto.ConverteTexto, System.Classes;

type

  TConvertePrimeiraMaiuscula = class(TConverteTexto)
    function Converter : String; override;
    class function New : TConvertePrimeiraMaiuscula;
  end;

implementation

uses
  System.SysUtils;

{ TConvertePrimeiraMaiuscula }

function TConvertePrimeiraMaiuscula.Converter: String;

  {$REGION 'Função Primeira Letra Maiuscula'}

  function PrimeiraLetraMaiuscula(const AValue : String) : String;
  var
     i : integer;
  begin
    Result := AValue;
    for i := 0 to pred(length(AValue)) do
    begin
      if i = 1 then
      Result[i] := UpCase(Result[i]);
    end;
  end;

  {$ENDREGION}

var
  _listaPalavras : TStringList;
  _textoCompleto : String;
  i: Integer;
  _delimitador : Char;

begin
  _delimitador := ' ';
  try
    _listaPalavras := TStringList.Create;
    _listaPalavras.Delimiter := _delimitador;

    _listaPalavras.DelimitedText := Self.Texto;
    
    for i := 0 to pred(_listaPalavras.Count) do
    begin
      if (i > 0) AND (i <> _listaPalavras.Count) then
       _textoCompleto := 
        _textoCompleto + _delimitador;     
        
      _textoCompleto := 
        _textoCompleto + 
        PrimeiraLetraMaiuscula(_listaPalavras.Strings[i]);
    end;

  finally
    _listaPalavras.Free;
  end;


  Result := _textoCompleto;
end;

class function TConvertePrimeiraMaiuscula.New: TConvertePrimeiraMaiuscula;
begin
  Result := Self.Create;
end;

end.
