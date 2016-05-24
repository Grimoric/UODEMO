// UOSL (native)
inherits sndfx;

trigger message("activate")
{
  loc Q61U = getLocation(this);
  int Q65M = getObjType(this);
  int newType;
  switch(Q65M)
  {
  case 0x108C
    sfx(Q61U, 0x4B, 0x00);
    newType = 0x108E;
    break;
  case 0x1090
    sfx(Q61U, 0x4A, 0x00);
    newType = 0x108F;
    break;
  case 0x1091
    sfx(Q61U, 0x4A, 0x00);
    newType = 0x1092;
    break;
  case 0x1093
    sfx(Q61U, 0x4B, 0x00);
    newType = 0x1095;
    break;
  default
    newType = Q65M;
    break;
  }
  setType(this, newType);
  processTriggerCmds(this, "a");
  return(0x00);
}

trigger message("deactivate")
{
  loc Q61U = getLocation(this);
  int Q65M = getObjType(this);
  int newType;
  switch(Q65M)
  {
  case 0x108E
    sfx(Q61U, 0x4B, 0x00);
    newType = 0x108C;
    break;
  case 0x108F
    sfx(Q61U, 0x4A, 0x00);
    newType = 0x1090;
    break;
  case 0x1092
    sfx(Q61U, 0x4A, 0x00);
    newType = 0x1091;
    break;
  case 0x1095
    sfx(Q61U, 0x4B, 0x00);
    newType = 0x1093;
    break;
  default
    newType = Q65M;
    break;
  }
  sfx(Q61U, 0x51, 0x05);
  setType(this, newType);
  processTriggerCmds(this, "d");
  return(0x00);
}

trigger use
{
  list args;
  int Q65M = getObjType(this);
  switch(Q65M)
  {
  case 0x108C
  case 0x1090
  case 0x1091
  case 0x1093
    message(this, "activate", args);
    break;
  case 0x108E
  case 0x108F
  case 0x1092
  case 0x1095
    message(this, "deactivate", args);
    break;
  }
  return(0x00);
}