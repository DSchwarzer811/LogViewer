object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'LogViewer 1.0'
  ClientHeight = 741
  ClientWidth = 1484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    AlignWithMargins = True
    Left = 15
    Top = 221
    Width = 1454
    Height = 505
    Margins.Left = 15
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alClient
    TabOrder = 0
    ExplicitTop = 224
    ExplicitWidth = 889
    ExplicitHeight = 346
  end
  object pnl_top: TPanel
    Left = 0
    Top = 0
    Width = 1484
    Height = 218
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 919
    object Label1: TLabel
      Left = 32
      Top = 32
      Width = 164
      Height = 13
      Caption = 'Pfad und Dateiname der Logdatei:'
    end
    object Label2: TLabel
      Left = 32
      Top = 103
      Width = 164
      Height = 13
      Caption = 'Pfad und Dateiname der Logdatei:'
    end
    object Label3: TLabel
      Left = 944
      Top = 34
      Width = 108
      Height = 13
      Caption = 'Fehlerhafte Zeilen :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 1192
      Top = 32
      Width = 54
      Height = 13
      Caption = 'Legende :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 1192
      Top = 54
      Width = 76
      Height = 13
      Caption = '1 = Entwicklung'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 1192
      Top = 77
      Width = 44
      Height = 13
      Caption = '2 = Basis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1192
      Top = 100
      Width = 52
      Height = 13
      Caption = '3 = Expert'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 1192
      Top = 124
      Width = 80
      Height = 13
      Caption = '4 = Kommentare'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 1192
      Top = 146
      Width = 50
      Height = 13
      Caption = '5 = Fehler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object txt_pfad: TEdit
      Left = 32
      Top = 51
      Width = 697
      Height = 21
      TabOrder = 0
      Text = 'D:\up_gmbh\Logstar_Manager_Test_A\Logstar_automatik.log'
    end
    object btn_pfad: TButton
      Left = 735
      Top = 49
      Width = 33
      Height = 25
      Caption = '...'
      TabOrder = 1
      OnClick = btn_pfadClick
    end
    object btn_alle: TButton
      Left = 693
      Top = 123
      Width = 75
      Height = 25
      Caption = 'Alle'
      TabOrder = 2
      OnClick = btn_alleClick
    end
    object cb_dev: TCheckBox
      Left = 32
      Top = 123
      Width = 129
      Height = 25
      Caption = 'Entwicklung'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 3
      OnClick = cb_devClick
    end
    object cb_basis: TCheckBox
      Left = 184
      Top = 123
      Width = 81
      Height = 25
      Caption = 'Basis'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 4
      OnClick = cb_devClick
    end
    object cb_expert: TCheckBox
      Left = 285
      Top = 123
      Width = 92
      Height = 25
      Caption = 'Expert'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 5
      OnClick = cb_devClick
    end
    object cb_kommentare: TCheckBox
      Left = 402
      Top = 123
      Width = 129
      Height = 25
      Caption = 'Kommentare'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 6
      OnClick = cb_devClick
    end
    object cb_fehler: TCheckBox
      Left = 554
      Top = 123
      Width = 129
      Height = 25
      Caption = 'Fehler'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 7
      OnClick = cb_devClick
    end
    object btn_go: TButton
      Left = 774
      Top = 49
      Width = 33
      Height = 25
      Caption = 'Go'
      TabOrder = 8
      OnClick = btn_goClick
    end
    object rb_fehlerzeile_anzeigen: TRadioButton
      Left = 944
      Top = 53
      Width = 113
      Height = 17
      Caption = 'Anzeigen'
      TabOrder = 9
      OnClick = rb_fehlerzeile_ausblendenClick
    end
    object rb_fehlerzeile_ersetzen: TRadioButton
      Left = 944
      Top = 76
      Width = 113
      Height = 17
      Caption = 'Ersetzen'
      Checked = True
      TabOrder = 10
      TabStop = True
      OnClick = rb_fehlerzeile_ausblendenClick
    end
    object rb_fehlerzeile_ausblenden: TRadioButton
      Left = 944
      Top = 99
      Width = 113
      Height = 17
      Caption = 'Ausblenden'
      TabOrder = 11
      OnClick = rb_fehlerzeile_ausblendenClick
    end
  end
  object MainMenu: TMainMenu
    Left = 848
    Top = 24
    object mm_Datei: TMenuItem
      Caption = 'Datei'
      object mm_beenden: TMenuItem
        Caption = 'Beenden'
        OnClick = mm_beendenClick
      end
    end
    object mm_export: TMenuItem
      Caption = '  Export'
      OnClick = mm_exportClick
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'log'
    Filter = 'Log-Dateien|*.log'
    Left = 848
    Top = 88
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'log'
    FileName = 'Logname'
    Filter = 'Log-Dateien|*.log'
    Left = 848
    Top = 160
  end
end
