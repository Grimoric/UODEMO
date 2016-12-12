// UOSL (native)
inherits sndfx;

trigger enterrange(0x00)
{
  loc Q4D3 = 0x1431, 0x0257, 0x00;
  list Q5DQ;
  sfx(getLocation(this), 0x0122, 0x00);
  messageToRange(Q4D3, 0x01, "chest_unlocked", Q5DQ);
  messageToRange(getLocation(this), 0x03, "wall_trap_check", Q5DQ);
  callback(this, 0x02, 0x01);
  setType(this, 0x1123);
  callback(this, 0x1E, 0x02);
  return(0x01);
}

trigger callback(0x01)
{
  setType(this, 0x1122);
  return(0x00);
}

trigger callback(0x02)
{
  loc Q4D3 = 0x1431, 0x0257, 0x00;
  list Q5DQ;
  messageToRange(Q4D3, 0x01, "chest_locked", Q5DQ);
  return(0x00);
}