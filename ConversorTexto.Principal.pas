unit ConversorTexto.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlPrincipal: TPanel;
    pnlLeft: TPanel;
    memTextoOriginal: TMemo;
    lblTextoOriginal: TLabel;
    pnlOpcoes: TPanel;
    rgOpcoes: TRadioGroup;
    pnlRight: TPanel;
    lblTextoConvertido: TLabel;
    memTextoConvertido: TMemo;
    btnConverter: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

end.
