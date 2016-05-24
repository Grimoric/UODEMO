// UOSL (enhanced)
inherits spelskil;

function int Q4KV(obj user, loc place)
{
  int Q5NC = 0x00;
  if(Q50F(place))
  {
    loc Q4VS = getLocation(user);
    loc Q516;
    obj Q50X;
    int Q44S = getSkillLevelReal(user, 0x19);
    int Q47W = 0x00;
    faceHere(user, getDirectionInternal(Q4VS, place));
    list Q483;
    getMobsInRange(Q483, place, 0x08);
    int Q53Y;
    Q53Y = numInList(Q483);
    for(int x = 0x00; x < numInList(Q483); x ++)
    {
      int Q4IA = 0x00;
      Q50X = Q483[x];
      Q516 = getLocation(Q483[x]);
      if(hasScript(Q50X, "destcrea"))
      {
        Q47W = getObjVar(Q50X, "summonDifficulty");
        Q4IA = (0x012C + Q47W);
        int success = testAndLearnSkill(user, 0x19, Q4IA, 0x28);
        if(success > 0x00)
        {
          doLocAnimation(Q516, 0x3728, 0x08, 0x14, 0x00, 0x00);
          sfx(Q516, 0x0201, 0x00);
          deleteObject(Q50X);
          Q5NC = 0x01;
        }
        else
        {
          doMobAnimation(Q50X, 0x3779, 0x0A, 0x14, 0x00, 0x00);
          systemMessage(user, "The " + getName(Q50X) + " resisted the attempt to dispel it!");
        }
      }
    }
  }
  Q5UQ(this);
  return(Q5NC);
}