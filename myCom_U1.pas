unit myCom_U1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, nrcommbox, nrclasses, nrcomm;

type
  TForm1 = class(TForm)
    pnl: TPanel;
    Memo1: TMemo;
    aktif_ckBox: TCheckBox;
    btn_cfg: TButton;
    btn_Save: TButton;
    btn_Clear: TButton;
    SaveDialog1: TSaveDialog;
    nrComm1: TnrComm;
    nrDeviceBox1: TnrDeviceBox;
    PutarKanan: TButton;
    Label1: TLabel;
    Label2: TLabel;
    PutarKiri: TButton;
    ZigZag: TButton;
    procedure aktif_ckBoxClick(Sender: TObject);
    procedure btn_cfgClick(Sender: TObject);
    procedure btn_ClearClick(Sender: TObject);
    procedure btn_SaveClick(Sender:TObject);
    procedure PutarKananClick(Sender: TObject);
    procedure PutarKiriClick(Sender: TObject);
    procedure ZigZagClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.aktif_ckBoxClick(Sender: TObject);
begin
nrComm1.Active:=aktif_ckBox.Checked;
btn_Save.Enabled:=not nrComm1.Active;
btn_Clear.Enabled:=not nrComm1.Active;
btn_cfg.Enabled:=not nrComm1.Active;
end;

procedure TForm1.btn_cfgClick(Sender: TObject);
begin
nrComm1.ConfigDialog;
end;

procedure TForm1.btn_SaveClick(Sender: TObject);
var
  f: TextFile;
  i: Integer;
begin
  if SaveDialog1.Execute then
  begin
    AssignFile(f, SaveDialog1.FileName);
    try
      Rewrite(f);
      for i := 0 to Memo1.Lines.Count - 1 do
      begin
        Writeln(f, Memo1.Lines[i]);
      end;
    finally
      CloseFile(f);
    end;
  end;
end;


procedure TForm1.btn_ClearClick(Sender: TObject);
var
  s : string;
begin
  s := 'Clear data?';
  if Application.MessageBox(PChar(s),'KONFIRMASI',
  MB_OKCANCEL + MB_ICONQUESTION + MB_DEFBUTTON2)= IDOK then
    begin
      Memo1.Lines.Clear;
    end;
end;

procedure TForm1.PutarKananClick(Sender: TObject);
begin
  nrComm1.SendString('putarKanan');
end;

procedure TForm1.PutarKiriClick(Sender: TObject);
begin
  nrComm1.SendString('putarKiri');
end;

procedure TForm1.ZigZagClick(Sender: TObject);
begin
  nrComm1.SendString('ZigZag');
end;

end.
