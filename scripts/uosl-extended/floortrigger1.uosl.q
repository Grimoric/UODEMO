// UOSL (enhanced)
inherits sndfx;

trigger enterrange<0x00>(obj target)
{
  loc Q67W = 0x1430, 0x0257, 0x00;
  list Q5DQ;
  sfx(getLocation(this), 0x0122, 0x00);
  messageToRange(Q67W, 0x01, "wall_trap_disarm", Q5DQ);
  callback(this, 0x02, 0x01);
  setType(this, 0x1123);
  callback(this, 0x3C, 0x02);
  return(0x01);
}

trigger callback<0x01>()
{
  setType(this, 0x1122);
  return(0x00);
}

trigger callback<0x02>()
{
  loc Q67W = 0x1430, 0x0257, 0x00;
  list Q5DQ;
  messageToRange(Q67W, 0x01, "wall_trap_reload", Q5DQ);
  return(0x00);
}