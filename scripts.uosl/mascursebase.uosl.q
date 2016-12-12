// UOSL (native)
inherits allstatbase;

function int Q4KU(obj user, loc place)
{
  int Q5NC = 0x00;
  list Q5HT;
  getMobsInRange(Q5HT, place, 0x02);
  int Q527;
  for(int x = 0x00; x < numInList(Q5HT); x ++)
  {
    obj Q5HY = Q5HT[x];
    if(Q50G(Q5HY))
    {
      if(!Q433(Q5HY))
      {
        if(Q4IT(user, Q5HY, 0x00, 0x00))
        {
          Q5NC = 0x01;
        }
      }
    }
  }
  sfx(place, 0x01FB, 0x00);
  Q5UK(user, NULL(), 0x02, 0x00);
  Q5UQ(this);
  return(Q5NC);
}