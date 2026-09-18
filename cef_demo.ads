--  Ada 2022 topic: Ada.Numerics.Complex_Elementary_Functions.
pragma Ada_2022;
with Ada.Numerics.Complex_Types;
package CEF_Demo is
   package CT renames Ada.Numerics.Complex_Types;
   --  Exp(i*Pi) should be near -1+0i (Euler).
   function Near_Minus_One return Boolean;
   function Sqrt_Of_I_Ok return Boolean;
end CEF_Demo;
