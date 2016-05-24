// Real-C
#include "ENGINE.hpp"

TRIGGER( use )(obj user)
{
  string Q613;
  int Q60B;
  string Q4WP;
  int Q60I;
  string Q57B;
  int Q45A = 0x00;
  Q60I = getMinute();
  Q60B = getHour();
  if(0x00)
  {
    string Q4GV = Q60B;
    string Q4GX = Q60I;
    string Q4GY = "It is " + Q4GV + ":" + Q4GX + ".";
    ebark(this, Q4GY);
  }
  Q60I = Q60I / 0x05;
  switch(Q60I)
  {
  case 0x00:
    Q57B = "";
    Q45A = 0x01;
    break;
  case 0x01:
    Q57B = "a few minutes past";
    break;
  case 0x02:
    Q57B = "ten past";
    break;
  case 0x03:
    Q57B = "quarter past";
    break;
  case 0x04:
    Q57B = "twenty minutes past";
    break;
  case 0x05:
    Q57B = "a few minutes shy of half-past";
    break;
  case 0x06:
    Q57B = "half-past";
    break;
  case 0x07:
    Q57B = "just over half-past";
    break;
  case 0x08:
    Q57B = "lacking twenty minutes until";
    Q60B = Q60B + 0x01;
    break;
  case 0x09:
    Q57B = "quarter of";
    Q60B = Q60B + 0x01;
    break;
  case 0x0A:
    Q57B = "ten of";
    Q60B = Q60B + 0x01;
    break;
  case 0x0B:
    Q57B = "almost";
    Q60B = Q60B + 0x01;
    Q45A = 0x01;
    break;
  case 0x0C:
    Q57B = "";
    Q45A = 0x01;
    break;
  default:
    Q57B = "no known minutes!";
    break;
  }
  if(Q60B > 0x17)
  {
    Q60B = 0x00;
  }
  switch(Q60B)
  {
  default:
    Q4WP = "no known hour!";
    break;
  case 0x00:
    Q4WP = "midnight";
    Q45A = 0x00;
    break;
  case 0x0C:
    Q4WP = "noon";
    Q45A = 0x00;
    break;
  case 0x01:
  case 0x0D:
    Q4WP = "one";
    break;
  case 0x02:
  case 0x0E:
    Q4WP = "two";
    break;
  case 0x03:
  case 0x0F:
    Q4WP = "three";
    break;
  case 0x04:
  case 0x10:
    Q4WP = "four";
    break;
  case 0x05:
  case 0x11:
    Q4WP = "five";
    break;
  case 0x06:
  case 0x12:
    Q4WP = "six";
    break;
  case 0x07:
  case 0x13:
    Q4WP = "seven";
    break;
  case 0x08:
  case 0x14:
    Q4WP = "eight";
    break;
  case 0x09:
  case 0x15:
    Q4WP = "nine";
    break;
  case 0x0A:
  case 0x16:
    Q4WP = "ten";
    break;
  case 0x0B:
  case 0x17:
    Q4WP = "eleven";
    break;
  }
  if(Q45A)
  {
    Q4WP = Q4WP + " o'clock";
  }
  if((Q60B > 0x00) && (Q60B < 0x0B))
  {
    Q4WP = Q4WP + " in the morning";
  }
  if((Q60B > 0x0C) && (Q60B < 0x15))
  {
    Q4WP = Q4WP + " in the afternoon";
  }
  if(Q60B > 0x14)
  {
    Q4WP = Q4WP + " at night";
  }
  Q613 = "It is " + Q57B + " " + Q4WP + ".";
  ebarkTo(this, user, Q613);
  return(0x01);
}