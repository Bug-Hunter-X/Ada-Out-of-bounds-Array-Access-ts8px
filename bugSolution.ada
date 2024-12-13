```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
begin
   for I in My_Arr'Range loop
      Put_Line(My_Arr(I)'Image);
   end loop;
   --The following is corrected by checking index first
   if 1 <= 11 and 11 <= My_Arr'Last then
       Put_Line(My_Arr(11)'Image); 
   else
       Put_Line("Index out of bounds");
   end if;
end Example;
```