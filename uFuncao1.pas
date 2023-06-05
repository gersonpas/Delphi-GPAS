unit uFuncao1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UFuncoes;

type
  TuPrincipal = class(TForm)
    btnFuncao: TButton;
    procedure btnFuncaoClick(Sender: TObject);
  private
    function soma (a,b : integer) : integer;
  public
    { Public declarations }
  end;

var
  uPrincipal: TuPrincipal;

implementation

{$R *.dfm}

{ TuPrincipal }

procedure TuPrincipal.btnFuncaoClick(Sender: TObject);
begin
         ShowMessage(mes_extenso());


end;

function TuPrincipal.soma(a, b: integer): integer;
begin

end;

end.
