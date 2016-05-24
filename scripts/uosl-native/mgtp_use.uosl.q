// UOSL (native)
inherits spelskil;

member int power;

trigger creation
{
  if(hasObjVar(this, "magictrappower"))
  {
    power = getObjVar(this, "magictrappower");
    removeObjVar(this, "magictrappower");
  }
  return(0x01);
}

trigger use
{
  loc there = getLocation(this);
  loc Q61G = there;
  loc Q61H = there;
  loc Q61I = there;
  loc Q61J = there;
  setX(Q61G, getX(there) + 0x01);
  setY(Q61H, getY(there) - 0x01);
  setX(Q61I, getX(there) - 0x01);
  setY(Q61J, getY(there) + 0x01);
  doLocAnimation(Q61G, 0x36BD, 0x0A, 0x0F, 0x00, 0x00);
  doLocAnimation(Q61H, 0x36BD, 0x0A, 0x0F, 0x00, 0x00);
  doLocAnimation(Q61I, 0x36BD, 0x0A, 0x0F, 0x00, 0x00);
  doLocAnimation(Q61J, 0x36BD, 0x0A, 0x0F, 0x00, 0x00);
  doLocAnimation(getLocation(this), 0x36BD, 0x0A, 0x0F, 0x00, 0x00);
  sfx(getLocation(this), 0x0207, 0x00);
  int Q527 = Q427(NULL(), 0x02, NULL(), user, 0x04, 0x00);
  detachScript(this, "mgtp_use");
  return(0x00);
}