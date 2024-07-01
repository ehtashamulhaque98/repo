// See https://aka.ms/new-console-template for more information
using System;

class Program
{
    static void Main(string[] args)
    {
        Console.WriteLine("Welcome");
        Console.WriteLine("Ehtashamul");


        int myAge = 25;
        int votingAge = 18;

        int myInt = 9;
        double myDouble = myInt;

        if (myAge <= votingAge)
        {
            Console.WriteLine("Old enough to vote!");
        }
        else
        {
            Console.WriteLine("Not old enough to vote.");
            Console.WriteLine(myInt);
            Console.WriteLine(myDouble);
        }
    }
}







