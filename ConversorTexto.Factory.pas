unit ConversorTexto.Factory;

interface

uses
  ConversorTexto.Conversor.Intf,
  ConversorTexto.ConverteTexto,
  ConversorTexto.ConverteInvertido,
  ConversorTexto.ConvertePrimeiraMaiuscula,
  ConversorTexto.ConverteOrdenado;


type
  TConversorFactory = class(TInterfacedObject, IConversorFactory)
    function getConversorPrimeiraMaiuscula : IConversor;
    function getConversorInvertido : IConversor;
    function getConversorOrdenado : IConversor;
  end;

implementation


{ TConversorFactory }

function TConversorFactory.getConversorInvertido: IConversor;
begin
  Result := TConverteInvertido.New;
end;

function TConversorFactory.getConversorOrdenado: IConversor;
begin
  Result := TConverteOrdenado.New;
end;

function TConversorFactory.getConversorPrimeiraMaiuscula: IConversor;
begin
  Result := TConvertePrimeiraMaiuscula.New;
end;

end.
