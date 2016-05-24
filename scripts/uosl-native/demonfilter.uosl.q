// UOSL (native)
trigger enterrange(0x01)
{
  int targetType = getObjType(target);
  if(targetType == 0x0A)
  {
    return(0x00);
  }
  return(0x01);
}