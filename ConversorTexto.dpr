program ConversorTexto;

uses
  Vcl.Forms,
  ConversorTexto.Principal in 'ConversorTexto.Principal.pas' {frmPrincipal},
  ConversorTexto.Conversor.Intf in 'ConversorTexto.Conversor.Intf.pas',
  ConversorTexto.ConverteTexto in 'ConversorTexto.ConverteTexto.pas',
  ConversorTexto.ConvertePrimeiraMaiuscula in 'ConversorTexto.ConvertePrimeiraMaiuscula.pas',
  ConversorTexto.ConverteOrdenado in 'ConversorTexto.ConverteOrdenado.pas',
  ConversorTexto.Factory in 'ConversorTexto.Factory.pas',
  ConversorTexto.ConverteInvertido in 'ConversorTexto.ConverteInvertido.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook<>0;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
