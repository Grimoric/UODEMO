// UOSL (enhanced)
inherits globals;

forward void Q4DB();
forward int Q4YA(obj , obj );

function void Q4DB()
{
  removeObjVar(this, "trapLevel");
  removeObjVar(this, "trapType");
  return;
}

function int Q4YA(obj user, obj this)
{
  int locked = 0x00;
  if(hasObjVar(this, "isLocked"))
  {
    locked = getObjVar(this, "isLocked");
  }
  return(locked);
}

trigger creation()
{
  setObjVar(this, "isTrap", 0x01);
  return(0x00);
}

trigger use(obj user)
{
  list Q63G;
  Q63G = user, this;
  if(!hasObjVar(this, "disabled"))
  {
    message(this, "triggerTrap", Q63G);
  }
  return(0x01);
}