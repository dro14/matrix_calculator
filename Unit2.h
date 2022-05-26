//---------------------------------------------------------------------------
#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include "Unit1.h"


class functions
{
public:
	const void REF(vector<vector<double>>&);
	const void RREF(vector<vector<double>>&);
	const int rank(vector<vector<double>>&);
	const double determinant(vector<vector<double>>&);
	const vector<vector<double>> inverse(vector<vector<double>>&);
};

//---------------------------------------------------------------------------
#endif

