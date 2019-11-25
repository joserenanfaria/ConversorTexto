unit ConversorTextoTestes.ConverteInvertido;

interface
uses
  DUnitX.TestFramework,
  ConversorTexto.Factory,
  ConversorTexto.Conversor.Intf;

type

  [TestFixture]
  TConverteInvertidoTeste = class(TObject)
  private
    FConverteInvertido : IConversor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TesteInverterString;
  end;

implementation

{ TConversorInvertidoTeste }

procedure TConverteInvertidoTeste.Setup;
var
  _ConversorFactory : IConversorFactory;
begin
  _ConversorFactory := TConversorFactory.Create;
  FConverteInvertido := _ConversorFactory.getConversorInvertido;
end;

procedure TConverteInvertidoTeste.TearDown;
begin

end;


procedure TConverteInvertidoTeste.TesteInverterString;
var
  Resultado: string;
begin
  FConverteInvertido.Texto := 'teste';

  Resultado := FConverteInvertido.Converter;
  Assert.IsTrue(
    Resultado='etset',
    'FConverteInvertido.Converter Retornou um erro');
end;

initialization
  TDUnitX.RegisterTestFixture(TConverteInvertidoTeste);
end.
