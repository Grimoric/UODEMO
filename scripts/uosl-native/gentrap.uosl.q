// UOSL (native)
trigger enterrange(0x02)
{
  int damage;
  damage = dice(0x05, 0x05);
  loseHP(target, damage);
  return(0x00);
}