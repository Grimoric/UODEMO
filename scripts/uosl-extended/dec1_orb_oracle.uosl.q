// UOSL (enhanced)
inherits globals;

trigger use(obj user)
{
  list Q41Z;
  int Q4WP = getHour();
  if(Q4WP >= 0x14)
  {
    int Q44E = getStrength(user);
    int Q44A = getIntelligence(user);
    int Q449 = getDexterity(user);
    int Q44C;
    if(!getCompileFlag(0x01))
    {
      Q44C = getNotoriety(user);
    }
    else
    {
      Q44C = getKarmaLevel(user);
    }
    string Q44B = getName(user);
    int Q44D = getSex(user);
    int Q5L6 = random(0x00, 0x04);
    switch(Q5L6)
    {
    case 0x00:
      if(Q44E >= 0x32 && (Q44A >= 0x32) && (Q449 >= 0x32))
      {
        bark(this, "Thou shant not fear, the dangers near, sword, mind and nimble feet shall clear.");
        return(0x00);
      }
      if(Q44E >= 0x32 && !(Q44A >= 0x32) && !(Q449 >= 0x32))
      {
        bark(this, "A warrior in thee, I see, for the depths of this place should challenge thee.");
        return(0x00);
      }
      if(Q44A >= 0x32 && !(Q44E >= 0x32) && !(Q449 >= 0x32))
      {
        bark(this, "Strong of mind, must bind, the tricks of the depths that ye shall find.");
        return(0x00);
      }
      if(Q449 >= 0x32 && !(Q44E >= 0x32) && !(Q44A >= 0x32))
      {
        bark(this, "Nimble of feet, thou shall defeat, what traps of the depths ye mayhaps meet.");
        return(0x00);
      }
      bark(this, "The dangers one must decide, they do reside, and fear might be thy only guide.");
      return(0x00);
    case 0x01:
      if(Q44A >= 0x50)
      {
        bark(this, "Crying shame, 'twas but a game, only thee might uncover the philosopher's name.");
      }
      else
      {
        bark(this, "'Tis but a shame, the secret remains, in the depths of this deep and dark domain.");
      }
      return(0x00);
    case 0x02:
      if(Q44E < 0x32 && (Q44A < 0x32) && (Q449 < 0x32))
      {
        bark(this, "Fear thee well,");
        bark(this, "Thou canst not tell,");
        bark(this, "What beast shall feast,");
        bark(this, "Once thou hast fell.");
        return(0x00);
      }
      list Q41D;
      if(Q44E >= 0x32)
      {
        bark(this, "Strength in thy arm,");
        appendToList(Q41D, "Thy foes ye meet, no doubt ye should harm.");
      }
      if(Q449 >= 0x32)
      {
        bark(this, "Swift in thy feet,");
        appendToList(Q41D, "Thy traps ye find, ye shall defeat.");
      }
      if(Q44A >= 0x32)
      {
        bark(this, "Thy mind shant not flee,");
        appendToList(Q41D, "The treasures within, should become part of thee.");
      }
      bark(this, Q41D[random(0x00, numInList(Q41D) - 0x01)]);
      return(0x00);
    case 0x03:
      string Q5DH;
      string Q636;
      if(!getCompileFlag(0x01))
      {
        if(Q44C < (0x00 - 0x015E))
        {
          Q5DH = "foul";
        }
        if(Q44C > 0x015E)
        {
          Q5DH = "most honorable";
        }
        if(Q44C >= (0x00 - 0x015E) && (Q44C <= 0x015E))
        {
          Q5DH = "good";
        }
      }
      else
      {
        if(Q44C < (0x00 - 0x02))
        {
          Q5DH = "foul";
        }
        if(Q44C > 0x02)
        {
          Q5DH = "most honorable";
        }
        if(Q44C >= (0x00 - 0x01) && (Q44C <= 0x03))
        {
          Q5DH = "good";
        }
      }
      if(Q44D == 0x00 || (Q44D == 0x02))
      {
        Q636 = "sir";
      }
      else
      {
        Q636 = "lady";
      }
      string Q5X9;
      Q5X9 = Q44B + ", " + Q5DH + " " + Q636 + ", thou hast thy bravery at least.";
      bark(this, Q5X9);
      return(0x00);
    case 0x04:
      string speech;
      if(!getCompileFlag(0x01))
      {
        if(Q44C > 0x015E)
        {
          speech = "Your reputation, " + Q44B + ", it doth preceed thee,";
          bark(this, speech);
          bark(this, "Your fate doth swirl, I canst not see.");
        }
        if(Q44C >= (0x00 - 0x015E) && (Q44C <= 0x015E))
        {
          speech = "I know not of you, " + Q44B + ", your fate is shrouded in mystery.";
          bark(this, speech);
        }
        if(Q44C < (0x00 - 0x015E))
        {
          speech = "Foul beasts within, whom ye may find good company, most wicked " + Q44B + ".";
          bark(this, speech);
        }
      }
      else
      {
        if(getFameLevel(user) > 0x02)
        {
          speech = "Your reputation, " + Q44B + ", it doth precede thee,";
          bark(this, speech);
          bark(this, "Your fate doth swirl, I canst not see.");
        }
        if(getFameLevel(user) < 0x03)
        {
          speech = "I know not of you, " + Q44B + ", your fate is shrouded in mystery.";
          bark(this, speech);
        }
        if(Q44C < 0x00)
        {
          speech = "Foul beasts within, whom ye may find good company, most wicked " + Q44B + ".";
          bark(this, speech);
        }
      }
      return(0x00);
    }
  }
  else
  {
    list Q5N8 = "The shimmering clouds have revealed a dark destiny, one wrought with peril.", "The cloudy mist of the all-seeing eye have revealed a path filled with still waters.", "The clouds of time reveal the ghosts of the past, still priesting over their congregation.", "Ye shant not fail, have you the eye of an eagle, the strength of an ox and the nibleness of a wolverine.", "The clouds reveal a philosopher, a priest and three thousand leagues of skeletons marching row by row.", "The halls of fate, the halls of doom, in wells of thought, one might find room.", "Ghastly shadows on forlorn walls, echo the death of foes and falls.", "Beware ye who pass this way, for darkness works in mysterious ways.", "On bended knee they came and slew, ten thousand souls for the freedom of Yew.", "Brave hearts dive in and yet not return, their fates swallowed by the fires that burn.", "Once a treasure was laid at the bottom of the tomb, in darkness and light, its wealth did bloom.", "Cast not one eye to the flames' disguise, for marching in order are invisible eyes.";
    bark(this, Q5N8[random(0x00, numInList(Q5N8) - 0x01)]);
  }
  return(0x00);
}