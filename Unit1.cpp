//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	String empty;
	Memo1->Text = empty;
	Memo2->Text = empty;
}
//---------------------------------------------------------------------------
template<typename T>
String TForm1::to_String(const T& text) const
{
	String Str;

	stringstream s;
	s << text;
	string str = s.str();

	for (int i = 0; i < str.length(); i++) {
		Str += str[i];
	}

	return Str;
}

void TForm1::display(const String& Str, TMemo* Memo) const
{
	Memo->Lines->Add(Str);
}

vector<vector<double>> TForm1::input(TMemo* Memo) const
{
	int num_of_rows = Memo->Lines->Count;
	double temp = NULL;
	String Str;
	string str;
	vector<double> vec;
	vector<vector<double>> matrix;

	for (int i = 0; i < num_of_rows; i++) {
		Str = Memo->Lines->Strings[i];
		for (int i = 1; i <= Str.Length(); i++) {
			str += Str[i];
			if (Str[i] == ' ' || i == Str.Length()) {
				stringstream s(str);
				s >> temp;
				if (temp != NULL)
					vec.push_back(temp);
				temp = NULL;
				str.clear();
			}
		}
		matrix.push_back(vec);
		vec.clear();
	}
	return matrix;
}

void TForm1::show(const vector<vector<double>>& matrix, TMemo* Memo) const
{
	int num_of_rows = matrix.size();
	int num_of_columns = matrix[0].size();
	String Str;
	vector<string> vec_str;

	for (int i = 0; i < num_of_rows; i++) {
		stringstream s;
		for (int j = 0; j < num_of_columns; j++) {
			s << setw(24) << matrix[i][j];
		}
		if (!s.str().empty())
			vec_str.push_back(s.str());
	}

//	Memo->Text = Str;
	for (int i = 0; i < num_of_rows; i++) {
		for (int j = 0; j < vec_str[i].length(); j++) {
			Str += vec_str[i][j];
		}
		if (!Str.IsEmpty())
			Memo->Lines->Add(Str);
		Str.~UnicodeString();
	}
}

void TForm1::ref(vector<vector<double>>& matrix, TMemo* Memo) const
{
	vector<vector<double>> &A = matrix;
	unsigned long long nr = matrix.size();
	unsigned long long nc = matrix[0].size();

	display("", Memo);
	display("", Memo);
	display("Original matrix:", Memo);
	display("", Memo);
	show(matrix, Memo);
	display("", Memo);
	display("", Memo);

//  Putting zero rows at the bottom
	check_again_1:
	for (int r = 0; r < nr; r++) {

//      Checking whether the current row is a zero row or not
		bool allZeros = true;
		for (int c = 0; c < nc; c++) {
			if (A[r][c] != 0) {
				allZeros = false;
				break;
			}
		}

//      If the current row is a zero row, then swap it with the last row
		if (allZeros && r != nr - 1) {
			for (int i = 0; i < nc; i++) {
				double temp_a = A[r][i];
				A[r][i] = A[nr - 1][i];
				A[nr - 1][i] = temp_a;
			}

			display("Swapping row " + to_String(nr) + " with row "
				+ to_String(r + 1) + ", which is a zero row", Memo2);
			display("", Memo2);
			show(matrix, Memo2);
			display("", Memo2);

			nr--;
			goto check_again_1;
		}
	}

	int row = -1;
	for (int i = 0; i < nc; i++) {
		if (row + 1 < nr) row++;
		next_column:

//      Search for maximum in this column
		double maxEl = abs(A[row][i]);
		int maxRow = row;
		for (int r = row + 1; r < nr; r++) {
			if (maxEl < abs(A[r][i])) {
				maxEl = abs(A[r][i]);
				maxRow = r;
			}
		}

//      Swap maximum row with current row (column by column)
		if (row != maxRow && maxEl != 0) {
			for (int c = 0; c < nc; c++) {
				double temp_a = A[row][c];
				A[row][c] = A[maxRow][c];
				A[maxRow][c] = temp_a;
			}
			display("Swapping row " + to_String(row + 1) + " with row "
				+ to_String(maxRow + 1) + ", which has the maximum absolute value of "
				+ to_String(maxEl) + " in column " + to_String(i + 1), Memo2);
			display("", Memo2);
			show(matrix, Memo2);
			display("", Memo2);
		} else if (maxEl == 0 && i + 1 < nc) {
			i++;
			goto next_column;
		}

//      Make all rows below the current row 0 in current column
		for (int k = row + 1; k < nr; k++) {
			double g = A[k][i] / A[row][i];
			if (g != 0 && A[row][i] != 0) {
				for (int j = 0; j < nc; j++) {
					A[k][j] -= g * A[row][j];
					if (abs(A[k][j]) < 1e-10 || A[k][j] == -0) A[k][j] = 0;
				}
				display("Subtracting row " + to_String(row + 1) + " multiplied by "
					+ to_String(g) + " from row " + to_String(k + 1), Memo2);
				display("", Memo2);
				show(matrix, Memo2);
				display("", Memo2);
			}
		}
	}

//  Putting zero rows at the bottom
	check_again_2:
	for (int r = 0; r < nr; r++) {

//      Checking whether the current row is a zero row or not
		bool allZeros = true;
		for (int c = 0; c < nc; c++) {
			if (A[r][c] != 0) {
				allZeros = false;
				break;
			}
		}

//      If the current row is a zero row, then swap it with the last row
		if (allZeros && r != nr - 1) {
			for (int i = 0; i < nc; i++) {
				double temp_a = A[r][i];
				A[r][i] = A[nr - 1][i];
				A[nr - 1][i] = temp_a;
			}

			display("Swapping row " + to_String(nr) + " with row " + to_String(r + 1) + ", which is a zero row", Memo2);
			display("", Memo2);
			show(matrix, Memo2);
			display("", Memo2);

			nr--;
			goto check_again_2;
		}
	}

	display("", Memo2);
	display("The matrix in Row Echelon Form:", Memo2);
	display("", Memo2);
	show(matrix, Memo2);
	display("", Memo2);
	display("", Memo2);
}

void __fastcall TForm1::Button1Click(TObject *Sender)
{
	vector<vector<double>> matrix = input(Memo1);
	show(matrix, Memo1);
	ref(matrix, Memo2);
}
