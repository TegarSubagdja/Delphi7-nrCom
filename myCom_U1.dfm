object Form1: TForm1
  Left = 374
  Top = 81
  Width = 531
  Height = 335
  Caption = '152021169 Com Terminal'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl: TPanel
    Left = 0
    Top = 0
    Width = 515
    Height = 89
    Align = alTop
    Color = clBlack
    TabOrder = 0
    object Label1: TLabel
      Left = 128
      Top = 56
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 112
      Top = 48
      Width = 108
      Height = 23
      Caption = 'Arduino LED'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object aktif_ckBox: TCheckBox
      Left = 8
      Top = 14
      Width = 49
      Height = 17
      Caption = 'On'
      Color = clBackground
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = aktif_ckBoxClick
    end
    object PutarKanan: TButton
      Left = 272
      Top = 48
      Width = 75
      Height = 25
      Caption = 'PutarKanan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = PutarKananClick
    end
    object PutarKiri: TButton
      Left = 352
      Top = 48
      Width = 75
      Height = 25
      Caption = 'PutarKiri'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = PutarKiriClick
    end
    object ZigZag: TButton
      Left = 432
      Top = 48
      Width = 75
      Height = 25
      Caption = 'ZigZag'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = ZigZagClick
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 89
    Width = 515
    Height = 207
    Align = alClient
    Color = clBtnFace
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btn_cfg: TButton
    Left = 272
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Config'
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn_cfgClick
  end
  object btn_Save: TButton
    Left = 352
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Save'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_SaveClick
  end
  object btn_Clear: TButton
    Left = 432
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Clear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn_ClearClick
  end
  object nrDeviceBox1: TnrDeviceBox
    Left = 72
    Top = 11
    Width = 145
    Height = 21
    nrComm = nrComm1
    ResetOnChanged = False
    ItemHeight = 13
    TabOrder = 5
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Text File|*.txt|All File|*.*'
    Left = 208
    Top = 112
  end
  object nrComm1: TnrComm
    Active = False
    BaudRate = 9600
    Parity = pNone
    StopBits = sbOne
    ByteSize = 8
    ComPortNo = 1
    ComPort = cpCOM1
    TraceStates = []
    EventChar = #0
    StreamProtocol = spHardware
    BufferInSize = 8192
    BufferOutSize = 8192
    TimeoutRead = 0
    TimeoutWrite = 0
    RS485Mode = False
    EnumPorts = epQuickAll
    UseMainThread = True
    Terminal = Memo1
    TerminalUsage = tuBoth
    TerminalEcho = False
    Left = 272
    Top = 112
  end
end
