// UOSL (enhanced)
trigger speech<"*">(obj speaker, string arg)
{
  if(speaker == this)
  {
    list args;
    split(args, arg);
    if(numInList(args) == 0x03)
    {
      string Q44J;
      string Q44K;
      string Q44L;
      Q44J = args[0x00];
      Q44K = args[0x01];
      Q44L = args[0x02];
      int Q4XJ = Q44K;
      int Q4XK = Q44L;
      if((Q44J == "sb") || (Q44J == "sbg"))
      {
        list Q499;
        int Q5NC = getPlayerBugStat(Q499, Q4XJ);
        string Q5AJ;
        Q5AJ = "not found";
        if(numInList(Q499) > Q4XK)
        {
          obj player = Q499[Q4XK];
          Q5AJ = "found ";
          Q5AJ = Q5AJ + getName(player);
          Q5AJ = Q5AJ + " ";
          Q5AJ = Q5AJ + objToStr(player);
          Q5AJ = Q5AJ + " ";
          Q5AJ = Q5AJ + getX(getLocation(player));
          Q5AJ = Q5AJ + " ";
          Q5AJ = Q5AJ + getY(getLocation(player));
          Q5AJ = Q5AJ + " ";
          Q5AJ = Q5AJ + getZ(getLocation(player));
          barkTo(speaker, speaker, Q5AJ);
          if(Q44J == "sbg")
          {
            int Q5ND = teleport(this, getLocation(player));
            if(!Q5ND)
            {
              barkTo(speaker, speaker, "teleport unsuccessful");
            }
          }
        }
        else
        {
          barkTo(speaker, speaker, Q5AJ);
        }
      }
    }
  }
  return(0x01);
}