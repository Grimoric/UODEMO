// UOSL (native)
trigger use
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
    return(0x00);
  }
  return(0x01);
}

trigger wasdropped
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}

trigger objectloaded
{
  if(containedBy(this) != NULL())
  {
    destroyContents(this);
  }
  return(0x01);
}