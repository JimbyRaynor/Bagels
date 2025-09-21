#include <math.h>
#include <iostream>
#include <string>
#include <ctime>
using namespace std;

int A[20];  // the random 3 digit number
int A1[20]; // your guess digits in ASCII
int B[20];  // your guess digits in 0,1,...,9
int n = 3;  // number of digits
int y = 0;  // number of games won
bool playagain = true;

bool repeatfound(int i)
{
    for (int j = 1; j <= i - 1; j++)
    {
        if (A[i] == A[j])
        {
            return true;
        }
    }
    return false;
}

bool userrepeatfound()
{
    if (B[1] == B[2] or B[1] == B[3] or B[2] == B[3])
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool convertstringtodigits(string ad)
{
    for (int i = 1; i <= 3; i++)
    {
        B[i] = ad[i - 1]; // C++ will convert char to int. Note that string ad is zero based!
        if (B[i] > 57)
            return false;
        if (B[i] < 48)
            return false;
        B[i] = B[i] - 48;
    }
    return true;
}

bool newgame(bool win)
{
    string ad2;
    if (win == true)
    {
        cout << "You got it!!!\n";
        y = y + 1;
    }
    
    cout << "Play again (yes or no)? ";
    cin >> ad2;
    if (ad2[0] == 'y')
    {
        playagain = true;
    }
    else
    {
        playagain = false;
        if (y > 0)
        {
            cout << "A " << y << " point Bagels buff!!\n";
            cout << "Hope you had fun. Bye!";
        }
    }
}

int main(int argc, char *argv[])
{
    int i;
    int c; // number of correct digits, unordered
    int d; // number of correct digits, ordered
    srand(time(NULL));
    string ad;
    cout << "BAGELS (";
    cout << "guess the number game)\n";
    cout << "Created sometime between 1964 and 1973 \n";
    cout << "From the book 101 Basic Games, Creative Computing (1973)\n";
    cout << "The original authors of this program were D. Resek and P. Rowe of the Lawrence Hall of Science, Berkeley California";
    cout << "\n\n";
    cout << "Would you like the rules? (y or n) ";
    cin >> ad;
    if (ad[0] == 'y')
    {
        cout << "Instructions\n";
        cout << "I am thinking of a three digit number. Try to guess my number and I will give you clues as follows:\n";
        cout << "pico  -  one digit correct but in the wrong position\n";
        cout << "fermi  -  one digit correct in the correct position\n";
        cout << "bagels - no digits correct\n";
    }
    while (playagain)
    {
        A[1] = rand() % 9 + 1; // first digit not 0
        for (int i = 2; i <= n; i++)
        {
            A[i] = rand() % 10;
            while (repeatfound(i))
            {
                A[i] = rand() % 10;
            }
        }
        //A[i] contains three random digits 0,...,9
        // they must be all different
        cout << "\nO.K. I have a number in mind.\n";
        i = 1;
        ad = "";
        while (i <= 20)
        {
            while (ad.length() != 3)
            {
                cout << "Guess " << i << " : ";
                cin >> ad;
                if (ad.length() != 3)
                {
                    cout << "You should enter a three digit number. Try again. \n";
                }
                if (convertstringtodigits(ad) == false)
                {
                    cout << "What?\n";
                    ad = "";
                }
                if (userrepeatfound())
                {
                    cout << "\nOh! I forgot to tell you that the number I have in mind has no two digits the same.\n";
                    ad = "";
                }
            }
            c = 0; // unordered correct
            d = 0; // ordered correct
            for (int j = 1; j <= 2; j++)
            {
                if (A[j + 1] == B[j])
                {
                    c++;
                }
                if (B[j + 1] == A[j])
                {
                    c++;
                }
            }
            if (A[1] == B[3])
            {
                c++;
            }
            if (A[3] == B[1])
            {
                c++;
            }
            for (int j = 1; j <= 3; j++)
            {
                if (A[j] == B[j])
                {
                    d++;
                }
            }
            if (d == 3)
            {
                newgame(true);
                break; // exit i loop
            }
            if (c == 0 and d == 0)
            {
                cout << "Bagels";
            }
            for (int j = 1; j <= c; j++)
            {
                cout << "Pico ";
            }
            for (int j = 1; j <= d; j++)
            {
                cout << "Fermi ";
            }
            cout << "\n";
            ad = "";
            i++;
        }
        if (d < 3)
        {
            cout << "Oh well.\n";
            cout << "That's 20 guesses. ";
            cout << "My number was " << A[1] << A[2] << A[3] << "\n";
            newgame(false);
        }
    }
}