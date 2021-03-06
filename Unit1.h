//---------------------------------------------------------------------------
#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.ExtCtrls.hpp>
//---------------------------------------------------------------------------
#include <vector>
#include <string>
#include <sstream>
#include <iomanip>
#include <ustring.h>
using std::vector;
using std::string;
using std::setw;
using std::stringstream;
using std::to_string;
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TButton *additionButton;
	TButton *subtractionButton;
	TButton *multiplicationButton;
	TButton *swapmatricesButton;
	TGroupBox *matrixA;
	TButton *cleanButtonA;
	TMemo *memoInputMatrixA;
	TButton *rowEchelonButtonA;
	TButton *reducedRowEchelonButtonA;
	TButton *determinantButtonA;
	TButton *rankButtonA;
	TButton *inverseButtonA;
	TButton *multiplyButtonA;
	TEdit *constantSelectionAEdit;
	TButton *powerButtonA;
	TEdit *powerSelectionAEdit;
	TButton *transposeButtonA;
	TGroupBox *matrixB;
	TButton *cleanButtonB;
	TMemo *memoInputMatrixB;
	TButton *rowEchelonButtonB;
	TButton *reducedRowEchelonButtonB;
	TButton *determinantButtonB;
	TButton *rankButtonB;
	TButton *inverseButtonB;
	TButton *multiplyButtonB;
	TEdit *constantSelectionBEdit;
	TButton *powerButtonB;
	TEdit *powerSelectionBEdit;
	TButton *transposeButtonB;
	TGroupBox *output;
	TMemo *memoOutputMatrix;
	TButton *insertIntoA;
	TButton *insertIntoB;
	void __fastcall cleanButtonAClick(TObject *Sender);
	void __fastcall rowEchelonButtonAClick(TObject *Sender);
	void __fastcall reducedRowEchelonButtonAClick(TObject *Sender);
	void __fastcall rankButtonAClick(TObject *Sender);
	void __fastcall determinantButtonAClick(TObject *Sender);
	void __fastcall inverseButtonAClick(TObject *Sender);
	void __fastcall cleanButtonBClick(TObject *Sender);
	void __fastcall rowEchelonButtonBClick(TObject *Sender);
	void __fastcall reducedRowEchelonButtonBClick(TObject *Sender);
	void __fastcall rankButtonBClick(TObject *Sender);
	void __fastcall determinantButtonBClick(TObject *Sender);
	void __fastcall inverseButtonBClick(TObject *Sender);
	void __fastcall transposeButtonAClick(TObject *Sender);
	void __fastcall multiplyButtonAClick(TObject *Sender);
	void __fastcall powerButtonAClick(TObject *Sender);
	void __fastcall transposeButtonBClick(TObject *Sender);
	void __fastcall multiplyButtonBClick(TObject *Sender);
	void __fastcall powerButtonBClick(TObject *Sender);
	void __fastcall swapmatricesButtonClick(TObject *Sender);
	void __fastcall additionButtonClick(TObject *Sender);
	void __fastcall subtractionButtonClick(TObject *Sender);
	void __fastcall multiplicationButtonClick(TObject *Sender);
	void __fastcall insertIntoAClick(TObject *Sender);
	void __fastcall insertIntoBClick(TObject *Sender);
private:	// User declarations
protected:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);

	template<typename data_type1>
	const String to_unicodeString(const data_type1&) const;

	template<typename data_type2>
	const void print(const data_type2&, TMemo*) const;

	void endl();

	const string to_str(const String&) const;

	vector<vector<double>> inputMatrix(TMemo*) const;

	void outputMatrix(const vector<vector<double>>&, TMemo*) const;
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
