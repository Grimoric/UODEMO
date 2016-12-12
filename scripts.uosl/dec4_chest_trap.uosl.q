// UOSL (native)
inherits globals;

trigger use
{
  list Q5DQ;
  if(random(0x00, 0x0A) > 0x05)
  {
    messageToRange(getLocation(this), 0x03, "blades", Q5DQ);
  }
  return(0x01);
}