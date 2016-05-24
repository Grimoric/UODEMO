// UOSL (enhanced)
inherits sk_table;

trigger creation()
{
  list equipped;
  int Q5ZD;
  getEquipment(equipped, this);
  int Q5ER = numInList(equipped);
  obj Q47G = getBackpack(this);
  for(int Q525 = 0x00; Q525 < Q5ER; Q525 ++)
  {
    obj it = equipped[Q525];
    if(it != Q47G)
    {
      Q5ZD = toMobile(it, this);
    }
  }
  list Q5DS;
  message(this, "cancelmagic", Q5DS);
  for(int Q518 = 0x00; Q518 < 0x03; Q518 ++)
  {
    Q5ZD = setStatMod(this, Q518, 0x00);
  }
  int i;
  for(i = 0x00; i < 0x2E; i ++)
  {
    Q5ZD = setSkillMod(this, i, 0x00);
  }
  int Q63R = 0x00;
  int Q5HX;
  int Q4VH = 0x00;
  int Q63A;
  for(i = 0x00; i < 0x2E; i ++)
  {
    Q63A = getSkillLevelNoStat(this, i);
    if(Q63A < 0x00)
    {
      Q4VH = 0x01;
    }
    else
    {
      Q63R = Q63R + abs(Q63A);
    }
  }
  if((Q4VH) || (Q63R > 0x03E8))
  {
    Q5HX = 0x03E8 * 0x64 / Q63R;
    bark(this, "Skill total was:" + Q63R + ", keeping " + Q5HX + "");
    for(i = 0x00; i < 0x2E; i ++)
    {
      int val = getSkillLevelNoStat(this, i);
      int Q5RK = 0x00;
      if(val >= 0x00)
      {
        Q5RK = val * Q5HX / 0x64;
      }
      setSkillLevel(this, i, Q5RK);
    }
  }
  Q63R = 0x00;
  int Q4VI = 0x00;
  for(i = 0x00; i < 0x03; i ++)
  {
    Q63A = getRealStat(this, i);
    if(Q63A < 0x00)
    {
      Q4VI = 0x01;
    }
    else
    {
      Q63R = Q63R + abs(getRealStat(this, i));
    }
  }
  if((Q4VI) || (Q63R > 0x41))
  {
    Q5HX = 0x41 * 0x64 / Q63R;
    bark(this, "Stat total was:" + Q63R + ", keeping " + Q5HX + "");
    int Q451 = 0x00;
    for(i = 0x00; i < 0x2E; i ++)
    {
      Q63A = getRealStat(this, i);
      int Q5K8 = 0x00;
      if(Q63A > 0x00)
      {
        Q5K8 = Q63A * Q5HX / 0x64;
      }
      int Q456 = setRealStat(this, i, Q5K8 + Q451);
      Q451 = Q5K8 - Q456;
    }
  }
  detachScript(this, "newbieme");
  return(0x00);
}