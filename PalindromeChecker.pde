public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = "";
  for(int i = 0; i < word.length(); i++)
  {
    if(word.charAt(i) != ' ' && Character.isLetter(word.charAt(i)) == true){newWord += word.substring(i, i+1).toLowerCase();}
  }  
  if(reverse(word).equals(newWord)){return true;}
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
    {
      if(str.charAt(i) != ' ' && Character.isLetter(str.charAt(i)) == true){sNew += str.substring(i, i+1).toLowerCase();}
    }
    return sNew;
}


