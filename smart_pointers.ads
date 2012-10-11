--  This package provides support for reference counting.
--
--  A Smart_Pointer plays the role of an access type (although it is
--  not an access type), and keeps a reference to the designated
--  entity. When a smart pointer goes out of scope, the designated
--  entity's reference count is automatically decremented.
--
--  When the reference count reaches 0, the corresponding entity is freed.

with Ada.Finalization;

generic
   type Encapsulated is private;
package Smart_Pointers is
   type Encapsulated_Access is access all Encapsulated;

   type Ref is tagged private; --  The smart pointer type
   Null_Ref : constant Ref;    --  Null reference

   procedure Set (Self : in out Ref; Data : Encapsulated);
   procedure Set (Self : in out Ref; Data : access Encapsulated);
   --  Replace the current contents of Self.
   --  Data is adopted by the smart pointer, and should no longer be
   --  referenced directly elsewhere. The reference count of Data is
   --  incremented by 1.
   --  Typical code looks like:
   --      Tmp := new Encapsulated;
   --      Set (Ptr, Tmp);
   --  (You can't do
   --      Set (Ptr, new Encapsulated);
   --   for visibility reasons)

   function Get (P : Ref) return Encapsulated_Access;
   pragma Inline (Get);
   --  Return a pointer the data pointed to by P.
   --  We return an access type for efficiency reasons. However, the
   --  returned value must not be freed by the caller.

   overriding function "=" (P1, P2 : Ref) return Boolean;
   --  Whether the two pointers point to the same data

   function Get_Refcount (Self : Ref) return Natural;
   --  Return the current reference count.
   --  This is mostly intended for debug purposes.

private
   type Refcounted is record
      Data : Encapsulated_Access;
      Counter : Integer := 0;
   end record;
   type Refcounted_Access is access all Refcounted;

   type Ref is new Ada.Finalization.Controlled with record
      Entity : Refcounted_Access;
   end record;

   overriding procedure Finalize (P : in out Ref);
   overriding procedure Adjust   (P : in out Ref);
   --  Take care of reference counting

   Null_Ref : constant Ref :=
     (Ada.Finalization.Controlled with Entity => null);

end Smart_Pointers;
