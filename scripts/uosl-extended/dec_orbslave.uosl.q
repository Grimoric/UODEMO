// UOSL (enhanced)
inherits globals;

member obj Q5GO;
member loc Q5GM;

trigger creation()
{
  Q5GM = 0x144F, 0x0261, 0x03;
  list Q5GN;
  getObjectsAt(Q5GN, Q5GM);
  for(int i = 0x00; i < numInList(Q5GN); i ++)
  {
    if(hasScript(Q5GN[i], "dec_orbmaster"))
    {
      Q5GO = Q5GN[i];
    }
  }
  return(0x00);
}

trigger use(obj user)
{
  list Q5DQ;
  message(Q5GO, "makeMeTalk", Q5DQ);
  return(0x00);
}

trigger speech<"*">(obj speaker, string arg)
{
  list args = arg;
  message(Q5GO, "newAddition", args);
  return(0x00);
}