// UOSL (native)
trigger use
{
  list Q5DQ;
  messageToRange(getLocation(this), 0x08, "allow", Q5DQ);
  return(0x01);
}