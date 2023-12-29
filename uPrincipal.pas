unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uJogos, Vcl.Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ComboJogos: TComboBox;
    MemResult: TMemo;
    Label4: TLabel;
    ComQtdeDezena: TComboBox;
    btnGeraJogos: TButton;
    ListBoxResult: TListBox;
    btnGerar: TButton;
    Label2: TLabel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Arquivo2: TMenuItem;
    CEF1: TMenuItem;
    CEF2: TMenuItem;
    Sobre1: TMenuItem;
    Sobre2: TMenuItem;
    Verso1: TMenuItem;
    S1: TMenuItem;
    procedure btnGeraJogosClick(Sender: TObject);
    procedure ComboJogosChange(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure ComQtdeDezenaChange(Sender: TObject);
    procedure CEF2Click(Sender: TObject);
    procedure Sobre2Click(Sender: TObject);
    procedure Verso1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure CEF1Click(Sender: TObject);
    procedure Arquivo2Click(Sender: TObject);

  private
    { Private declarations }
       i : Integer;
       qtDezenas : Integer;
       criaJogo : JogosCef;
       vetorDezena : array of Integer;

  protected

        public
    { Public declarations }

  end;

var
   numeros: array[1..20] of integer;
   k, j, temp, qdteItens, dezInit, dezFinal, contCartela : integer;
   repetido  : boolean;
   mesesAno : Array[0..11] of String = ('Janeiro','Fevereiro','Março'
   ,'Abril', 'Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
     pos : Int32;
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Arquivo2Click(Sender: TObject);
begin
      messagedlg('Em 1784 surge no Brasil a primeira loteria como ' +
       'meio para captar recursos usando o conceito de “contribuição '+
       ' voluntária”  os quais foram utilizados na construção da casa de Câmara'
       + ' e Cadeia de Vila Rica, em Minas Gerais.. '
        + 'A primeira regulamentação das loterias foi feita pelo imperador' +
        ' D. Pedro II, que implementou as primeiras normas para os jogos, por meio do decreto '
         + ' nº 357, de 27 de abril de 1844. Desde então muitas coisas mudaram.'
          + ' Fonte:Internet Google.' ,mtcustom,[mbok],0);
end;

procedure TForm1.btnGeraJogosClick(Sender: TObject);
begin
     criaJogo := JogosCef.CriaObjeto;
     dezFinal := 60;   // inicializa o 1 item do  case self.ComboJogos.ItemIndex of
     contCartela := 0; // inicializa o contador de cartelas
     btnGerar.Visible := true; // Faz o botão Gerar Cartelas tornar-se visível

     criaJogo.setTipoLoteria(self.ComboJogos.Text);
     criaJogo.setQtdeDezena (StrToInt(self.ComQtdeDezena.Text));

     self.MemResult.Text := (criaJogo.getTipoLoteria );

     self.ListBoxResult.Items.Text := '      Aqui os seus Números da Sorte!';

     self.ListBoxResult.Items.Add('         $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $ $');

end;

procedure TForm1.btnGerarClick(Sender: TObject);
begin
        // Preparação para gerar as Dezenas Randomicamente
           contCartela :=  contCartela + 1;
           self.MemResult.Clear;
           self.MemResult.Text := (criaJogo.getTipoLoteria);
           self.MemResult.Lines.Add('  Gerado um Total de ' + (contCartela).ToString + ' Cartelas');

          qtDezenas := (criaJogo.getQtdeDezena);

           case self.ComboJogos.ItemIndex of
                0: dezFinal := 60;
                1: dezFinal := 25;
                2: dezFinal := 80;
                3: dezFinal := 31;
                4: dezFinal := 50;
                5: dezFinal := 50;
           end;

 self.ListBoxResult.Items.Add(  '== Cartela  '  + (contCartela).ToString + ' com ' +
  (criaJogo.getQtdeDezena).ToString  + ' Dezenas ====');

      // Escolhe dezenas aleatórias sem repetição
     begin
       randomize;

       for k := 1 to qtDezenas do begin
        repetido := true;
        while repetido  do
       begin
         numeros[k] := random(dezFinal);
         repetido := false;
         for j := 1 to k-1 do

        if numeros[k] = numeros[j] then begin
          repetido := true;
          break;
        end;
      end;
   end;

 end;

          // Ordena dezenas em ordem crescente usando o algoritmo bubble sort
  for k := 1 to qtDezenas-1 do
    for j := k+1 to qtDezenas do
      if numeros[k] > numeros[j] then begin
        temp := numeros[k];
        numeros[k] := numeros[j];
        numeros[j] := temp;
      end;

          // apresenta as dezenas em ordem crescente
     for k := 1 to qtDezenas do
          self.ListBoxResult.Items.Add(Format('%2da. Dez = ', [k]) + numeros[k].ToString);

          // Caso a opção seja Dia de Sorte: Rotina gera o mês;
            case self.ComboJogos.ItemIndex of
            3:
            begin
            randomize;
            k := random(11);
            self.ListBoxResult.Items.Add(' => Mês da Sorte:=> ' + mesesAno[k]);
            self.ListBoxResult.Items.Add('  ');
         end;

        end;
 end;

procedure TForm1.CEF1Click(Sender: TObject);
begin
   // messagedlg('Aqui estão os principais jogos da CEF.',mtcustom,[mbok],0);
    ShowMessage('Aqui estão os principais jogos da CEF.');
end;

procedure TForm1.CEF2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.ComboJogosChange(Sender: TObject);
begin
       btnGerar.Visible := False;
       case self.ComboJogos.ItemIndex of

              0: {Mega Sena}
                  begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena,15);
                        i := 0;
                      while i <= 14 do

                         begin
                          vetorDezena[i] := 6 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                          ComQtdeDezena.ItemIndex := 0;

                  end;

              1: {'LotoFácil'}
                   begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena,6);
                        i := 0;
                      while i <= 5 do

                         begin
                          vetorDezena[i] := 15 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                          ComQtdeDezena.ItemIndex := 0;
                      end;

              2:  {'Quina'}
                  begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena,11);
                        i := 0;
                      while i <= 10 do

                         begin
                          vetorDezena[i] := 5 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                          ComQtdeDezena.ItemIndex := 0;

                  end;

              3:  {'Dia de Sorte'}

                  begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena, 9);
                        i := 0;
                      while i <= 8 do

                         begin
                          vetorDezena[i] := 7 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                       ComQtdeDezena.ItemIndex := 0;

                  end;

              4:  {'Dupla Sena'}

                   begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena,10);
                        i := 0;
                      while i <= 9 do

                         begin
                          vetorDezena[i] := 6 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                          ComQtdeDezena.ItemIndex := 0;
                     end;

               5:  { Milionária }

                  begin
                        ComQtdeDezena.Clear;
                        setLength(vetorDezena, 7);
                        i := 0;
                      while i <= 6 do

                         begin
                          vetorDezena[i] := 6 + i;
                          ComQtdeDezena.Items.Add(IntToStr(vetorDezena[i]));
                          i := i + 1
                         end;

                          ComQtdeDezena.ItemIndex := 0;

                  end;

         end;
end;

procedure TForm1.ComQtdeDezenaChange(Sender: TObject);
begin
       criaJogo := JogosCef.CriaObjeto;
      criaJogo.setQtdeDezena (StrToInt(self.ComQtdeDezena.Text));
end;

procedure TForm1.S1Click(Sender: TObject);
begin
      messagedlg('Programa elaborado em Object Pascal - com a ferramenta: Delphi 11 da Embarcadero.',mtcustom,[mbok],0);
end;

procedure TForm1.Sobre2Click(Sender: TObject);
begin
  messagedlg('Gerson Pereira de A Sobrinho - Programador Delphi, Python e Java.',mtcustom,[mbok],0);
end;

procedure TForm1.Verso1Click(Sender: TObject);
begin
      messagedlg('Versão 1.5 - Junho 2023',mtcustom,[mbok],0);
end;

end.
