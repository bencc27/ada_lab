with Ada.Numerics;
with Text_IO;
procedure Pi is
   package Int_IO is new Text_IO.Float_IO (Float);
   Radio : Float;
   Iterac : Float;
   function Volume (Rad : in Float) 
      return Float is
      Result : Float;
   begin
      Result := Rad ** 3;
      Result := Result * Ada.Numerics.Pi;
      Result := Float (4) / Float(3) * Result;
      return Result;--  (4 * Pi / 3) * Rad ** 3;
   end Volume;
   function Surface (Rad : in Float) 
      return Float is
   begin
      return Rad ** 2 * Ada.Numerics.Pi;
   end Surface;

  
   generic type T is digits <>;
   function Compute_Pi_Generic (Iter : in Natural ) return T;
   function Compute_Pi_Generic (Iter : in Natural ) return T is
   begin
      if Iter = 0 then
         return T(4);
      else
         return T(4 * (-1) ** Iter) / T(2 * Iter + 1) + Compute_Pi_Generic (Iter - 1);
      end if;
   end Compute_Pi_Generic;

   function My_Compute_Pi is new Compute_Pi_Generic (Float);

   function Compute_Pi (It : in Integer) 
      return Float is
   begin
      if It = 0 then
         return Float(4);
      else
         return Float(4 * (-1) ** It) / Float(2 * It + 1) + Compute_Pi (It - 1);
      end if;
   end Compute_Pi;
begin
   Text_IO.Put ("Ecris le radio: ");
   Int_IO.Get (Radio);
   Text_IO.Put ("Tu as écrit");
   Int_IO.Put (Radio);
   Text_IO.Put_Line ("");
   Text_IO.Put("Le volume est: ");
   Int_IO.Put ( Volume(Radio));
   Text_IO.Put_Line ("");
   Text_IO.Put("Le volume est: ");
   Int_IO.Put ( Surface(Radio));
   Text_IO.Put_Line ("");
   Text_IO.Put ("Ecris les iterations: ");
   Int_IO.Get (Iterac);
   Text_IO.Put_Line ("");
   Text_IO.Put("Valeur calculé pour pi: ");
   Int_IO.Put ( My_Compute_Pi(Natural(Iterac)));
   Text_IO.Put_Line ("");
   Text_IO.Put("Valeur réel de pi: ");
   Int_IO.Put ( Ada.Numerics.Pi);
end Pi;

