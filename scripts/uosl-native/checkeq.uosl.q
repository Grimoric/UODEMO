// UOSL (native)
inherits globals;

trigger creation
{
  systemMessage(this, "You can no longer wear some of your equipment.");
  systemMessage(this, "It will be placed in your pack in a few mins.");
  callBack(this, 0x012C, 0x61);
  return(0x00);
}

trigger callback(0x61)
{
  int Q64J = 0x00;
  for(int i = 0x01; i < 0x1A; i ++)
  {
    obj item = getItemAtSlot(this, i);
    if((item != NULL()))
    {
      if(isWeapon(item))
      {
        if(!canWield(this, item))
        {
          int Q4Q1 = putObjContainer(item, getBackpack(this));
          Q64J = 0x01;
        }
      }
    }
  }
  if(Q64J)
  {
    systemMessage(this, "Some equipment has been moved to your backpack.");
  }
  detachScript(this, "checkeq");
  return(0x00);
}