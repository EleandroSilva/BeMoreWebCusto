object frmModelo: TfrmModelo
  Left = 0
  Top = 0
  BorderIcons = [biMaximize]
  ClientHeight = 539
  ClientWidth = 938
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 938
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = 5592405
    ParentBackground = False
    TabOrder = 0
    object lTextoEmpresa: TLabel
      Left = 0
      Top = 0
      Width = 818
      Height = 41
      Align = alClient
      Alignment = taCenter
      Caption = 'lTextForm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Berlin Sans FB'
      Font.Style = [fsItalic]
      ParentFont = False
      ExplicitWidth = 88
      ExplicitHeight = 23
    end
    object pOperator: TPanel
      Left = 818
      Top = 0
      Width = 120
      Height = 41
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object lOperator: TLabel
        Left = 0
        Top = 0
        Width = 120
        Height = 16
        Align = alTop
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 66
      end
      object edtOperator: TEdit
        Left = 0
        Top = 17
        Width = 120
        Height = 24
        Align = alBottom
        Color = 8224125
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pButtons: TPanel
    Left = 0
    Top = 488
    Width = 938
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = 5592405
    ParentBackground = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 720
      Top = 0
      Width = 218
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      Color = 5592405
      ParentBackground = False
      TabOrder = 0
      object lSite: TLabel
        Left = 0
        Top = 33
        Width = 218
        Height = 18
        Cursor = crHandPoint
        Align = alBottom
        Alignment = taCenter
        Caption = '...'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Bell MT'
        Font.Style = []
        ParentFont = False
        OnClick = lSiteClick
        ExplicitWidth = 12
      end
      object Navigator: TDBNavigator
        Left = 0
        Top = 0
        Width = 218
        Height = 33
        DataSource = DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Align = alClient
        TabOrder = 0
      end
    end
    object btnSearch: TBitBtn
      Left = 90
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = '&Pesquisar'
      TabOrder = 1
      OnClick = btnSearchClick
    end
    object btnCancel: TBitBtn
      Left = 180
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 2
      OnClick = btnCancelClick
    end
    object btnNew: TBitBtn
      Left = 0
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = '&Novo'
      TabOrder = 3
      OnClick = btnNewClick
    end
    object btnSalve: TBitBtn
      Left = 450
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = '&Salvar'
      Enabled = False
      TabOrder = 4
      OnClick = btnSalveClick
    end
    object btnUpdate: TBitBtn
      Left = 270
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 5
      OnClick = btnUpdateClick
    end
    object btnDelete: TBitBtn
      Left = 360
      Top = 0
      Width = 90
      Height = 51
      Align = alLeft
      Caption = 'Excluir'
      Enabled = False
      TabOrder = 6
      OnClick = btnDeleteClick
    end
    object bbClose: TBitBtn
      Left = 540
      Top = 0
      Width = 88
      Height = 51
      Align = alLeft
      Caption = '&X Sair'
      TabOrder = 7
      OnClick = bbCloseClick
    end
    object rgActive: TRadioGroup
      Left = 656
      Top = 0
      Width = 64
      Height = 51
      Align = alRight
      Caption = 'Ativo'
      ItemIndex = 1
      Items.Strings = (
        '0 - N'#227'o'
        '1 - Sim')
      TabOrder = 8
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 938
    Height = 447
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    object pgMain: TPageControl
      Left = 0
      Top = 0
      Width = 938
      Height = 447
      ActivePage = tsRegister
      Align = alClient
      MultiLine = True
      TabOrder = 0
      object tsRegister: TTabSheet
        Caption = 'Registro'
        object pGrid: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 419
          Align = alClient
          TabOrder = 0
          object pEdit: TPanel
            Left = 1
            Top = 1
            Width = 928
            Height = 65
            Align = alTop
            Color = 1543167
            ParentBackground = False
            TabOrder = 0
            object LId: TLabel
              Left = 20
              Top = 6
              Width = 51
              Height = 13
              Alignment = taRightJustify
              Caption = 'Id Modelo:'
            end
            object lDataLancamento: TLabel
              Left = 85
              Top = 6
              Width = 88
              Height = 13
              Caption = 'Data Lan'#231'amento:'
            end
            object lDescricao: TLabel
              Left = 198
              Top = 6
              Width = 50
              Height = 13
              Caption = 'Descri'#231#227'o:'
            end
            object edtId: TEdit
              Left = 16
              Top = 25
              Width = 55
              Height = 21
              Alignment = taRightJustify
              Color = 8224125
              ReadOnly = True
              TabOrder = 0
            end
            object edtDescription: TEdit
              Left = 198
              Top = 24
              Width = 547
              Height = 21
              TabOrder = 2
            end
            object MedtReleaseDate: TMaskEdit
              Left = 85
              Top = 24
              Width = 98
              Height = 21
              Alignment = taCenter
              EditMask = '99/99/9999;1;_'
              MaxLength = 10
              TabOrder = 1
              Text = '  /  /    '
            end
          end
          object Panel9: TPanel
            Left = 1
            Top = 66
            Width = 928
            Height = 352
            Align = alClient
            TabOrder = 1
          end
        end
      end
      object tsSearch: TTabSheet
        Caption = 'Pesquisa'
        ImageIndex = 1
        object pSearch: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 67
          Align = alTop
          BevelOuter = bvNone
          Color = clGray
          ParentBackground = False
          TabOrder = 0
          object rgChoice: TRadioGroup
            Left = 0
            Top = 0
            Width = 185
            Height = 67
            Align = alLeft
            Caption = 'Escolha'
            Color = 1543167
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Id'
              'Descri'#231#227'o'
              'Operador')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object gbBetweenDates: TGroupBox
            Left = 185
            Top = 0
            Width = 240
            Height = 67
            Align = alLeft
            Caption = 'Entre datas'
            Color = 1543167
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object lStart: TLabel
              Left = 6
              Top = 15
              Width = 42
              Height = 20
              Caption = 'Inicio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tempus Sans ITC'
              Font.Style = []
              ParentFont = False
            end
            object lEnd: TLabel
              Left = 122
              Top = 15
              Width = 31
              Height = 20
              Caption = 'FIm:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Tempus Sans ITC'
              Font.Style = []
              ParentFont = False
            end
            object StartDate: TDateTimePicker
              Left = 6
              Top = 34
              Width = 110
              Height = 21
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object EndDate: TDateTimePicker
              Left = 122
              Top = 34
              Width = 110
              Height = 21
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
          end
          object Panel6: TPanel
            Left = 425
            Top = 0
            Width = 505
            Height = 67
            Align = alClient
            Color = 1543167
            ParentBackground = False
            TabOrder = 2
            object lDigiteConformeEscolha: TLabel
              Left = 1
              Top = 27
              Width = 503
              Height = 18
              Align = alBottom
              Caption = 'Digite conforme escolha:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -16
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 158
            end
            object edtSearch: TEdit
              Left = 1
              Top = 45
              Width = 503
              Height = 21
              Align = alBottom
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
            object btnPrint: TBitBtn
              Left = 1
              Top = 1
              Width = 120
              Height = 26
              Align = alLeft
              Caption = 'Imprimir'
              TabOrder = 1
            end
          end
        end
        object dbgSearch: TDBGrid
          Left = 0
          Top = 67
          Width = 930
          Height = 352
          Align = alClient
          BorderStyle = bsNone
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgSearchDrawColumnCell
        end
      end
    end
  end
  object DataSource1: TDataSource
    Left = 720
    Top = 248
  end
  object ImageList1: TImageList
    Left = 352
    Top = 224
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B5000000B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF000000000000000000000000000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000B5000000B500000000000000000000000000000000000000
      0000000000000000000000000000F7FFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000DEEF
      EF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEFEF00DEEF
      EF00DEEFEF00FFFFFF000000000000000000000000000000B5000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00000000B5000000B50000000000000000000000000000000000000000000000
      00000000000000000000108C290018732100C6CEC60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF000000000000000000000000000000B5000000B5000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      B5000000B5000000000000000000000000000000000000000000000000000000
      000000000000318C4A0000940000008400005AA56B0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF00000000000000000000000000000000000000D6000000
      BD000000B5000000B500000000000000000000000000000000000000B5000000
      B500000000000000000000000000000000000000000000000000000000000000
      00008CB59C001084310000840000008C0000008C210000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000B5000000B5000000B500000000000000B5000000B5000000B5000000
      0000000000000000000000000000000000000000000000000000000000008CB5
      9C0010843100008400000000000042AD5A000073000073AD8400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000B5000000C6000000C6000000CE000000B500000000000000
      0000000000000000000000000000000000000000000000000000000000002163
      310010732900000000000000000000000000218C290029733900000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000C6000000C6000000DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000008C000042A552000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000B5000000D6000000CE000000DE000000EF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000108C2900187B31008CCE
      9C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      00000000E7000000DE000000D60000000000000000000000E7000000EF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000108C2900187B
      31008CCE9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF0000000000000000000000000000000000000000000000
      FF000000DE000000EF00000000000000000000000000000000000000FF000000
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000108C
      2900187B31008CCE9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEEFEF00FFFFFF00000000000000000000000000000000000000F7000000
      F7000000FF000000000000000000000000000000000000000000000000000000
      F7000000F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000108C2900187B31008CCE9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEEFEF00FFFFFF000000000000000000000000000000F7000000F7000000
      F700000000000000000000000000000000000000000000000000000000000000
      0000000000000000F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000106B290018842900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009CADAD009CADAD009CAD
      AD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CADAD009CAD
      AD009CADAD000000000000000000000000000000F7000000F7000000F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000088C2100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000F7000000F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000087B21000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFCFFFF0000
      C0039FF9FEFF000080038FF3FC7F0000800387E7F87F00008003C3CFF07F0000
      8003F11FE23F00008003F83FE73F00008003FC7FFF9F00008003F83FFF8F0000
      8003F19FFFC700008003E3CFFFE300008003C7E7FFF1000080038FFBFFF90000
      80071FFFFFFD0000FFFF3FFFFFFE000000000000000000000000000000000000
      000000000000}
  end
end
