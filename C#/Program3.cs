// See https://aka.ms/new-console-template for more information
using System;
using System.ComponentModel.Design;


namespace  MyApplication
{
    class Program
    {
        static void Main(string[] args) 
        {
            for (int i = 0; i < 50; i++) 
            {
                Console.WriteLine("Ehtashamul");
            }
        }
    }
}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
    //class Program
    //{
        //static int PlusMethod (int x , int y)
        //{
            //return x + y;
        //}

        //static double PlusMethod(double x , double y) 
        //{
            //return x + y;
        //}

        //static void Main(string[] args)
        //{
            //int myNum1 = PlusMethod(10, 20);
            //double myNum2 = PlusMethod(25.5, 35.5);
            //Console.WriteLine("Int: " + myNum1);
            //Console.WriteLine("Double: " + myNum2);
        //}
    //}
//}


//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
    //class Program
    //{
        //static int PlusMethodInt(int x, int y)
        //{
            //return x + y;
        //}

        //static double PlusMethodDouble(double x, double y)
        //{
            //return x + y;
        //}

        //static void Main(string[] args)
        //{
            //int myNum1 = PlusMethodInt(8, 5);
            //double myNum2 = PlusMethodDouble(4.3, 6.26);
            //Console.WriteLine("Int: " + myNum1);
            //Console.WriteLine("Double: " + myNum2);
        //}
    //}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int[,] numbers = { { 1, 4, 2 }, { 3, 5, 6 } };

//for (int i = 0; i < numbers.GetLength(0); i++)
//{
//for (int j = 0; j < numbers.GetLength(1); j++)
//{
//Console.WriteLine(numbers[i, j]);
//}
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int[,] numbers = { { 1, 4, 2 }, { 3, 5, 6 }, };
//foreach (int i in numbers) 
//{
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int[,] numbers = { { 2, 4, 6 }, { 3, 5, 7 }, };
//numbers[0, 0] = 15;
//Console.WriteLine(numbers[0,0]);
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
// static void Main(string[] args) 
//{
//int[,] numbers = { { 2, 4, 6 }, { 5, 10, 15 } };
//Console.WriteLine(numbers[0,2]);
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args)
//{
//int[] myNumber = { 4, 5, 2, 6 };
//{
//Console.WriteLine(myNumber.Max());
//Console.WriteLine(myNumber.Min());
//Console.WriteLine(myNumber.Sum());
//}
//}
//}
//}


//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int[] myNumber = { 4, 5, 6, 7 };
//Array.Sort(myNumber);
//foreach (int i in myNumber) 
//{
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda" };
//foreach (string i in cars) 
//{
//Console.WriteLine(i);
//}

//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda" };
//for (int i = 0; i < cars.Length; i++)
//{
//Console.WriteLine(cars[i]);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazada" };
//for (int i = 0; i < cars.Length; i++) 
//{
//Console.WriteLine(cars[i]);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars;
//cars = new string[] { "BMW", "Volvo", "Ford", "Suzuki" };
//Console.WriteLine(cars[1]);
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args)
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda", "Suzuki" };
//Console.WriteLine(cars.Length);
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda" };
//cars[0] = "Open1";
//Console.WriteLine(cars[0]);
//}

//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args)
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda" };
//Console.WriteLine(cars[1]);
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//for (int i = 0; i <= 10; i = i + 2) 
//{
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//for (int i = 0; i < 10; i++)
//{
//if (i == 4)
//{
//continue;
//}
//Console.WriteLine(i);
//}         
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//for (int i = 0; i < 10; i++)
//{
//if (i == 4)
//{
//break;
//}
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//string[] cars = { "Volvo", "BMW", "Ford", "Mazda" };
//foreach (string i  in cars) 
//{
// Console.WriteLine(i);
//}
//}
//} 
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication 
//{
//class Program
//{
//static void Main(string[] args)
//{
//Outer loop
//for (int i = 1; i <= 2; ++i) 
//{
//Console.WriteLine("Outer: " + i);

//Inner loop
//for (int j = 1; j <= 3; j++)
//{
//Console.WriteLine("Inner: " + j);
//}

