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
using std::stod;
using std::endl;
using std::setw;
using std::stringstream;
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TMemo *Memo1;
	TMemo *Memo2;
	TButton *rowechelonButtonA;
	TButton *rankButtonA;
	TButton *determinantButtonA;
	TButton *additionButton;
	TButton *subtractionButton;
	TButton *multiplicationButton;
	TButton *inverseButtonA;
	TButton *multiplyButtonA;
	TEdit *constantselectionAEdit;
	TMemo *outputMemo;
	TLabel *matrixAlabel;
	TLabel *matrixBlabel;
	TButton *rowechelonButtonB;
	TButton *rankButtonB;
	TButton *inverseButtonB;
	TButton *determinantButtonB;
	TButton *multiplyButtonB;
	TEdit *constantselectionBEdit;
	TButton *cleanButtonA;
	TButton *powerButtonA;
	TEdit *powerselectionAEdit;
	TButton *reducedrowechelonButtonA;
	TButton *reducedrowechelonButtonB;
	TButton *powerButtonB;
	TEdit *powerselectionBEdit;
	TButton *cleanButtonB;
	TButton *swapmatricesButton;
	TComboBox *equationlistBox;
	TButton *equalsButton;
	void __fastcall inputButtonClick(TObject *Sender);
private:	// User declarations
protected:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);

	template<typename T>
	String to_String(const T&) const;

	void display(const String&, TMemo*) const;

	vector<vector<double>> input(TMemo*) const;

	void show(const vector<vector<double>>&, TMemo*) const;

	void ref(vector<vector<double>>&, TMemo*) const;
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
