// UOSL (native)
inherits eat;

trigger creation
{
  setObjVar(this, "I_am_food", 0x01);
  setObjVar(this, "satiety", 0x01);
  return(0x01);
}

trigger use
{
  Q4NG(user, 0x00);
  return(0x01);
}