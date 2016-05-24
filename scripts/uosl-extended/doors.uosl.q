// UOSL (enhanced)
inherits sndfx;

trigger use(obj user)
{
  int Q62A = getObjType(this);
  int newType = 0x00;
  loc Q61U = getLocation(this);
  int Q5U6;
  switch(Q62A)
  {
  case 0xF4:
    newType = 0xF5;
    Q5U6 = 0xED;
    callback(this, 0x0F, 0x1B);
    break;
  case 0xF5:
    newType = 0xF4;
    Q5U6 = 0xED;
    break;
  case 0x0320:
    newType = 0x0321;
    Q5U6 = 0xED;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0321:
    newType = 0x0320;
    Q5U6 = 0xED;
    break;
  case 0x0330:
    newType = 0x0331;
    Q5U6 = 0xED;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0331:
    newType = 0x0330;
    Q5U6 = 0xED;
    break;
  case 0x0340:
    newType = 0x0341;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0341:
    newType = 0x0340;
    Q5U6 = 0xF1;
    break;
  case 0x0350:
    newType = 0x0351;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0351:
    newType = 0x0350;
    Q5U6 = 0xF1;
    break;
  case 0x0360:
    newType = 0x0361;
    Q5U6 = 0xED;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0361:
    newType = 0x0360;
    Q5U6 = 0xED;
    break;
  case 0x0681:
    newType = 0x0682;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0682:
    newType = 0x0681;
    Q5U6 = 0xF1;
    break;
  case 0x0691:
    newType = 0x0692;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0692:
    newType = 0x0691;
    Q5U6 = 0xF1;
    break;
  case 0x06A1:
    newType = 0x06A2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06A2:
    newType = 0x06A1;
    Q5U6 = 0xF1;
    break;
  case 0x06B1:
    newType = 0x06B2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06B2:
    newType = 0x06B1;
    Q5U6 = 0xF1;
    break;
  case 0x06C1:
    newType = 0x06C2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06C2:
    newType = 0x06C1;
    Q5U6 = 0xF1;
    break;
  case 0x06D1:
    newType = 0x06D2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06D2:
    newType = 0x06D1;
    Q5U6 = 0xF1;
    break;
  case 0x06E1:
    newType = 0x06E2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06E2:
    newType = 0x06E1;
    Q5U6 = 0xF1;
    break;
  case 0x06F1:
    newType = 0x06F2;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x06F2:
    newType = 0x06F1;
    Q5U6 = 0xF1;
    break;
  case 0x0830:
    newType = 0x0831;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0831:
    newType = 0x0830;
    Q5U6 = 0xF1;
    break;
  case 0x0858:
    newType = 0x0859;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0859:
    newType = 0x0858;
    Q5U6 = 0xF1;
    break;
  case 0x0845:
    newType = 0x0846;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0846:
    newType = 0x0845;
    Q5U6 = 0xF1;
    break;
  case 0x0872:
    newType = 0x0873;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x0873:
    newType = 0x0872;
    Q5U6 = 0xF1;
    break;
  case 0x190E:
    newType = 0x190F;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x190F:
    newType = 0x190E;
    Q5U6 = 0xF1;
    break;
  case 0x1FF9:
    newType = 0x1FFA;
    Q5U6 = 0xEA;
    callback(this, 0x0F, 0x1B);
    break;
  case 0x1FFA:
    newType = 0x1FF9;
    Q5U6 = 0xF1;
    break;
  }
  if(newType == 0x00)
  {
    return(0x00);
  }
  setType(this, newType);
  sfx(Q61U, Q5U6, 0x00);
  return(0x00);
}

trigger callback<0x1B>()
{
  int newType = 0x00;
  int Q5U6;
  int Q62A = getObjType(this);
  loc Q61U = getLocation(this);
  switch(Q62A)
  {
  case 0xF5:
    newType = 0xF4;
    Q5U6 = 0xED;
    break;
  case 0x0321:
    newType = 0x0320;
    Q5U6 = 0xED;
    break;
  case 0x0331:
    newType = 0x0330;
    Q5U6 = 0xED;
    break;
  case 0x0341:
    newType = 0x0340;
    Q5U6 = 0xF1;
    break;
  case 0x0351:
    newType = 0x0350;
    Q5U6 = 0xF1;
    break;
  case 0x0361:
    newType = 0x0360;
    Q5U6 = 0xED;
    break;
  case 0x0682:
    newType = 0x0681;
    Q5U6 = 0xF1;
    break;
  case 0x0692:
    newType = 0x0691;
    Q5U6 = 0xF1;
    break;
  case 0x06A2:
    newType = 0x06A1;
    Q5U6 = 0xF1;
    break;
  case 0x06B2:
    newType = 0x06B1;
    Q5U6 = 0xF1;
    break;
  case 0x06C2:
    newType = 0x06C1;
    Q5U6 = 0xF1;
    break;
  case 0x06D2:
    newType = 0x06D1;
    Q5U6 = 0xF1;
    break;
  case 0x06E2:
    newType = 0x06E1;
    Q5U6 = 0xF1;
    break;
  case 0x06F2:
    newType = 0x06F1;
    Q5U6 = 0xF1;
    break;
  case 0x0831:
    newType = 0x0830;
    Q5U6 = 0xF1;
    break;
  case 0x0859:
    newType = 0x0858;
    Q5U6 = 0xF1;
    break;
  case 0x0846:
    newType = 0x0845;
    Q5U6 = 0xF1;
    break;
  case 0x0873:
    newType = 0x0872;
    Q5U6 = 0xF1;
    break;
  case 0x190F:
    newType = 0x190E;
    Q5U6 = 0xF1;
    break;
  case 0x1FF9:
    newType = 0x1FFA;
    Q5U6 = 0xF1;
    break;
  }
  if(newType == 0x00)
  {
    return(0x00);
  }
  setType(this, newType);
  sfx(Q61U, Q5U6, 0x00);
  return(0x00);
}