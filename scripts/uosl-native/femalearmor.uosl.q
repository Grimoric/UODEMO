// UOSL (native)
inherits globals;

trigger equip
{
  shortcallback(this, 0x01, 0x88);
  return(0x01);
}

trigger objectloaded
{
  shortcallback(this, 0x01, 0x88);
  return(0x01);
}

trigger callback(0x88)
{
  obj Q4E2 = containedBy(this);
  int Q527;
  if(Q4E2 != NULL())
  {
    if(isMobile(Q4E2))
    {
      int Q4O1 = getEquipSlot(this);
      if(this == getItemAtSlot(Q4E2, Q4O1))
      {
        if(getObjType(Q4E2) == 0x0190)
        {
          barkTo(Q4E2, Q4E2, "Only females can wear this.");
          if(canHold(Q4E2, this))
          {
            Q527 = toMobile(this, Q4E2);
          }
          else
          {
            Q527 = teleport(this, getLocation(Q4E2));
          }
        }
      }
    }
  }
  return(0x01);
}