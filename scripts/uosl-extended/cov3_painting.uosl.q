// UOSL (enhanced)
inherits globals;

trigger enterrange<0x01>(obj target)
{
  systemMessage(target, "You notice something odd about the frame of the painting.");
  return(0x01);
}

trigger use(obj user)
{
  systemMessage(user, "A small plaque on the bottom of the frame reads: 3-4-1-5.");
  return(0x00);
}