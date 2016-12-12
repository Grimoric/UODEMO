// UOSL (native)
trigger creation
{
  setType(this, 0x375A);
  return(0x00);
}

trigger enterrange(0x01)
{
  loc Q648 = 0x16A0, 0x020D, 0x0A;
  if(!teleport(target, Q648))
  {
    return(0x01);
  }
  return(0x00);
}