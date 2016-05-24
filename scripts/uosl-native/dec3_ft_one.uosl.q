// UOSL (native)
inherits globals;

trigger creation
{
  setType(this, 0x1122);
  return(0x00);
}

trigger enterrange(0x00)
{
  list Q5DQ;
  string Q5XA;
  loc Q650 = 0x1418, 0x02D4, 0x00;
  loc Q654 = 0x141D, 0x02CF, 0x00;
  loc Q653 = 0x141B, 0x02CD, 0x00;
  loc Q64Z = 0x141B, 0x02C9, 0x00;
  loc Q64Y = 0x141F, 0x02C9, 0x00;
  loc Q652 = 0x141F, 0x02CB, 0x00;
  loc Q651 = 0x1421, 0x02CD, 0x00;
  loc Q64X = 0x1423, 0x02CD, 0x00;
  loc Q59R = getLocation(this);
  loc Q4GG = 0x1418, 0x02C8, 0x00;
  doLocAnimation(getLocation(this), 0x1122, 0x02, 0x04, 0x00, 0x00);
  if(Q59R == Q650)
  {
    Q5XA = "d_one";
  }
  if(Q59R == Q654)
  {
    Q5XA = "d_two";
  }
  if(Q59R == Q653)
  {
    Q5XA = "d_three";
  }
  if(Q59R == Q64Z)
  {
    Q5XA = "d_four";
  }
  if(Q59R == Q64Y)
  {
    Q5XA = "d_five";
  }
  if(Q59R == Q652)
  {
    Q5XA = "d_six";
  }
  if(Q59R == Q651)
  {
    Q5XA = "d_seven";
  }
  if(Q59R == Q64X)
  {
    Q5XA = "d_eight";
  }
  messageToRange(Q4GG, 0x01, Q5XA, Q5DQ);
  return(0x01);
}