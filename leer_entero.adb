with Text_IO;
procedure Leer_Entero is
   package Int_IO is new Text_IO.Integer_IO (Integer);
   Numero : Integer;
begin
   Text_IO.Put ("Dame un numero entero: ");
   Int_IO.Get (Numero);
   Text_IO.Put ("Escribiste el numero");
   Int_IO.Put (Numero);
end Leer_Entero;

