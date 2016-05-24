// UOSL (enhanced)
trigger enterrange<0x01>(obj target)
{
  loc Q648;
  if(hasObjVar(this, "toLocation"))
  {
    Q648 = getObjVar(this, "toLocation")/* ) */;
    if(!teleport(target, Q648))
    {
      return(0x01);
    }
    return(0x00);
  }
  return(0x01);
}