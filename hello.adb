with Ada.Text_IO;

procedure Hello is
   generic type T is private;
   function Less (X : T; Y : T) return Boolean;
   function Less (X : T; Y : T) return Boolean is
   begin
      return X < Y;
   end Less;

begin
   if 2>3 then
      Ada.Text_IO.Put_Line("Hello, world!");
   else

      Ada.Text_IO.Put_Line("Hola, world!");
   end if;
end Hello;
