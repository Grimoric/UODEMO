// UOSL (enhanced)
trigger speech<"*">(obj speaker, string arg)
{
  list Q69B;
  split(Q69B, arg);
  if(numInList(Q69B) != 0x06)
  {
    return(0x00);
  }
  string Q5O3 = Q69B[0x00];
  string Q5O5 = Q69B[0x01];
  string Q5O4 = Q69B[0x02];
  string Q5O6 = Q69B[0x03];
  string Q5O2 = Q69B[0x04];
  string Q5O1 = Q69B[0x05];
  int Q69G = Q5O3;
  int Q69P = Q5O5;
  int Q69I = Q5O4;
  int Q69R = Q5O6;
  int w = Q5O2;
  int Q4UO = Q5O1;
  setMapProperties(this, 0x00, Q69G, Q69P, Q69I, Q69R, w, Q4UO);
  return(0x00);
}