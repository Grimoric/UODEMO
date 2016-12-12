// UOSL (native)
inherits spelskil;

function int Q4JI(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if((Q50G(usedon)) && (hasScript(usedon, "destcrea")))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    int Q47W;
    int Q44S = getSkillLevelReal(user, 0x19);
    faceHere(user, getDirectionInternal(Q4VS, there));
    Q47W = 0x00;
    Q47W = getObjVar(usedon, "summonDifficulty");
    int Q4IA = Q47W;
    int success = testAndLearnSkill(user, 0x19, Q4IA, 0x28);
    if(success > 0x00)
    {
      doLocAnimation(there, 0x3728, 0x08, 0x14, 0x00, 0x00);
      sfx(there, 0x0201, 0x00);
      deleteObject(usedon);
      Q5NC = 0x01;
    }
    else
    {
      doMobAnimation(usedon, 0x3779, 0x0A, 0x14, 0x00, 0x00);
      systemMessage(user, "The " + getName(usedon) + " resisted the attempt to dispel it!");
    }
  }
  Q5UQ(this);
  return(Q5NC);
}