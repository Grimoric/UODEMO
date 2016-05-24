// UOSL (enhanced)
inherits cook;

trigger use(obj user)
{
  systemMessage(user, "What should I cook this on?");
  targetObj(user, this);
  return(0x01);
}

trigger targetobj(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  Q4E9(user, usedon, 0x09B6);
  return(0x01);
}