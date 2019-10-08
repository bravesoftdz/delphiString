unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnTest: TButton;
    Memo1: TMemo;
    procedure btnTestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTestClick(Sender: TObject);
var
  SStr: ShortString;
  AStr: AnsiString;
  UStr: UnicodeString;
  WStr: WideString;
  Str: string;
begin
  SStr := '123�����';
  AStr := '123�����';
  UStr := '123�����';
  WStr := '123�����';
  Str  := '123�����';

  Memo1.Clear;
  Memo1.Lines.Add(IntToStr(Length(SStr)));      { ��� 9  }
  Memo1.Lines.Add(IntToStr(Length(AStr)));      { ��� 9  }
  Memo1.Lines.Add(IntToStr(Length(UStr)));      { ��� 6  }
  Memo1.Lines.Add(IntToStr(Length(WStr)));      { ��� 6  }
  Memo1.Lines.Add(IntToStr(Length(Str)));       { ��� 6  }

  Memo1.Lines.Add(IntToStr(ByteLength(SStr)));  { ��� 12 }
  Memo1.Lines.Add(IntToStr(ByteLength(AStr)));  { ��� 12 }
  Memo1.Lines.Add(IntToStr(ByteLength(UStr)));  { ��� 12 }
  Memo1.Lines.Add(IntToStr(ByteLength(WStr)));  { ��� 12 }
  Memo1.Lines.Add(IntToStr(ByteLength(Str)));   { ��� 12 }

end;

end.
