// UOSL (enhanced)
function int Q4P6(obj Q4E2, int Q65M)
{
  int num = 0x00;
  obj Q4XN;
  for(; num < Q65M; num ++)
  {
    Q4XN = createGlobalObjectIn(Q65M, Q4E2);
  }
  return(0x01);
}

trigger speech<"*">(obj speaker, string arg)
{
  int Q5NC = Q4P6(this, 0x13FA);
  return(0x01);
}