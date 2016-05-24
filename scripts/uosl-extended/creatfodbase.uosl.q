// UOSL (enhanced)
inherits spelskil;

function int Q4JB(obj user, loc place)
{
  int Q5NC = 0x00;
  loc Q4VS = getLocation(user);
  faceHere(user, getDirectionInternal(Q4VS, place));
  list Q56N = 0x09D1, 0x09D3, 0x097D, 0x09EB, 0x097B, 0x09F2, 0x09B7, 0x09C0, 0x09D0, 0x09D2;
  int Q4Q5 = dice(0x01, 0x0A);
  obj food = createGlobalObjectAt(0x09D3, place);
  if(isValid(food))
  {
    sfx(place, 0x01E2, 0x00);
    Q5NC = 0x01;
  }
  Q5UQ(this);
  return(Q5NC);
}