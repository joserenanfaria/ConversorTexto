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
    procedure btnConverterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  ConversorTexto.Conversor.Intf,
  ConversorTexto.Factory;

procedure TfrmPrincipal.btnConverterClick(Sender: TObject);
var
  _Conversor : IConversor;
  _ConversorFactory : IConversorFactory;

begin
  _ConversorFactory := TConversorFactory.Create;

  case rgOpcoes.ItemIndex of
  0: _Conversor := _ConversorFactory.getConversorInvertido;
  1: _Conversor := _ConversorFactory.getConversorPrimeiraMaiuscula;
  2: _Conversor := _ConversorFactory.getConversorOrdenado;
    else
    Exit;
  end;

  _Conversor.Texto := memTextoOriginal.Lines.Text;

  try
    memTextoConvertido.Lines.Text := _conversor.Converter;
  except
    On e:exception do
      ShowMessage(
        'Ocorreu um erro ao realizar conversão' +
        #13 +
        'Entre em contato com o desenvolvedor.');
  end;
end;

end.
