#pragma once

extern const int CPocLibraryValues[];
extern const int *CPocLibraryPointer;

struct famStruct {
    int size;
    int data[];
};

extern struct famStruct valueFamStruct;
int* getDataPtr(struct famStruct *fam);