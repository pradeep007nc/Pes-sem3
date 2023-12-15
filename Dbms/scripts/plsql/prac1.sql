<<OUTER_BLOCK>>
DECLARE
   var1 NUMBER := 1;

   BEGIN
   <<INNER_BLOCK>>
   DECLARE
      var1 NUMBER := 3;
   BEGIN
      dbms_output.put_line(outer_block.var1 - inner_block.var1);
   END;
END;

<<outer>>
DECLARE 
    VAR1 NUMBER := 10;
    VAR2 NUMBER := 20;
    NUM3 INTEGER;
    ANS REAL;
    BEGIN
        NUM3 := VAR1 + VAR2;
        dbms_output.put_line('Value of num3' ||NUM3);
        ANS := 70/3.0;
        dbms_output.put_line('value of ans' ||ANS);
    END;


<<CONSTANTS>>
DECLARE
    VAR1 CONSTANT NUMBER := 120;
    BEGIN 
        VAR2 NUMBER := 10;
        dbms_output.put_line('value of var2' ||VAR2)
        dbms_output.put_line('value of var2' ||VAR1)
        var1 := 10;
        dbms_output.put_line('value of var2' ||VAR1)
    END;
END;

<<VAR declaration>>
DECLARE
    SUBTYPE NAME IS CHAR(20);
    SUBTYPE MESSAGE IS VARCHAR2(100);
    SALUTATION NAME;
    GREETINGS MESSSAGE;
BEGIN
    SALUTATION := 'READER';
    GREETINGS := 'WELCOME NIGGER';
    dbms_output.put_line('hello' || SALUTATION || GREETINGS);
END

