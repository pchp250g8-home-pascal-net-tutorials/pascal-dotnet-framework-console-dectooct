uses
  System;
const
  MAX_INT = Cardinal.MaxValue;
begin
  var uNumber : Cardinal;
  Console.WriteLine('Input an unsigned integer number');
  var bIsRightNumber := (Cardinal.TryParse(Console.ReadLine(), uNumber)) and
                     (uNumber <= Cardinal.MaxValue);
  if (not bIsRightNumber) then
  begin
    Console.WriteLine('Invalid number format or number too big');
    Console.Read();
    exit();
  end;
  var strOctNum := '';
  var uTempVal := uNumber;
  while (uTempVal > 0) do
  begin
    strOctNum := uTempVal mod 8 + strOctNum;
    uTempVal := uTempVal div 8;
  end;
  if (strOctNum.Length = 0) then
  begin
    strOctNum := '0';
  end;
  Console.WriteLine
  (
    'The octal equavalent of the decimal number {0} is: {1}',
    uNumber, strOctNum
  );
  Console.Read();
end.