//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//for (int i = 0; i <= 20; i = i + 2) 
//{
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//for (int i = 0; i < 5; i++)
//{
//Console.WriteLine(i);
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyAppliction
//{
//class Program
//{
//static void Main(string[] args)
//{
//int i = 0;
//do
//{
//Console.WriteLine(i);
//i++;
//}
//while (i <5 );
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int i = 1;
//while (i < 10)
//{
//Console.WriteLine(i);
//i++;
//}
//}
//}
//}

//---------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void Main(string[] args) 
//{
//int day = 4;
//switch (day) 
//{
//case 6:
//Console.WriteLine("Today is Saturday");
//break;
//case 7:
//Console.WriteLine("Today is Sunday");
//break;
//default:
//Console.WriteLine("Looking forward to the Weekend");
//break;

//}
//}
//}
//}


//------------------------------------------------------------------------------------------------------------
//amespace MyApplication
//{
//class Program
//{
//static void Main(string[] args)
//{
//int day = 6;
//switch (day) 
//{
//case 1:
//Console.WriteLine("Monday");
//break;
//case 2:
//Console.WriteLine("Tuesday");
//break;
//case 3:
//Console.WriteLine("Wednesday");
//break;
//case 4:
//Console.WriteLine("Thursday");
//break;
//case 5:
//Console.WriteLine("Friday");
//break;
//case 6:
//Console.WriteLine("Saturday");
//break;
//case 7:
//Console.WriteLine("Sunday");
//break;
//}
//}
//}
//}

//------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void MyMethod(string child1, string child2, string child3)
//{
//Console.WriteLine("The youngest child is: " + child2);
//}

//static void Main(string[] args)
//{
//MyMethod(child1: "Sahu", child2: "Ehtam", child3: "Nada");
//}
//}
//}

//namespace MyApplication
//{
//class Program
//{
//static int MyMethod(int x, int y)
//{
//return x + y;
//}
//static void Main(string[] args)
//{
//Console.WriteLine(MyMethod(10, 8));
//}
//}
//}

//----------------------------------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static void MyMethod(string fname, int age)
//{
//Console.WriteLine(fname + "is " + age);
//}

//static void Main(string[] args)
//{
//MyMethod("Sahu ", 24);
//MyMethod("Ehtram ", 20);
//MyMethod("Nada ", 18);
//}
//}

//}

//namespace MyApplication
//{
//class Program
//{
//static void MyMethod(string fname)
//{
//Console.WriteLine(fname + " Haque");
//}

//static void Main(string[] args) 
//{
//MyMethod("Ehtashamul" );
//MyMethod("Ehtramul" );
//MyMethod("Nada" );
//}
//}
//}

//--------------------------------------------------------------------------------------------------
//namespace MyAppliction
//{
//class Program
//{
//static void MyMethod()
//{
//Console.WriteLine("Ehtashamul!");
//}
//static void Main(string[] args) 
//{
//MyMethod();
//MyMethod();
//MyMethod();
//}
//}
//}

//-------------------------------------------------------------------------------------------------
//namespace MyApplication
//{
//class Program
//{
//static int MyMethod(int x)
//{
//return 10 + x;
//}

//static void Main(string[] args)
//{
//Console.WriteLine(MyMethod(3));
//}
//}

//}


//---------------------------------------------------------------------------------------
//int time = 25;
//string result = (time < 15) ? "Sahu" : "Ehtram";
//Console.WriteLine(result);

//----------------------------------------------------------------------------------
//int time = 25;
//if (time < 18)
//{
//Console.WriteLine("Ehtashamul");
//}
//else 
//{
//Console.WriteLine("Ehtram");
//}

//--------------------------------------------------------------------------------
//int time = 25;
//if (time < 15)
//{
//Console.WriteLine("Ehtashamul");
//}
//else  if (time < 20)
//{
//Console.WriteLine("Ehtramul");
//}
//else
//{
//Console.WriteLine("Nada");
//}

//----------------------------------------------------------------------------------
//int time = 25;
//if (time < 20)
//{
//Console.WriteLine("Ehtramul");
//}
//else
//{
//Console.WriteLine("Ehtashamul");
//}



//----------------------------------------------------------------------------------
//int time = 20;
//if (time < 18)
//{
//Console.WriteLine("Ehtramul");
//}
//else 
//{
//Console.WriteLine("Ehtashamul");
//}


//---------------------------------------------------------------------------------
//int x = 20;
//int y = 16;
//if (x > y) 
//{
//Console.WriteLine("x is greater than y");
//}

