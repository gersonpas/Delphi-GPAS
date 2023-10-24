unit uJogos;


interface

 type

     { JogosCef }

 JogosCef = class

          private
             tipoLoteria : String;
             qtdeDezena :  Integer;
             Dezenas :     array of Integer;

          protected

         public
            constructor CriaObjeto;
            procedure  setTipoLoteria(pTipoLoto : String);
            procedure  setQtdeDezena(pQtdeDez : Integer);
            function   getTipoLoteria : String;
            function   getQtdeDezena : Integer;
            destructor Destruir;

         var
            pLigaDez : String;

end;
implementation

{ JogosCef }


constructor JogosCef.CriaObjeto;
begin

 end;

 destructor JogosCef.Destruir;

begin

end;


function JogosCef.getQtdeDezena: Integer;
begin
           result := qtdeDezena;

end;

function JogosCef.getTipoLoteria: String;
begin
           result := '                   ' + tipoLoteria;

end;

procedure JogosCef.setQtdeDezena(pQtdeDez: Integer);
begin
        qtdeDezena :=  pQtdeDez;

end;

procedure JogosCef.setTipoLoteria(pTipoLoto: String);
begin

              tipoLoteria  :=  pTipoLoto;

    end;

end.
