// UOSL (native)
inherits spelskil;

trigger enterrange(0x00)
{
  int Q5ZL;
  Q5ZL = teleport(target, getObjVar(this, "destination"));
  return(0x01);
}