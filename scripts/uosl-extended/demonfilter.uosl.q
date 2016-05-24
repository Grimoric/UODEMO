// UOSL (enhanced)
trigger enterrange<0x01>(obj target)
{
  int targetType = getObjType(target);
  if(targetType == 0x0A)
  {
    return(0x00);
  }
  return(0x01);
}