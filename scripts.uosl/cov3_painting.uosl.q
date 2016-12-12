// UOSL (native)
inherits globals;

trigger enterrange(0x01)
{
  systemMessage(target, "You notice something odd about the frame of the painting.");
  return(0x01);
}

trigger use
{
  systemMessage(user, "A small plaque on the bottom of the frame reads: 3-4-1-5.");
  return(0x00);
}