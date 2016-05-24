// UOSL (enhanced)
inherits shipplank;

trigger creation()
{
  int Q5NC = Q5S7(this, 0x01, "shipleftplank");
  return(0x01);
}

trigger enterrange<0x00>(obj target)
{
  return(Q5S5(0x01, this, target));
}

trigger ooruse(obj user)
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x01, this, user);
  if(!Q5S7(this, 0x01, "shipleftplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x00);
}

trigger use(obj user)
{
  if(isDead(user))
  {
    Q5RW(0x00, this, user);
    return(0x00);
  }
  int Q5NC = Q5SA(0x01, this, user);
  if(!Q5S7(this, 0x01, "shipleftplank"))
  {
    Q5S6(getMultiSlaveId(this));
  }
  return(0x01);
}

trigger multirecycle(int oldtype, int newtype)
{
  Q5RX(0x01, this, oldtype);
  return(0x01);
}