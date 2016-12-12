// UOSL (native)
inherits cook;

trigger use
{
  systemMessage(user, "What should I cook this on?");
  targetObj(user, this);
  return(0x01);
}

trigger targetobj
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  Q4E9(user, usedon, 0x1608);
  return(0x01);
}