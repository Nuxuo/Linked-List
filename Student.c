typedef enum { false = 0, true = !false } bool;

typedef struct StudentItem
{
    int Size;
    char * Name;
    struct StudentItem * Next;

} STUDENT;

STUDENT * StudentStart = NULL;
STUDENT * Seeker;

STUDENT * NewSTUDENT(char * Text){
    STUDENT * New;
    New = (STUDENT*) malloc(sizeof(STUDENT));
    New->Name = (char *) malloc(sizeof(strlen(Text) + 1));
    strcpy(New->Name,Text);
    New->Size = 1 + rand() % 1000;
    New->Next=NULL;
    return New;
}

void FreeRAM(STUDENT * Head){
    if (Head->Next!=NULL)
        FreeRAM(Head->Next);
    free(Head);
    Head = NULL;
}

STUDENT * FindPrev(STUDENT * Head , STUDENT * Target){
    if(Target == StudentStart)
        return NULL;
    if (Head->Next != NULL){
        Seeker = Head->Next;
        if(Seeker == Target)
            return Head;
        else
            return FindPrev(Seeker,Target);
    }
}

void SwapContent(STUDENT * One , STUDENT * Two){
    // printf("%s - %s\n",One->Name,Two->Name);
    // if(StudentStart->Next == NULL)
    //     return;

    // STUDENT * ONE_NEXT = One->Next;
    // STUDENT * ONE_PREV = NULL;
    // STUDENT * TWO_PREV = FindPrev(StudentStart,Two);

    // if(FindPrev(StudentStart,One) != NULL)
    //     ONE_PREV = FindPrev(StudentStart,One);

    // if (Two->Next != NULL)
    //     One->Next = Two->Next;
    // else
    //     One->Next = NULL;

    // TWO_PREV->Next = One;

    // if(ONE_PREV != NULL)
    //     ONE_PREV->Next = Two;
    // else 
    //     StudentStart = Two;

    // if(ONE_NEXT == Two)
    //     Two->Next = One;
    // else   
    //     Two->Next = ONE_NEXT;


    int TEMP_SIZE = One->Size; char * TEMP_CHAR = One->Name;
    One->Size = Two->Size; One->Name = Two->Name;
    Two->Size = TEMP_SIZE; Two->Name = TEMP_CHAR;
}

bool _SizeCompare(STUDENT * A, STUDENT * B){
    return A->Size > B->Size ? true : false;
}

bool _AlphCompare(STUDENT * A, STUDENT * B){
    return strncmp(A->Name,B->Name,10) > 0  ? true : false;
}


void __Push(char * Text){
    STUDENT * New = NewSTUDENT(Text);
    New->Next = StudentStart;
    StudentStart = New;
}

void __AlphabeticAdd(char * Text){
    STUDENT * New = NewSTUDENT(Text);

    if(StudentStart == NULL){
        StudentStart = New;
        return;
    }

    Seeker = StudentStart;
    while (Seeker->Next != NULL){
        if (_AlphCompare(Seeker,Seeker->Next)){
            New->Next = Seeker->Next;
            Seeker->Next = New;
            return;
        }
        else
            Seeker = Seeker->Next;
    }
    Seeker->Next = New;
}

void __DeleteContent(char * Name){
    printf("Query [ Delete %s ]\n",Name);
    Seeker = StudentStart;
    while (strcmp(Seeker->Name,Name))
        Seeker = Seeker->Next;

    STUDENT * PREV_DELETE = FindPrev(StudentStart,Seeker);
    if(PREV_DELETE != NULL)
        if(Seeker->Next != NULL)
            PREV_DELETE->Next = Seeker->Next;
        else 
            PREV_DELETE->Next = NULL;
    else
        StudentStart = Seeker->Next;
}

void DisplayContents(){
    Seeker = StudentStart;

    do{
        printf("%-10s %03d\n",Seeker->Name,Seeker->Size);
        Seeker = Seeker->Next;
    } while (Seeker != NULL);
    
}


void BubbleSort(bool (*cmp_func)(STUDENT * A, STUDENT * B)){
    STUDENT * SortSeeker = StudentStart;
    int Sorted = 1;

    while (Sorted == 1){
        Sorted = 0;
        while (SortSeeker->Next != NULL)
        {
            if(cmp_func(SortSeeker,SortSeeker->Next)) {
                SwapContent(SortSeeker,SortSeeker->Next);
                Sorted = 1;
            }
            SortSeeker = SortSeeker->Next;
        }
        SortSeeker = StudentStart;
    }
}

void ReverseList(){
    if(StudentStart->Next == NULL)
        return;
    
    STUDENT * CURRENT = StudentStart;
    STUDENT * NEXT    = NULL;
    STUDENT * PREV    = NULL;

    while (CURRENT != NULL){
        NEXT = CURRENT->Next;
        CURRENT->Next = PREV;
        PREV = CURRENT;
        CURRENT = NEXT;
    }
    StudentStart = PREV;
}