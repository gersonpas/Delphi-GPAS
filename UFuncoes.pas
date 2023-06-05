unit UFuncoes;

interface
uses Sysutils, dialogs;

function mes_extenso(): String;

implementation
   function mes_extenso(): String;
   var
      lemes, mes : String;
    begin

        lemes := copy(dateToStr(date),7,4);        //   05/06/2023
        if lemes = '06' then
            mes := 'Junho'

        else if lemes = '02' then
            mes := 'Fevereiro'

        else if lemes = '03' then
            mes := 'Março'

        else
            mes := 'Não Sei!';

            mes_extenso := mes;
            ShowMessage(lemes);
           ShowMessage(dateToStr(date));

    end;

end.
