// UOSL (enhanced)
inherits spelskil;

function int Q4MS(obj user, loc place)
{
  int Q5NC = 0x00;
  int damage;
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, place));
  int walldur = 0x0A;
  int Q4HC = getX(place) - getX(Q4VS);
  int Q4HD = getY(place) - getY(Q4VS);
  loc Q5ID = place;
  loc Q5IE = place;
  int Q44V = Q4HC;
  if(Q44V < 0x00)
  {
    Q44V = 0x00 - Q44V;
  }
  int Q44W = Q4HD;
  if(Q44W < 0x00)
  {
    Q44W = 0x00 - Q44W;
  }
  if(Q44V < Q44W)
  {
    setX(Q5ID, getX(Q5ID) + 0x01);
    setX(Q5IE, getX(Q5IE) - 0x01);
  }
  else
  {
    setY(Q5ID, getY(Q5ID) + 0x01);
    setY(Q5IE, getY(Q5IE) - 0x01);
  }
  int Q67X = 0x82;
  int Q5EC = 0x04;
  doLocAnimation(place, 0x376A, 0x09, 0x20, 0x00, 0x00);
  doLocAnimation(Q5ID, 0x376A, 0x09, 0x20, 0x00, 0x00);
  doLocAnimation(Q5IE, 0x376A, 0x09, 0x20, 0x00, 0x00);
  if(Q657(user, 0x82, place, Q67X, Q5EC, walldur, 0x01, 0x01) || Q657(user, 0x82, Q5ID, Q67X, Q5EC, walldur, 0x01, 0x02) || Q657(user, 0x82, Q5IE, Q67X, Q5EC, walldur, 0x01, 0x03))
  {
    sfx(place, 0x01F6, 0x01);
    Q5NC = 0x01;
  }
  if(!getCompileFlag(0x01))
  {
    Q554(user, walldur);
  }
  Q5UQ(this);
  return(Q5NC);
}