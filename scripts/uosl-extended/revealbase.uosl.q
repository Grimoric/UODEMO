// UOSL (enhanced)
inherits spelskil;

function int Q4M3(obj user, loc place)
{
  int Q5NC = 0x00;
  if(isInMap(place))
  {
    int Q4NC;
    loc Q4VS = getLocation(user);
    faceHere(user, getDirectionInternal(Q4VS, place));
    list Q4YN;
    getMobsInRange(Q4YN, place, 0x02);
    for(int x = 0x00; x < numInList(Q4YN); x ++)
    {
      obj victim = Q4YN[x];
      if(Q50G(victim))
      {
        if(hasScript(victim, "reminvis"))
        {
          doMobAnimation(victim, 0x375A, 0x09, 0x14, 0x00, 0x00);
          setInvisible(victim, 0x00);
          detachScript(victim, "reminvis");
          Q5NC = 0x01;
        }
      }
    }
    list Q4YM;
    getObjectsInRange(Q4YM, place, 0x02);
    for(int y = 0x00; y < numInList(Q4YM); y ++)
    {
      if(hasScript(Q4YM[y], "reminvis"))
      {
        doLocAnimation(getLocation(Q4YM[y]), 0x375A, 0x09, 0x14, 0x00, 0x00);
        setInvisible(Q4YM[y], 0x00);
        detachScript(Q4YM[y], "reminvis");
        Q5NC = 0x01;
      }
    }
    sfx(place, 0x01FD, 0x00);
  }
  Q5UQ(this);
  return(Q5NC);
}