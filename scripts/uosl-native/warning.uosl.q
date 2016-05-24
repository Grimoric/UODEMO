// UOSL (native)
inherits globals;

function void Q4TK(obj it)
{
  if(!hasObjVar(it, "warn0"))
  {
    string Q56O = "unknown warning";
    setObjVar(it, "warn0", Q56O);
  }
  return();
}

trigger creation
{
  Q4TK(this);
  return(0x01);
}

trigger message("warning")
{
  Q4TK(this);
  return(0x01);
}

trigger lookedat
{
  if((!isGameMaster(looker)) && (!isCounselor(looker)))
  {
    return(0x01);
  }
  int Q67Z = 0x00;
  int num = 0x00;
  int Q4MX = 0x01;
  string Q678;
  string Q679;
  string Q56O;
  string Q681;
  int Q680 = 0x01;
  while(num < 0x0A)
  {
    Q678 = "warn";
    Q678 = Q678 + num;
    if(hasObjVar(this, Q678))
    {
      Q679 = Q678 + "num";
      if(hasObjVar(this, Q679))
      {
        Q680 = getObjVar(this, Q679);
      }
      else
      {
        Q680 = 0x01;
      }
      Q681 = getObjVar(this, Q678);
      Q56O = Q680;
      concat(Q56O, ": ");
      concat(Q56O, Q681);
      if(!Q67Z)
      {
        Q67Z = 0x01;
        barkToHued(this, looker, 0x22, "Warnings: ")
      }
      barkToHued(this, looker, 0x22, Q56O)
    }
    num ++;
  }
  return(0x01);
}