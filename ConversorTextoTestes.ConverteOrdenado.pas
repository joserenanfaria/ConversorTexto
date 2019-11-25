unit ConversorTextoTestes.ConverteOrdenado;

interface
uses
  DUnitX.TestFramework,
  ConversorTexto.Factory,
  ConversorTexto.Conversor.Intf;

type

  [TestFixture]
  TConverteOrdenadoTeste = class(TObject)
  private
    FConverteOrdenado : IConversor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TesteOrdenarLetrasString;
  end;

implementation

{ TConversorOrdenadoTeste }

procedure TConverteOrdenadoTeste.Setup;
var
  _ConversorFactory : IConversorFactory;
begin
  _ConversorFactory := TConversorFactory.Create;
  FConverteOrdenado := _ConversorFactory.getConversorOrdenado;
end;

procedure TConverteOrdenadoTeste.TearDown;
begin
end;


procedure TConverteOrdenadoTeste.TesteOrdenarLetrasString;
var
  Resultado: string;
begin
  FConverteOrdenado.Texto := 'teste';

  Resultado := FConverteOrdenado.Converter;
  Assert.IsTrue(
    Resultado='eestt',
    'FConverteOrdenado.Converter Retornou um erro');
end;

initialization
  TDUnitX.RegisterTestFixture(TConverteOrdenadoTeste);

end.
