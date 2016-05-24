// UOSL (enhanced)
inherits spelskil;

trigger enterrange<0x00>(obj target)
{
  int Q5ZL;
  Q5ZL = teleport(target, getObjVar(this, "destination"));
  return(0x01);
}