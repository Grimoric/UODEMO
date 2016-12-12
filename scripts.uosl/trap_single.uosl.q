// UOSL (native)
function int Q64S(int Q443, obj victim, int Q673, int Q674, int Q675)
{
  int damage;
  obj Q67D = victim;
  string Q65C = Q443;
  bark(Q67D, Q65C);
  if((Q443 == 0x01) || (Q443 == 0x02) || (Q443 == 0x03))
  {
    int Q4I3 = Q673;
    int Q4I4 = Q674;
    int Q4I2 = Q675;
    damage = Q4I2 * (dice(Q4I3, Q4I4));
  }
  if(Q443 == 0x01)
  {
    loseHP(Q67D, damage);
    return(damage);
  }
  if(Q443 == 0x02)
  {
    int Q43C = getCurMana(Q67D) - damage;
    if(Q43C < 0x00)
    {
      setCurMana(Q67D, 0x00);
    }
    else
    {
      loseMana(Q67D, damage);
    }
    return(damage);
  }
  if(Q443 == 0x03)
  {
    bark(Q67D, "My move should be affected");
    int Q43J = getCurFatigue(Q67D) - damage;
    if(Q43J < 0x00)
    {
      setCurFatigue(Q67D, 0x00);
    }
    else
    {
      loseFatigue(Q67D, damage);
    }
    return(damage);
  }
  if(Q443 == 0x04)
  {
    return(0x00);
  }
  if(Q443 == 0x05)
  {
    int Q437 = Q673;
    int Q438 = Q674;
    int Q439 = Q675;
    loc Q648 = Q437, Q438, Q439;
    if(!teleport(Q67D, Q648))
    {
      return(0x00);
    }
    return(0x01);
  }
  return(0x00);
}