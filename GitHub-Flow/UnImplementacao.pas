unit UnImplementacao;

interface

uses
  UnDisplay;

type
  TImplementação = class (TInterfacedObject, IDisply)
  public
    TImplementação : IDisply;
    function GetDiscription: string;
    constructor Create(Cria :IDisply);
  end;

implementation

constructor TImplementação.Create(Cria: IDisply);
begin
  TImplementação := Cria;
end;

function TImplementação.GetDiscription: string;
begin
  Result := 'Metódo GitHub flow';
end;

end.
