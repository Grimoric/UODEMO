// UOSL (enhanced)
member list Q5DQ;

trigger enterrange<0x00>(obj target)
{
  loc Q56T;
  if(getX(getLocation(this)) == 0x143B)
  {
    if(getY(getLocation(this)) == 0x024C)
    {
      Q56T = 0x1430, 0x0248, 0x00;
      messageToRange(Q56T, 0x01, "PPdisarm", Q5DQ);
    }
    if(getY(getLocation(this)) == 0x0249)
    {
      Q56T = 0x1435, 0x0257, 0x00;
      messageToRange(Q56T, 0x0A, "FSdisarm", Q5DQ);
    }
  }
  if(getX(getLocation(this)) == 0x1431)
  {
    if(getY(getLocation(this)) == 0x0249)
    {
      Q56T = 0x1430, 0x0257, 0x00;
      messageToRange(Q56T, 0x01, "WTdisarm", Q5DQ);
      messageToRange(getLocation(this), 0x02, "trapCheck", Q5DQ);
    }
    if(getY(getLocation(this)) == 0x024C)
    {
      Q56T = 0x1435, 0x0250, 0x04;
      messageToRange(Q56T, 0x02, "WSdisarm", Q5DQ);
    }
  }
  return(0x00);
}

trigger leaverange<0x00>(obj target)
{
  if(getX(getLocation(this)) == 0x143B)
  {
    if(getY(getLocation(this)) == 0x0249)
    {
      callback(this, 0x3C, 0x02);
    }
    if(getY(getLocation(this)) == 0x024C)
    {
      callback(this, 0x3C, 0x04);
    }
  }
  if(getX(getLocation(this)) == 0x1431)
  {
    if(getY(getLocation(this)) == 0x0249)
    {
      callback(this, 0x3C, 0x01);
    }
    if(getY(getLocation(this)) == 0x024C)
    {
      callback(this, 0x3C, 0x03);
    }
  }
  return(0x00);
}

trigger callback<0x01>()
{
  loc Q56T = 0x1430, 0x0257, 0x00;
  messageToRange(Q56T, 0x01, "WTreload", Q5DQ);
  return(0x00);
}

trigger callback<0x02>()
{
  loc Q56T = 0x1435, 0x0257, 0x00;
  messageToRange(Q56T, 0x0A, "FSreload", Q5DQ);
  return(0x00);
}

trigger callback<0x03>()
{
  loc Q56T = 0x1435, 0x0250, 0x04;
  messageToRange(Q56T, 0x02, "WSreload", Q5DQ);
  return(0x00);
}

trigger callback<0x04>()
{
  loc Q56T = 0x1430, 0x0248, 0x00;
  messageToRange(Q56T, 0x01, "PPreload", Q5DQ);
  return(0x00);
}