unit FormCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  TestFramework, Calc,System.Actions, Vcl.ActnList;

type
  TForm4 = class(TForm)
    edtNum1: TEdit;
    edtNum2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btSomar: TButton;
    btSubt: TButton;
    btMulti: TButton;
    btDivi: TButton;
    btExpo: TButton;
    btRaiz: TButton;
    MemoResult: TMemo;
    btSair: TButton;
    Label4: TLabel;
    procedure btSomarClick(Sender: TObject);
    procedure btSubtClick(Sender: TObject);
    procedure btDiviClick(Sender: TObject);
    procedure btMultiClick(Sender: TObject);
    procedure btRaizClick(Sender: TObject);
    procedure btExpoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
   FCalculadora : Tcalculdora;
   procedure Calcular(Operacao: TOperacao);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
  end;

var
  Form4: TForm4;
  Calculadora : Tcalculdora;

implementation

{$R *.dfm}

{ TForm4 }

procedure TForm4.btDiviClick(Sender: TObject);
begin
  Calcular(opDivisao);
end;

procedure TForm4.btExpoClick(Sender: TObject);
begin
  Calcular(opExponenciacao);
end;

procedure TForm4.btMultiClick(Sender: TObject);
begin
  Calcular(opMultiplicacao);
end;

procedure TForm4.btRaizClick(Sender: TObject);
begin
  Calcular(opRaiz);
end;

procedure TForm4.btSairClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a Saida do programa?','Caixa de Dialogo'
  , MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mrYes then
  close;
end;

procedure TForm4.btSomarClick(Sender: TObject);
begin
  Calcular(opSoma);
end;

procedure TForm4.btSubtClick(Sender: TObject);
begin
  Calcular(opSubtracao);
end;

procedure TForm4.Calcular(Operacao: TOperacao);
var
  Num1,Num2: Real;
begin
  Num1  := StrToFloat(edtNum1.Text);
  Num2  := StrToFloat(edtNum2.Text);
  MemoResult.Lines.Add(FloatToStr(FCalculadora.Calcular(Operacao, Num1, Num2)));
end;

constructor TForm4.Create(AOwner: TComponent);
begin
  inherited;
  FCalculadora := Tcalculdora.Create;
end;

destructor TForm4.Destroy;
begin
  FCalculadora.Free;
  inherited;
end;

end.
