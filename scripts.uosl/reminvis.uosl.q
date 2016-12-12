// UOSL (native)
inherits spelskil;

member loc where;

trigger creation
{
  where = getLocation(this);
  callback(this, 0x01, 0x94);
  return(0x01);
}

function void Q5MC(obj Q4XN)
{
  setInvisible(Q4XN, 0x00);
  detachScript(Q4XN, "reminvis");
  return();
}

trigger callback(0x94)
{
  if(getLocation(this) != where)
  {
    Q5MC(this);
  }
  else
  {
    callback(this, 0x01, 0x94);
  }
  return(0x00);
}

trigger callback(0x1F)
{
  Q5MC(this);
  return(0x00);
}

trigger message("uninvis")
{
  Q5MC(this);
  return(0x01);
}