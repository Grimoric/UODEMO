// UOSL (native)
inherits spelskil;

function int Q4KO(obj user, obj usedon)
{
  int Q5NC = 0x00;
  if(Q50J(usedon))
  {
    loc Q4VS = getLocation(user);
    loc there = getLocation(usedon);
    faceHere(user, getDirectionInternal(Q4VS, there));
    int item = getObjType(usedon);
    loc Q61G = there;
    loc Q61H = there;
    loc Q61I = there;
    loc Q61J = there;
    setX(Q61G, getX(there) + 0x01);
    setY(Q61H, getY(there) - 0x01);
    setX(Q61I, getX(there) - 0x01);
    setY(Q61J, getY(there) + 0x01);
    beginSequence();
    doLocAnimation(Q61G, 0x376A, 0x09, 0x0A, 0x00, 0x00);
    doLocAnimation(Q61H, 0x376A, 0x09, 0x0A, 0x00, 0x00);
    doLocAnimation(Q61I, 0x376A, 0x09, 0x0A, 0x00, 0x00);
    doLocAnimation(Q61J, 0x376A, 0x09, 0x0A, 0x00, 0x00);
    endSequence(0x01);
    sfx(there, 0x01EF, 0x00);
    int power = getSkillLevel(user, 0x19) + 0x01;
    if(0x0675 <= item)
    {
      if(item <= 0x06F4)
      {
        setObjVar(usedon, "magictrappower", power);
        attachScript(usedon, "mgtp_use");
        Q5NC = 0x01;
      }
    }
    else
    {
      if(0x0E3F < item)
      {
        if(item <= 0x0E43)
        {
          setObjVar(usedon, "magictrappower", power);
          attachScript(usedon, "mgtp_use");
          Q5NC = 0x01;
        }
      }
    }
    Q5UL(user, getLocation(usedon), 0x02, 0x00);
  }
  if(!Q5NC)
  {
    barkToHued(user, user, 0x22, "Hmmm...I can't trap that.");
  }
  Q5UQ(this);
  return(Q5NC);
}