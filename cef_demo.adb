pragma Ada_2022;
with Ada.Numerics;
with Ada.Numerics.Complex_Elementary_Functions;
package body CEF_Demo is
   package CEF renames Ada.Numerics.Complex_Elementary_Functions;
   function Near_Minus_One return Boolean is
      Z : constant CT.Complex :=
        CEF.Exp (CT.Compose_From_Cartesian (0.0, Ada.Numerics.Pi));
   begin
      return abs (Z.Re + 1.0) < 1.0E-5 and then abs (Z.Im) < 1.0E-5;
   end Near_Minus_One;
   function Sqrt_Of_I_Ok return Boolean is
      I : constant CT.Complex := CT.Compose_From_Cartesian (0.0, 1.0);
      S : constant CT.Complex := CEF.Sqrt (I);
      --  Sqrt(i) ~ (1+i)/sqrt(2)
      T : constant Float := 0.70710678;
   begin
      return abs (S.Re - T) < 1.0E-4 and then abs (S.Im - T) < 1.0E-4;
   end Sqrt_Of_I_Ok;
end CEF_Demo;
