unit ConversorTextoTestes.ConvertePrimeiraMaiuscula;

interface
uses
  DUnitX.TestFramework,
  ConversorTexto.Factory,
  ConversorTexto.Conversor.Intf;

type

  [TestFixture]
  TConvertePrimeiraMaiusculaTeste = class(TObject)
  private
    FConvertePrimeiraMaiuscula : IConversor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestePrimeiraMaiusculaString;
  end;

implementation

{ TConversorPrimeiraMaiusculaTeste }

procedure TConvertePrimeiraMaiusculaTeste.Setup;
var
  _ConversorFactory : IConversorFactory;
begin
  _ConversorFactory := TConversorFactory.Create;
  FConvertePrimeiraMaiuscula := _ConversorFactory.getConversorPrimeiraMaiuscula;
end;

procedure TConvertePrimeiraMaiusculaTeste.TearDown;
begin

end;

procedure TConvertePrimeiraMaiusculaTeste.TestePrimeiraMaiusculaString;
var
  Resultado: string;
begin
  FConvertePrimeiraMaiuscula.Texto := 'teste';

  Resultado := FConvertePrimeiraMaiuscula.Converter;
  Assert.IsTrue(
    Resultado='Teste',
    'FConvertePrimeiraMaiuscula.Converter Retornou um erro');
end;

initialization
  TDUnitX.RegisterTestFixture(TConvertePrimeiraMaiusculaTeste);

end.
