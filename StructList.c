#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdlib.h>
#include <conio.h>
#include <time.h>
#include "Student.c"

void _SETUP_(){
    system("cls");
    srand(time(0));

    __Push("Andreas");
    __Push("Oliver");
    __Push("Lasse");
    __Push("Ditte");
    __Push("Jesper");
    __Push("Jens");
    __Push("Per");
    __Push("Thomas");
    __Push("Kennth");
    __Push("Kurt");
}

void _BASESHOWCASE_(){
    // UNCHANGED LIST.
    printf("\nList of Students\n");
    DisplayContents();

    // SwapContent(StudentStart->Next->Next->Next->Next->Next->Next->Next,StudentStart->Next->Next->Next->Next->Next->Next->Next->Next->Next);

    // BUBBLE SORT USING CUSTOM COMAPRE FUNC
    BubbleSort(_AlphCompare);
    printf("\nList of Students after Alphabetic Sort\n");
    DisplayContents();

    BubbleSort(_SizeCompare);
    printf("\nList of Students after Size Sort\n");
    DisplayContents();

    // REVERSE LIST 
    ReverseList();
    printf("\nList of Students after Reverse\n");
    DisplayContents();

    // DELETES STUDENT
    printf("\nList of Students after Deletion\n");
    __DeleteContent(StudentStart->Next->Name);
    DisplayContents();
}

void _SHUTDOWN_(){
    // FREE RAM AFTER LAST FUNCTION
    FreeRAM(StudentStart);
    printf("\n\n## Succes ##");

}

void main(){
    _SETUP_();
    _BASESHOWCASE_();
    _SHUTDOWN_();
}