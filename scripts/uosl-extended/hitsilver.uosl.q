// UOSL (enhanced)
inherits spelskil;

trigger ishitting(obj victim, int damamt)
{
  if(Q50D(victim))
  {
    intRet(damamt * 0x02);
    doMobAnimation(victim, 0x37B9, 0x0A, 0x05, 0x00, 0x00);
  }
  return(0x01);
}