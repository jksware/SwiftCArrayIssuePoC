#include "carr.h"

const int CPocLibraryValues[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
const int *CPocLibraryPointer = CPocLibraryValues;

struct famStruct valueFamStruct = { 10, { 21, 22, 23, 24, 25, 26, 27, 28, 29, 30 } };

int* getDataPtr(struct famStruct *fam)
{
    return fam->data;
}