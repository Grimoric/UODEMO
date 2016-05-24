// UOSL (native)
inherits globals;

trigger enterrange(0x00)
{
  bark(this, "success");
  return(0x01);
}