// UOSL (enhanced)
inherits sndfx;

function void Q635(obj cow)
{
  sfx(getLocation(this), 0x79, 0x00);
  animateMobile(this, 0x08, 0x00, 0x03, 0x00, 0x00);
  return;
}

trigger use(obj user)
{
  int Q68D = random(0x00, 0x63);
  if(Q68D < 0x05)
  {
    Q635(this);
  }
  else
  {
    if(Q68D < 0x14)
    {
      sfx(getLocation(this), 0x78, 0x00);
    }
    else
    {
      if(Q68D < 0x28)
      {
        sfx(getLocation(this), 0x79, 0x00);
      }
    }
  }
  return(0x01);
}