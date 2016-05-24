// UOSL (native)
inherits itemmanip;

function int Q4LC(obj it, obj Q68S)
{
  if(isShopkeeper(Q68S))
  {
    return(0x00);
  }
  loc Q61U = getLocation(it);
  int Q61P = getObjVar(it, "gateID");
  int Q4HO = getMoonGateDest(Q61P);
  loc Q4HP;
  switch(Q4HO)
  {
  case 0x00
    Q4HP = 0x1173, 0x0503, 0x0A;
    break;
  case 0x01
    Q4HP = 0x0538, 0x07CD, 0x05;
    break;
  case 0x02
    Q4HP = 0x05DB, 0x0EBB, 0x05;
    break;
  case 0x03
    Q4HP = 0x0303, 0x02F0, 0x05;
    break;
  case 0x04
    Q4HP = 0x0A8D, 0x02B4, 0x05;
    break;
  case 0x05
    Q4HP = 0x0724, 0x0B84, 0x00 - 0x14;
    break;
  case 0x06
    Q4HP = 0x0283, 0x0813, 0x05;
    break;
  case 0x07
    Q4HP = 0x0DEB, 0x085B, 0x22;
    break;
  case 0x029A
    break;
  case 0x029B
    break;
  default
    bark(it, "default case");
    break;
    return(0x01);
  }
  Q48E(Q68S);
  moveDir(Q4HP, getFacing(Q68S));
  Q5Z2(Q68S, Q4HP);
  setLastValidTerrainLoc(Q68S, Q4HP);
  int r = teleport(Q68S, Q4HP);
  return(!r);
}

trigger enterrange(0x00)
{
  return(Q4LC(this, target));
}

trigger use
{
  if(getLocation(this) == getLocation(user))
  {
    int Q527 = Q4LC(this, user);
  }
  return(0x00);
}