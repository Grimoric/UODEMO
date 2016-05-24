// UOSL (enhanced)
inherits globals;

trigger enterrange<0x00>(obj target)
{
  bark(this, "success");
  return(0x01);
}