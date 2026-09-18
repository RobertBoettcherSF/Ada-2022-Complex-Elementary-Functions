pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with CEF_Demo;
procedure Tests is
begin
   Assert (CEF_Demo.Near_Minus_One);
   Put_Line ("PASS Exp(i*Pi) ~ -1");
   Assert (CEF_Demo.Sqrt_Of_I_Ok);
   Put_Line ("PASS Sqrt(i)");
   Put_Line ("All Complex_Elementary_Functions topic tests passed.");
end Tests;
