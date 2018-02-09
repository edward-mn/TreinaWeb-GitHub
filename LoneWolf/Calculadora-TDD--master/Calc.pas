unit Calc;

interface
uses
  System.Classes, Math;
type
  TOperacao = (opSoma, opSubtracao, opDivisao, opMultiplicacao, opRaiz, opExponenciacao);
  Tcalculdora = Class
    function Soma(Num1,Num2 : Real):Real;
    function Subtracao(Num1,Num2 : Real):Real;
    function Divisao(Num1,Num2 : Real):Real;
    function Multiplicacao(Num1,Num2 : Real):Real;
    function Raiz(Num1,Num2 : Real):Real;
    function Exponenciacao(Num1,Num2 : Real):Real;
    function Calcular(Operacao: TOperacao; N1, N2: Real): Real;
  End;

implementation

{ Tcalculdora }

function Tcalculdora.Calcular(Operacao: TOperacao; N1, N2: Real): Real;
begin
  case Operacao of
    opSoma: Exit(Soma(N1, N2));
    opSubtracao: Exit(Subtracao(N1, N2));
    opDivisao : Exit(Divisao(N1, N2));
    opMultiplicacao : Exit(Multiplicacao(N1, N2));
    opRaiz : Exit(Raiz(N1,N2));
    opExponenciacao : Exit(Exponenciacao(N1, N2));
  end;
end;

function Tcalculdora.Divisao(Num1, Num2: Real): Real;
begin
  Result :=  Num1 / Num2;
end;

function Tcalculdora.Exponenciacao(Num1,Num2: Real): Real;
begin
 Result := Power(Num1,Num2);
end;

function Tcalculdora.Multiplicacao(Num1, Num2: Real): Real;
begin
  Result := Num1 * Num2;
end;

function Tcalculdora.Raiz(Num1, Num2: Real): Real;
begin
  Num2 := 1/Num2;
  Result := Power(Num1,Num2);
end;

function Tcalculdora.Soma(Num1, Num2: Real): Real;
begin
   Result := Num1 + Num2;
end;

function Tcalculdora.Subtracao(Num1, Num2: Real): Real;
begin
  Result := Num1 - Num2;
end;

end.
