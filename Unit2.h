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

	const vector<vector<double>> transpose(vector<vector<double>>&) const;
	const vector<vector<double>> multiplier_bykoef(vector<vector<double>>&, double&) const;
	const vector<vector<double>> power(vector<vector<double>>&, int&) const;

	const vector<vector<double>> adding(vector<vector<double>>&, vector<vector<double>>&) const;
	const vector<vector<double>> subtracting(vector<vector<double>>&, vector<vector<double>>&) const;
	const vector<vector<double>> multiplication(vector<vector<double>>&, vector<vector<double>>&) const;
};

//---------------------------------------------------------------------------
#endif

