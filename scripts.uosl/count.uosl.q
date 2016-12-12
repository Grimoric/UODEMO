// UOSL (native)
trigger message("activate")
{
  int Q63R = 0x00;
  int targetVal;
  if(hasObjVar(this, "targetVal"))
  {
    targetVal = getobjvar_int(this, "targetVal");
  }
  else
  {
    bark(this, "Must have a target value!");
  }
  int val;
  for(int Q4OL = 0x00; Q4OL < 0x08; Q4OL ++)
  {
    string c;
    assignstrint(c, Q4OL);
    string s = "val" + c;
    if(hasObjVar(this, s))
    {
      val = getobjvar_int(this, s);
      Q63R = Q63R + val;
    }
  }
  if(Q63R == targetVal)
  {
    processTriggerCmds(this, "a");
  }
  else
  {
    processTriggerCmds(this, "d");
  }
  return(0x00);
}