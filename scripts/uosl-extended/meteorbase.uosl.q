// UOSL (enhanced)
inherits spelskil;

member list Q5HT;
member obj Q57L;

function int Q4LA(obj user, loc place)
{
  int Q5NC = 0x00;
  int damage;
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, place));
  list Q5HQ;
  clearList(Q5HT);
  int Q49M = 0x00;
  Q57L = user;
  getMobsInRange(Q5HQ, place, 0x02);
  beginSequence();
  for(int x = 0x00; x < numInList(Q5HQ); x ++)
  {
    obj Q5HY = Q5HQ[x];
    if(Q50G(Q5HY))
    {
      Q5NC = 0x01;
      if(hasScript(Q5HY, "reflctor"))
      {
        doMobAnimation(Q5HY, 0x36B0, 0x0A, 0x0A, 0x00, 0x00);
        int Q527 = Q429(this, user, user, 0x04, 0x01);
      }
      else
      {
        int Q631;
        sfx(Q4VS, 0x0160, 0x00);
        doMissile_Mob2Mob(user, Q5HY, 0x36D4, 0x07, 0x00, 0x01);
        if((getDistanceInTiles(Q4VS, place)) > 0x06)
        {
          Q631 = 0x02;
        }
        else
        {
          Q631 = 0x01;
        }
        callback(this, Q631, 0x19);
        appendToList(Q5HT, Q5HY);
        if(!Q49M)
        {
          Q49M = 0x01;
          Q5UK(Q57L, Q5HY, 0x02, 0x00);
        }
      }
    }
  }
  endSequence(0x01);
  Q5UR(this, Q5NC);
  return(Q5NC);
}

trigger callback<0x19>()
{
  int Q527 = Q42C(0x02, this, Q57L, Q5HT, 0x04);
  Q5UQ(this);
  return(0x00);
}