// UOSL (native)
inherits globals;

member int Q59J;

trigger creation
{
  setType(this, 0x11B6);
  Q59J = 0x01;
  callback(this, 0x01, 0x24);
  return(0x00);
}

trigger callback(0x24)
{
  loc Q59R = getLocation(this);
  int Q5A4 = getX(Q59R);
  int Q5A5 = getY(Q59R);
  int Q5A6 = getZ(Q59R);
  int Q5CE;
  loc toLocation;
  if((Q59J == 0x01) && (Q5A4 < 0x1597))
  {
    Q5CE = Q5A4 + 0x01;
  }
  if(Q5A4 == 0x1597)
  {
    Q59J = 0x00;
  }
  if((Q59J == 0x00) && (Q5A4 > 0x1592))
  {
    Q5CE = Q5A4 - 0x01;
  }
  if(Q5A4 == 0x1592)
  {
    Q59J = 0x01;
  }
  toLocation = Q5CE, Q5A5, Q5A6;
  int Q4Q2 = teleport(this, toLocation);
  callback(this, 0x01, 0x24);
  return(0x00);
}