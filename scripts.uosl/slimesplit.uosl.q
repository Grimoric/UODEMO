// UOSL (native)
inherits acidblood;

function void Q5VC(obj attacker)
{
  obj n = createGlobalNPCAtSpecificLoc(0x0232, getLocation(this));
  setHue(n, getHue(this));
  int Q4XB = getCurHP(this);
  Q4XB = Q4XB / 0x02;
  setCurHP(n, Q4XB);
  setCurHP(this, Q4XB);
  attack(n, attacker);
  sfx(getLocation(this), random(0x01C8, 0x01CC), 0x00);
  bark(n, "*The slime splits when struck!*");
  return();
}

trigger 300 washit
{
  if((damamt > (getCurHP(this) / 0x04)) && (getCurHP(this) > 0x05))
  {
    Q5VC(attacker);
  }
  return(0x01);
}