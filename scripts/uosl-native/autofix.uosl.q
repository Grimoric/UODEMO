// UOSL (native)
inherits sk_table;

trigger creation
{
  callback(this, 0x0F, 0x77);
  return(0x01);
}

trigger callback(0x77)
{
  list where;
  appendToList(where, NULL());
  list equipped;
  int Q5ZD;
  for(int Q525 = 0x01; Q525 < 0x1A; Q525 ++)
  {
    obj it = getItemAtSlot(this, Q525);
    appendToList(where, it);
    if(it != NULL())
    {
      Q5ZD = putObjContainer(it, this);
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
  int num = numInList(where);
  for(int m = 0x00; m < num; m ++)
  {
    obj Q68D = where[m];
    if(Q68D != NULL())
    {
      Q5ZD = equipObj(Q68D, this, m);
    }
  }
  return(0x01);
}