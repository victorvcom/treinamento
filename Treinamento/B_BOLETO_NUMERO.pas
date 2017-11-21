unit B_BOLETO_NUMERO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask;

type
  TF_BOLETO_SEQ = class(TForm)
    GBoletos: TGroupBox;
    MNumero: TMaskEdit;
    Label1: TLabel;
    Ch1: TCheckBox;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_BOLETO_SEQ: TF_BOLETO_SEQ;

implementation

uses U_EBoleto2;

{$R *.DFM}

procedure TF_BOLETO_SEQ.Button1Click(Sender: TObject);
begin
    With F_EmissaoDeBoleto do
    Begin
        Q_Pesquisa.Edit;
          Q_Pesquisa['SEQ_BOL'] := StrToInt (MNumero.Text);
        Q_Pesquisa.Post;

        ImpBol := Ch1.Checked;
    End;
        Close;
        
end;

end.
