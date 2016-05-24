// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  list Q5DQ;
  loc trapLocation = 0x154C, 0xBB, 0x00;
  messageToRange(trapLocation, 0x05, "reset", Q5DQ);
  return(0x01);
}