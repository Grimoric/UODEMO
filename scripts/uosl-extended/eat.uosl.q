// UOSL (enhanced)
inherits itemmanip;

function void Q4NG(obj user, int Q4QY)
{
  if(isAtHome(this))
  {
    systemMessage(user, "You can't eat that, it belongs to someone else.");
    return;
  }
  loc Q61U = getLocation(this);
  int Q5OD = getObjVar(this, "satiety");
  int satiety = getSatiety(user);
  if(satiety > 0x18)
  {
    systemMessage(user, "You are simply too full to eat any more!");
    return;
  }
  addSatiety(user, Q5OD);
  addFatigue(user, Q5OD);
  if(satiety < 0x05)
  {
    systemMessage(user, "You eat the food, but are still extremely hungry.");
  }
  if((satiety >= 0x05) && (satiety < 0x0A))
  {
    systemMessage(user, "You eat the food, and begin to feel more satiated.");
  }
  if((satiety >= 0x0A) && (satiety < 0x14))
  {
    systemMessage(user, "After eating the food, you feel much less hungry.");
  }
  if((satiety >= 0x14) && (satiety < 0x18))
  {
    systemMessage(user, "You feel quite full after consuming the food.");
  }
  if(satiety >= 0x18)
  {
    systemMessage(user, "You manage to eat the food, but you are stuffed!");
  }
  int Q5LD = random(0x01, 0x03);
  if(Q5LD == 0x01)
  {
    sfx(Q61U, 0x3A, 0x00);
  }
  if(Q5LD == 0x02)
  {
    sfx(Q61U, 0x3B, 0x00);
  }
  if(Q5LD == 0x03)
  {
    sfx(Q61U, 0x3C, 0x00);
  }
  if(Q4QY != 0x00)
  {
    obj Q5CN = createGlobalObjectOn(this, Q4QY);
    destroyOne(this);
  }
  else
  {
    destroyOne(this);
  }
  return;
}