//--------------------------------------------------------------------------------
//if (20 > 18)
//{
//Console.WriteLine("20 is greater  than 18");
//}

//--------------------------------------------------------------------------------
//int x = 10;
//int y = 20;
//Console.WriteLine(x < y);

//--------------------------------------------------------------------------------
//string myString = "Ehtashamul";
//Console.WriteLine(myString[0]);

//----------------------------------------------------------------------------------
//string firstName = "Ehtramul ";
//string lastName = "Haque";
//string name = $"My full name is : {firstName}  {lastName}";
//Console.WriteLine(name);

//--------------------------------------------------------------------------------
//string firstName = "Ehtramul ";
//string lastName = "Haque";
//string name = string.Concat(firstName, lastName);
//Console.WriteLine(name);

//-------------------------------------------------------------------------------
//string firstName = "Ehtashamul ";
//string lastName = "Haque";
//string name = firstName + lastName;
//Console.WriteLine(name);

//-------------------------------------------------------------------------------
//string txt = "Hello World";
//Console.WriteLine(txt.ToUpper());
//Console.WriteLine(txt.ToLower());

//------------------------------------------------------------------------------
//int x = 8;
//int y = 10;
//Console .WriteLine(x < y);


//------------------------------------------------------------------------------
//int sum1 = 102 + 55;
//int sum2 = sum1 + 255;
//int sum3 = sum2 + sum2;

//double myDouble = 9.78;
//int myInt = (int) myDouble;

//Console.WriteLine(myDouble);
//Console.WriteLine(myInt);

//----------------------------------------------------------------------------
//int myInt = 8;
//double myDouble = myInt;

//Console.WriteLine(myInt);
//Console.WriteLine(myDouble);

//----------------------------------------------------------------------------
//string greeting = "Ehtashamul Haque";
//Console.WriteLine(greeting);

//----------------------------------------------------------------------------
//char myGrade = 'A';
//Console.WriteLine(myGrade);

//--------------------------------------------------------------------------
//bool isCSharpFun = true;
//bool isFishTasty = false;
//Console.WriteLine(isFishTasty);
//Console.WriteLine(isCSharpFun);

//-------------------------------------------------------------------------
//float f1 = 26e3F;
//double d1 = 15E4D;
//Console.WriteLine(f1);
//Console.WriteLine(d1);


//-------------------------------------------------------------------------
//double myNum = 20.59D;
//Console.WriteLine(myNum);


//------------------------------------------------------------------------
//float myNum = 5.75F;
//Console.WriteLine(myNum);


//------------------------------------------------------------------------       //long myNum = 150000000L;
//Console.WriteLine(myNum);


//------------------------------------------------------------------------
//int myNum = 100000;
//Console.WriteLine(myNum);


//int x, y, z;
//x = y = z = 60;
//Console.WriteLine(x + y + z);


//int x = 4, y = 5, z = 60;
//Console.WriteLine(x + y + z);

//int x = 10;
//int y = 20;
//Console.WriteLine(x + y);


//-------------------------------------------------------------------------
//string firstName = "Ehtashamul ";
//string lastName = "Haque";
//string fullName = firstName + lastName;
//Console.WriteLine(fullName);


//-----------------------------------------------------------------------
//string name = "Sahu";
//Console.WriteLine("Hello "+ name);

//-------------------------------------------------------------------------
//int myNum = 5;
//double myDoubleNum = 5.99D;
//char myLetter = 'D';
//bool myBool = true;
//string myText = "Hello";

//-------------------------------------------------------------------------
//int myNum = 20;
//myNum = 20; 
//Console.WriteLine(myNum);   

//------------------------------------------------------------------------
//int myNum;
//myNum = 18;
//Console.WriteLine(myNum);

//-----------------------------------------------------------------------
//int myNum = 16;
//Console.WriteLine(myNum);

//-----------------------------------------------------------------------
//string name = "Sahu";
//Console.WriteLine(name);


//-----------------------------------------------------------------------
//Console.WriteLine("Hello World! ");
//Console.WriteLine("I will print on the same line");


//-------------------------------------------------------------------------
//Console.WriteLine(3 + 3);


//________________________________________________________________________
//Console.WriteLine("Hello World!");
//Console.WriteLine("I am Learning C#");
//Console.WriteLine("It is awesom!");

//--------------------------------------------------------------------------
//Console.WriteLine("Hello World!");





