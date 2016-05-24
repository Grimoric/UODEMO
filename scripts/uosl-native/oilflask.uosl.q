// UOSL (native)
trigger use
{
  systemMessage(user, "Select lantern to refuel.");
  targetObj(user, this);
  return(0x00);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  int Q61Y = getObjType(usedon);
  switch(Q61Y)
  {
  case 0x0A18
  case 0x0A1D
  case 0x0A25
  case 0x0A15
  case 0x0A1A
  case 0x0A22
    setObjVar(usedon, "fuel", 0x64);
    destroyOne(this);
    break;
  }
  return(0x00);
}