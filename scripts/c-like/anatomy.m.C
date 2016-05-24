// Real-C
#include "ENGINE.hpp"

#include "sk_table.h"

TRIGGER( message , "canUseSkill" )(obj sender, list args)
{
  return(0x00);
}

TRIGGER( callback , 0x4D )()
{
  detachScript(this, "anatomy");
  return(0x00);
}

TRIGGER( message , "useSkill" )(obj sender, list args)
{
  callback(this, 0x0A, 0x4D);
  systemMessage(this, "Whom shall I examine?");
  targetObj(this, this);
  return(0x00);
}

TRIGGER( targetobj )(obj user, obj usedon)
{
  if(usedon == NULL())
  {
    return(0x00);
  }
  string Q496;
  if(!isMobile(usedon))
  {
    barkTo(usedon, user, "Only living things have anatomies!");
    return(0x00);
  }
  if(usedon == user)
  {
    barkTo(usedon, user, "You know yourself quite well enough already.");
    return(0x00);
  }
  loc Q4VS = loc( getLocation(user) );
  loc there = loc( getLocation(usedon) );
  if(getDistanceInTiles(Q4VS, there) > 0x08)
  {
    barkTo(usedon, user, "I am too far away to do that.");
    return(0x00);
  }
  int skill = getSkillLevel(user, 0x01);
  int Q5WF = getStrength(usedon);
  int Q4HY = getDexterity(usedon);
  skill = 0x64 - skill;
  skill = skill / 0x04;
  Q5WF = random(Q5WF - skill, Q5WF + skill);
  Q4HY = random(Q4HY - skill, Q4HY + skill);
  if(!skillTest(user, 0x01))
  {
    Q496 = "You can not quite get a sense of "/* ) */;
    concat(Q496, getHisHer(usedon));
    concat(Q496, " physical characteristics.");
    barkTo(usedon, user, Q496);
    return(0x00);
  }
  handleWatchingSkill(user, 0x01);
  Q5WF = Q5WF / 0x0A;
  Q4HY = Q4HY / 0x0A;
  string Q5XC = "like they have trouble lifting small objects";
  string Q4I0 = "like they barely manage to stay standing";
  if(Q4HY == 0x01)
  {
    Q4I0 = "very clumsy";
  }
  if(Q4HY == 0x02)
  {
    Q4I0 = "somewhat uncoordinated";
  }
  if(Q4HY == 0x03)
  {
    Q4I0 = "moderately dexterous";
  }
  if(Q4HY == 0x04)
  {
    Q4I0 = "somewhat agile";
  }
  if(Q4HY == 0x05)
  {
    Q4I0 = "very agile";
  }
  if(Q4HY == 0x06)
  {
    Q4I0 = "extremely agile";
  }
  if(Q4HY == 0x07)
  {
    Q4I0 = "extraordinarily agile";
  }
  if(Q4HY == 0x08)
  {
    Q4I0 = " moves like quicksilver";
  }
  if(Q4HY == 0x09)
  {
    Q4I0 = "like one of the fastest people you have ever seen";
  }
  if(Q4HY > 0x09)
  {
    Q4I0 = "superhumanly agile";
  }
  if(Q5WF == 0x01)
  {
    Q5XC = "rather feeble";
  }
  if(Q5WF == 0x02)
  {
    Q5XC = "somewhat weak";
  }
  if(Q5WF == 0x03)
  {
    Q5XC = "to be of normal strength";
  }
  if(Q5WF == 0x04)
  {
    Q5XC = "somewhat strong";
  }
  if(Q5WF == 0x05)
  {
    Q5XC = "very strong";
  }
  if(Q5WF == 0x06)
  {
    Q5XC = "extremely strong";
  }
  if(Q5WF == 0x07)
  {
    Q5XC = "extraordinarily strong";
  }
  if(Q5WF == 0x08)
  {
    Q5XC = "strong as an ox";
  }
  if(Q5WF == 0x09)
  {
    Q5XC = "like one of the strongest people you have ever seen";
  }
  if(Q5WF > 0x09)
  {
    Q5XC = "superhumanly strong";
  }
  Q496 = getHeShe(usedon);
  if(Q4HY != 0x08)
  {
    concat(Q496, " looks ");
  }
  concat(Q496, Q4I0);
  concat(Q496, " and ");
  concat(Q496, Q5XC);
  concat(Q496, ".");
  toUpper(Q496, 0x00, 0x01);
  barkTo(usedon, user, Q496);
  return(0x00);
}