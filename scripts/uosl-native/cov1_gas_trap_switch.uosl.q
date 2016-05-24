// UOSL (native)
inherits globals;

trigger use
{
  list Q5DQ;
  messageToRange(getLocation(this), 0x05, "switchChange", Q5DQ);
  callback(this, 0x01, 0x24);
  return(0x01);
}

trigger message("cov_reset")
{
  if(getObjType(this) != 0x1092)
  {
    setType(this, 0x1092);
  }
  return(0x00);
}

trigger message("switchChange")
{
  list Q5Z5;
  loc Q5XY = 0x1531, 0x0753, 0x0D;
  loc Q5Y0 = 0x1532, 0x0753, 0x0D;
  loc Q5XZ = 0x1533, 0x0753, 0x0D;
  loc Q5XV = 0x1534, 0x0753, 0x0D;
  loc Q5XU = 0x1535, 0x0753, 0x0D;
  if(getLocation(this) == getLocation(sender))
  {
    return(0x00);
  }
  if(getLocation(this) == Q5XY)
  {
    if(getObjType(this) == 0x1091)
    {
      if((getLocation(sender) == Q5Y0) || (getLocation(sender) == Q5XV) || (getLocation(sender) == Q5XZ))
      {
        setType(this, 0x1092);
      }
    }
  }
  if(getLocation(this) == Q5Y0)
  {
    if(getObjType(this) == 0x1091)
    {
      if((getLocation(sender) == Q5XU) || (getLocation(sender) == Q5XY))
      {
        setType(this, 0x1092);
      }
    }
  }
  if(getLocation(this) == Q5XZ)
  {
    if(getObjType(this) == 0x1091)
    {
      if(getLocation(sender) == Q5Y0)
      {
        setType(this, 0x1092);
      }
      if(getLocation(sender) == Q5XU)
      {
        getObjectsAt(Q5Z5, Q5XV);
        for(int i = 0x00; i < numInList(Q5Z5); i ++)
        {
          if((hasScript(Q5Z5[i], "cov1_gas_trap_switch")) && (getObjType(Q5Z5[i]) != 0x1092))
          {
            setType(this, 0x1092);
          }
        }
      }
    }
  }
  if(getLocation(this) == Q5XV)
  {
    if(getObjType(this) == 0x1091)
    {
      if((getLocation(sender) == Q5Y0) || (getLocation(sender) == Q5XZ) || (getLocation(sender) == Q5XU))
      {
        setType(this, 0x1092);
      }
    }
  }
  if(getLocation(this) == Q5XU)
  {
    if(getObjType(this) == 0x1091)
    {
      if((getLocation(sender) == Q5XY) || (getLocation(sender) == Q5XV))
      {
        setType(this, 0x1092);
      }
    }
  }
  return(0x00);
}

trigger callback(0x24)
{
  list Q5DQ;
  loc Q4GG = 0x1532, 0x0758, 0x00;
  messageToRange(Q4GG, 0x01, "flipped", Q5DQ);
  return(0x00);
}