// UOSL (native)
inherits spelskil;

member int Q463;
member int Q5VX;

trigger creation
{
  Q5VX = 0x01;
  Q463 = 0x0A;
  return(0x01);
}

trigger equip
{
  Q43H(equippedon, Q5VX, Q463);
  return(0x01);
}

trigger unequip
{
  Q43H(unequippedfrom, Q5VX, 0x00 - Q463);
  return(0x01);
}