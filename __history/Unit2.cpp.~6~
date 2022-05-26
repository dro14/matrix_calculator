//---------------------------------------------------------------------------

#pragma hdrstop

#include "Unit2.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------
#include "Unit2.h"

const void functions::REF(vector<vector<double>>& A)
{
	unsigned long long nr = A.size();
	unsigned long long nc = A[0].size();

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
			nr--;
			goto check_again_2;
		}
	}
}

const void functions::RREF(vector<vector<double>>& A)
{
	functions::REF(A);

	unsigned long long nr = A.size();
	unsigned long long nc = A[0].size();

//  Making leading variables equal to 1
	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if (A[i][j] != 0) {
				double g = A[i][j];
				for (int l = 0; l < nc; l++) {
					if (A[i][l] != 0) A[i][l] /= g;
					j++;
				}
			}
		}
	}

//  Make all rows above this one 0
	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if (A[i][j] == 1) {
				for (int k = i - 1; k > -1; k--) {
					double g = A[k][j];
					if (g != 0) {
						for (int l = 0; l < nc; l++) {
							A[k][l] -= g * A[i][l];
							if(abs(A[k][l]) < 1e-10) A[k][l] = 0;
						}
					}
				}
			}
			if (i + 1 < nr) i++;
			else if (i + 1 == nr) break;
		}
	}
}

const int functions::rank(vector<vector<double>>& A)
{
	functions::RREF(A);
	int num_of_rows = A.size();
	int num_of_columns = A[0].size();

    int rank = 0;

	for (int i = 0; i < num_of_rows; i++) {
		for (int j = 0; j < num_of_columns; j++) {
			if (A[i][j] == 1) {
                rank++;
				if (i + 1 < num_of_rows) i++;
			}
		}
	}

	return rank;
}

const double functions::determinant(vector<vector<double>>& A)
{
	unsigned long long nr = A.size();
	unsigned long long nc = A[0].size();
	double determinant = 1.0;

//  Make all rows below the current row 0 in current column
	int row = -1;
	for (int i = 0; i < nc; i++) {
		if (row + 1 < nr) row++;
		for (int k = row + 1; k < nr; k++) {
			double g = A[k][i] / A[row][i];
			if (g != 0 && A[row][i] != 0) {
				for (int j = 0; j < nc; j++) {
					A[k][j] -= g * A[row][j];
					if (abs(A[k][j]) < 1e-10 || A[k][j] == -0) A[k][j] = 0;
				}
			}
		}
	}

//  Computing the matrix's determinant
	for (int i = 0; i < nr; i++) {
		determinant *= A[i][i];
	}
	if(determinant == -0) determinant = 0;

	return determinant;
}

const vector<vector<double>> functions::inverse(vector<vector<double>>& A)
{
	unsigned long long nr = A.size();
	unsigned long long nc = A[0].size();
	vector<vector<double>> I = A;

	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if (i == j) I[i][j] = 1;
			else I[i][j] = 0;
		}
	}

//  Make all rows below this one 0 in current column
	int row = -1;
	for (int i = 0; i < nc; i++) {
		if (row + 1 < nr) row++;
		for (int k = row + 1; k < nr; k++) {
			double g = A[k][i] / A[row][i];
			if (g != 0 && A[row][i] != 0) {
				for (int j = 0; j < nc; j++) {
					A[k][j] -= g * A[row][j];
					I[k][j] -= g * I[row][j];
					if (abs(A[k][j]) < 1e-10) A[k][j] = 0;
					if (abs(I[k][j]) < 1e-10) I[k][j] = 0;
				}
			}
		}
	}

//  Making leading variables equal to 1
	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if (A[i][j] != 0) {
				double g = A[i][j];
				for (int l = 0; l < nc; l++) {
					if (A[i][l] != 0) A[i][l] /= g;
					if (I[i][l] != 0) I[i][l] /= g;
					j++;
				}
			}
		}
	}

//  Make all rows above this one 0
	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if (A[i][j] == 1) {
				for (int k = i - 1; k > -1; k--) {
					double g = A[k][j];
					if (g != 0) {
						for (int l = 0; l < nc; l++) {
							A[k][l] -= g * A[i][l];
							I[k][l] -= g * I[i][l];
							if(abs(A[k][l]) < 1e-10) A[k][l] = 0;
							if(abs(I[k][l]) < 1e-10) I[k][l] = 0;
						}
					}
				}
			}
			if (i + 1 < nr) i++;
			else if (i + 1 == nr) break;
		}
	}

	bool is_it_identity = true;
	for (int i = 0; i < nr; i++) {
		for (int j = 0; j < nc; j++) {
			if ((i == j && A[i][j] != 1) || (i != j && A[i][j] != 0)) {
				is_it_identity = false;
				break;
			}
		}
	}

	if (is_it_identity) {
		return I;
	} else {
		vector<vector<double>> matrix {
			{2.718281828459045}
		};
		return matrix;
	}
}





/*
void TForm1::REF(vector<vector<double>> matrix, TMemo* Memo) const
{
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
*/
