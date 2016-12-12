// UOSL (native)
inherits spelskil;

trigger creation
{
  systemMessage(this, "You can not move!");
  return(0x01);
}

function void Q5MD(obj Q4XN)
{
  setMobFlag(Q4XN, 0x02, 0x00);
  systemMessage(Q4XN, "You can move!");
  detachScript(Q4XN, "rempara");
  handleHealthGain(this);
  return();
}

trigger callback(0x0D)
{
  Q5MD(this);
  return(0x00);
}

trigger washit
{
  Q5MD(this);
  return(0x00);
}

trigger ishealthy
{
  return(0x00);
}