program ConversorTexto;

uses
  Vcl.Forms,
  ConversorTexto.Principal in 'ConversorTexto.Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
