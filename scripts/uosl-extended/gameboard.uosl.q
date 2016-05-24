// UOSL (enhanced)
trigger use(obj user)
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
    return(0x00);
  }
  return(0x01);
}

trigger wasdropped(obj dropper)
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}

trigger objectloaded()
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}