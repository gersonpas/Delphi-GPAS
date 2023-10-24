program Loterias_CEF;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {Form1},
  uJogos in 'uJogos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
