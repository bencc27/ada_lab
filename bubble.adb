with Text_IO;
package body Bubble is
   function Less (X: in T; Y: in T) return boolean is
   begin

   end Less;

   procedure Sort (Arr : in out T_Array) is
	 switch : Boolean;
         chang : T;

   begin
      loop
         switch := false;
         for j in Arr'Range loop
            if Less (Arr(j), Arr(j+1)) then
               chang := Arr(j);
               Arr(j) := Arr(j+1);
               Arr(j+1) := chang;
               switch := true;
            end if;
         end loop;
         exit when switch = false;
      end loop;
   end Sort;

   procedure Print_Array (Arr : in T_Array) is
   begin
      for i in Arr'Range loop
         Text_IO.Put_Line (Print (Arr(i)));
      end loop;
   end Print_Array;

end Bubble;
