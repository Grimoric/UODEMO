// UOSL (enhanced)
inherits globals;

trigger enterrange<0x00>(obj target)
{
  if(isDead(target))
  {
    return(0x01);
  }
  int Q62A = getObjType(this);
  loc Q61U = getLocation(this);
  if(!hasObjVar(this, "disarmed"))
  {
    switch(Q62A)
    {
    case 0x1108:
      doLocAnimation(Q61U, 0x1109, 0x01, 0x10, 0x00, 0x00);
      break;
    case 0x111B:
      doLocAnimation(Q61U, 0x111C, 0x01, 0x10, 0x00, 0x00);
      break;
    case 0x119A:
      doLocAnimation(Q61U, 0x119B, 0x01, 0x0E, 0x00, 0x00);
      break;
    case 0x11A0:
      doLocAnimation(Q61U, 0x11A1, 0x01, 0x0E, 0x00, 0x00);
      break;
    default:
      break;
    }
    int Q4GH = dice(0x03, 0x0A);
    loseHP(target, Q4GH);
  }
  return(0x01);
}