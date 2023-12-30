unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    Memo: TMemo;
    mm_Datei: TMenuItem;
    mm_beenden: TMenuItem;
    OpenDialog: TOpenDialog;
    mm_export: TMenuItem;
    pnl_top: TPanel;
    Label1: TLabel;
    txt_pfad: TEdit;
    btn_pfad: TButton;
    btn_alle: TButton;
    Label2: TLabel;
    cb_dev: TCheckBox;
    cb_basis: TCheckBox;
    cb_expert: TCheckBox;
    cb_kommentare: TCheckBox;
    cb_fehler: TCheckBox;
    btn_go: TButton;
    rb_fehlerzeile_anzeigen: TRadioButton;
    Label3: TLabel;
    rb_fehlerzeile_ersetzen: TRadioButton;
    rb_fehlerzeile_ausblenden: TRadioButton;
    SaveDialog: TSaveDialog;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure mm_beendenClick(Sender: TObject);
    procedure btn_alleClick(Sender: TObject);
    procedure btn_pfadClick(Sender: TObject);
    procedure mm_exportClick(Sender: TObject);
    procedure btn_goClick(Sender: TObject);
    procedure cb_devClick(Sender: TObject);
    procedure rb_fehlerzeile_ausblendenClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private-Deklarationen }
  public
    Procedure Starte_Auswertung();
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
//..............................................................................
procedure TForm1.Starte_Auswertung();
var
  sl  : TStringlist;
  tmp : String;
  i   : Integer;
  x   : integer;
begin
  sl        := NIL;
  memo.Text := '';

  if txt_pfad.Text <> '' then
  begin
    if fileexists(txt_pfad.Text) then
    begin
      try
        sl := TSTringList.Create;
        sl.LoadFromFile(txt_pfad.Text);

        for i := 0 to sl.Count-1 do
        begin
          try
            tmp := copy(sl[i],27,1);
            x   := strtoint(tmp);
            //showmessage(tmp);

            case x of
              1: if cb_dev.Checked then Memo.Lines.Add(sl[i]);
              2: if cb_basis.Checked then Memo.Lines.Add(sl[i]);
              3: if cb_expert.Checked then Memo.Lines.Add(sl[i]);
              4: if cb_kommentare.Checked then Memo.Lines.Add(sl[i]);
              5: if cb_fehler.Checked then Memo.Lines.Add(sl[i]);

             else begin
               if rb_fehlerzeile_anzeigen.Checked then Memo.Lines.Add(sl[i])
               else if rb_fehlerzeile_ersetzen.Checked then Memo.Lines.Add('Fehlerhafte Zeile erkannt...');


             end;

            end;
          except
               if rb_fehlerzeile_anzeigen.Checked then Memo.Lines.Add(sl[i])
               else if rb_fehlerzeile_ersetzen.Checked then Memo.Lines.Add('Fehlerhafte Zeile erkannt...');

          end;

        end;

        //Memo.Text := sl.Text;
      finally
        if sl <> NIL then sl.Free;
      end;

    end;
  end;
end;
//..............................................................................
procedure TForm1.btn_alleClick(Sender: TObject);
begin
  cb_dev.Checked        := true;
  cb_basis.Checked      := true;
  cb_expert.Checked     := true;
  cb_kommentare.Checked := true;
  cb_fehler.Checked     := true;
end;
//..............................................................................
procedure TForm1.btn_goClick(Sender: TObject);
begin
  Starte_Auswertung();
end;
//..............................................................................
procedure TForm1.btn_pfadClick(Sender: TObject);
begin
  if ((opendialog.Execute) and (opendialog.FileName <> '')) then
  begin
    txt_pfad.Text := opendialog.FileName;
    Starte_Auswertung();
  end;
end;
//..............................................................................
procedure TForm1.cb_devClick(Sender: TObject);
begin
  Starte_Auswertung();
end;
//..............................................................................
procedure TForm1.FormCreate(Sender: TObject);
var
  tmp : String;
begin
  tmp := ParamStr (1);
  if tmp <> '' then
  begin
    txt_pfad.Text := tmp;
    Starte_Auswertung();
  end;
end;
//..............................................................................
//..............................................................................
procedure TForm1.mm_beendenClick(Sender: TObject);
begin
  close;
end;
//..............................................................................
procedure TForm1.mm_exportClick(Sender: TObject);
begin
  if ((savedialog.Execute) and (savedialog.FileName <> '')) then
  begin
    memo.Lines.SaveToFile(savedialog.FileName);
  end;
end;
//..............................................................................
procedure TForm1.rb_fehlerzeile_ausblendenClick(Sender: TObject);
begin
  Starte_Auswertung();
end;

//..............................................................................

end.
