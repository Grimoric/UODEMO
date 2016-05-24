// UOSL (native)
trigger use
{
  loc trapLocation = 0x15AB, 0x0758, 0x00;
  list Q5DQ;
  messageToRange(trapLocation, 0x0A, "covThreeFireTrapDisarm", Q5DQ);
  return(0x01);
}