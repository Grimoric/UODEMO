// UOSL (native)
inherits spelskil;

member obj dragon;
member obj victim;
member loc Q4VS;
member loc there;
member int Q494;
member int Q4DJ;
member int Q49P;
member int Q421;
member int Q420;
member int Q57H;
member obj Q57M;

forward void Q45M(obj me, int Q4OS);

function void Q41B(obj me)
{
  int time = random(Q421, Q420);
  callback(me, time, 0x65);
  return();
}

trigger creation
{
  Q494 = 0x00;
  Q4DJ = 0x00;
  Q49P = 0x01;
  Q421 = 0x07;
  Q420 = 0x0E;
  Q41B(this);
  return(0x01);
}

function int Q41E(obj me, obj target)
{
  animateMobile(me, 0x0C, 0x05, 0x01, 0x00, 0x00);
  sfx(Q4VS, 0x016A, 0x00);
  Q494 = 0x01;
  shortcallback(me, 0x04, 0x2F);
  return(0x01);
}

function int Q41F(obj me, obj target)
{
  if((Q494 == 0x00) && (Q49P == 0x01))
  {
    victim = target;
    there = getLocation(victim);
    Q4VS = getLocation(me);
    if((!isDead(victim)) && (canSeeLoc(me, there) == 0x01))
    {
      disableBehaviors(me);
      faceHere(me, getDirectionInternal(Q4VS, there));
      Q41E(me, target);
      Q49P = 0x00;
      int time = random(Q421, Q420);
      callback(me, time, 0x64);
      return(0x01);
    }
  }
  return(0x00);
}

trigger callback(0x2F)
{
  int damage = (getCurHP(this) / 0x0A);
  int Q4OS = getFacing(this);
  Q45M(this, Q4OS);
  if(Q4DJ == 0x00)
  {
    int Q4AY = random(0x01, 0x64);
    if(Q4AY > 0x21)
    {
      doMissile_Loc2Mob(Q4VS, victim, 0x36D4, 0x05, 0x00, 0x01);
    }
    else
    {
      loc there = getLocation(victim);
      int Q5CG = getZ(there) + 0x06;
      setZ(there, Q5CG);
      doMissile_Loc2Loc(Q4VS, there, 0x36D4, 0x05, 0x00, 0x01);
    }
    Q57H = damage;
    callback(this, 0x01, 0x19);
  }
  else
  {
    enableBehaviors(this);
    doDamageType(this, victim, damage, 0x04);
    scriptTrig(Q57M, 0x07, this);
    Q494 = 0x00;
    Q4DJ = 0x00;
  }
  sfx(Q4VS, 0x015E, 0x00);
  return(0x00);
}

trigger callback(0x19)
{
  enableBehaviors(this);
  doDamageType(this, victim, Q57H, 0x04);
  scriptTrig(victim, 0x07, this);
  Q494 = 0x00;
  return(0x00);
}

function void Q45M(obj me, int Q4OS)
{
  Q4VS = getLocation(me);
  switch(Q4OS)
  {
  case 0x00
    setY(Q4VS, getY(Q4VS) - 0x03)
    setZ(Q4VS, getZ(Q4VS) + 0x0C)
    break;
  case 0x01
    setX(Q4VS, getX(Q4VS) + 0x02);
    setY(Q4VS, getY(Q4VS) - 0x01);
    setZ(Q4VS, getZ(Q4VS) + 0x14)
    break;
  case 0x02
    setX(Q4VS, getX(Q4VS) + 0x03);
    setZ(Q4VS, getZ(Q4VS) + 0x17)
    break;
  case 0x03
    break;
  case 0x04
    setX(Q4VS, getX(Q4VS) - 0x01);
    setY(Q4VS, getY(Q4VS) + 0x02);
    setZ(Q4VS, getZ(Q4VS) + 0x08)
    break;
  case 0x05
    setX(Q4VS, getX(Q4VS) - 0x02);
    setY(Q4VS, getY(Q4VS) + 0x01);
    setZ(Q4VS, getZ(Q4VS) + 0x07)
    break;
  case 0x06
    setX(Q4VS, getX(Q4VS) - 0x02);
    setZ(Q4VS, getZ(Q4VS) + 0x0A)
    break;
  case 0x07
    setZ(Q4VS, getZ(Q4VS) + 0x14)
    break;
  default
    break;
  }
  return();
}

trigger enterrange(0x08)
{
  if(containedBy(this) == NULL())
  {
    if(areBehaviorsEnabled(this))
    {
      if(isHuman(target))
      {
        if(!isDead(target))
        {
          attack(this, target);
        }
      }
    }
  }
  return(0x01);
}

trigger callback(0x64)
{
  Q49P = 0x01;
  return(0x01);
}

trigger callback(0x65)
{
  Q41B(this);
  if(containedBy(this) == NULL())
  {
    if(getNumTargets(this) > 0x00)
    {
      obj target = getFirstVisableTargetInRange(this, 0x09);
      if(target != NULL())
      {
        Q41F(this, target);
      }
    }
  }
  return(0x01);
}