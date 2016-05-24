// UOSL (enhanced)
inherits spelskil;

member int Q4HY;

function void Q5RL()
{
  if(!hasObjVar(this, "plateMailCost"))
  {
    Q4HY = (0x00 - 0x05);
  }
  else
  {
    Q4HY = getObjVar(this, "plateMailCost");
    Q4HY = (0x00 - Q4HY);
  }
  if(hasObjVar(this, "pmf"))
  {
    removeObjVar(this, "pmf");
  }
  return;
}

trigger creation()
{
  Q5RL();
  return(0x01);
}

trigger objectloaded()
{
  Q5RL();
  return(0x01);
}

trigger equip(obj equippedon)
{
  Q43H(equippedon, 0x01, Q4HY);
  return(0x01);
}

trigger unequip(obj unequippedfrom)
{
  int Q463 = 0x00 - Q4HY;
  Q43H(unequippedfrom, 0x01, Q463);
  return(0x01);
}