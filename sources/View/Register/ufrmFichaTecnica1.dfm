inherited frmFichaTecnica: TfrmFichaTecnica
  Caption = 'Ficha T'#233'cnica'
  ClientWidth = 1049
  ExplicitWidth = 1065
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited lTextoEmpresa: TLabel
      Width = 929
      Height = 41
    end
    inherited pOperator: TPanel
      Left = 929
      ExplicitLeft = 929
      inherited lOperator: TLabel
        Width = 120
      end
    end
  end
  inherited pButtons: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited Panel4: TPanel
      Left = 872
      Width = 177
      ExplicitLeft = 872
      ExplicitWidth = 177
      inherited lSite: TLabel
        Width = 177
      end
      inherited Navigator: TDBNavigator
        Width = 177
        Align = alTop
        Hints.Strings = ()
        OnClick = NavigatorClick
        ExplicitWidth = 177
      end
    end
    inherited btnCancel: TBitBtn
      OnClick = btnCancelClick
    end
    inherited btnSalve: TBitBtn
      OnClick = btnSalveClick
    end
    inherited btnUpdate: TBitBtn
      OnClick = btnUpdateClick
    end
    inherited btnDelete: TBitBtn
      OnClick = btnDeleteClick
    end
    inherited rgActive: TRadioGroup
      Left = 808
      ExplicitLeft = 808
    end
    object Panel13: TPanel
      Left = 623
      Top = 0
      Width = 185
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 9
      object lAlteraFichaTecnicaItem: TLabel
        Left = 0
        Top = 0
        Width = 185
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Tecla F7 Altera Mat'#233'ria Prima'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExplicitLeft = 45
        ExplicitWidth = 140
      end
      object LInsert: TLabel
        Left = 0
        Top = 13
        Width = 185
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Tecla Insert Nova Mat'#233'ria Prima'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExplicitLeft = 32
        ExplicitWidth = 153
      end
      object Label3: TLabel
        Left = 0
        Top = 26
        Width = 185
        Height = 13
        Align = alTop
        Alignment = taRightJustify
        Caption = 'Zero(0) no Id M.Prima Abilita Salvar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        ExplicitLeft = 15
        ExplicitWidth = 170
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1049
    ExplicitWidth = 1049
    inherited pgMain: TPageControl
      Width = 1049
      ExplicitWidth = 1049
      inherited tsRegister: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1041
        ExplicitHeight = 419
        inherited pGrid: TPanel
          Width = 1041
          BevelOuter = bvNone
          ExplicitWidth = 1041
          inherited pEdit: TPanel
            Left = 0
            Top = 0
            Width = 1041
            BevelOuter = bvNone
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 1041
            object Label2: TLabel [2]
              Left = 198
              Top = 6
              Width = 51
              Height = 13
              Caption = 'Id Modelo:'
            end
            object lModel: TLabel [3]
              Left = 255
              Top = 29
              Width = 12
              Height = 13
              Caption = '...'
            end
            object Label8: TLabel [4]
              Left = 595
              Top = 6
              Width = 112
              Height = 13
              Caption = 'Qtde Produ'#231#227'o Mensal:'
            end
            inherited lDescricao: TLabel
              Left = 255
              Width = 68
              Caption = 'Nome Modelo:'
              ExplicitLeft = 255
              ExplicitWidth = 68
            end
            inherited edtDescription: TEdit
              Width = 51
              Alignment = taRightJustify
              OnExit = edtDescriptionExit
              OnKeyDown = edtDescriptionKeyDown
              OnKeyPress = edtDescriptionKeyPress
              ExplicitWidth = 51
            end
            object edtQtdeProducao: TEdit
              Left = 595
              Top = 24
              Width = 112
              Height = 21
              Alignment = taRightJustify
              Color = 5898239
              TabOrder = 3
              OnExit = edtQtdeProducaoExit
              OnKeyPress = edtQtdeProducaoKeyPress
            end
          end
          inherited Panel9: TPanel
            Left = 0
            Top = 65
            Width = 1041
            Height = 354
            ExplicitLeft = 0
            ExplicitTop = 65
            ExplicitWidth = 1041
            ExplicitHeight = 354
            object pProduct: TPanel
              Left = 1
              Top = 1
              Width = 1039
              Height = 80
              Align = alTop
              BevelOuter = bvNone
              Color = 10768721
              ParentBackground = False
              TabOrder = 0
              object Label10: TLabel
                Left = 12
                Top = 6
                Width = 55
                Height = 13
                Caption = 'Id M.Prima:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lNomeMateriaPrima: TLabel
                Left = 70
                Top = 29
                Width = 12
                Height = 13
                Caption = '...'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 70
                Top = 6
                Width = 99
                Height = 13
                Caption = 'Nome Mat'#233'ria Prima:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object rgFiltroMateriaPrima: TRadioGroup
                Left = 640
                Top = 0
                Width = 123
                Height = 80
                Align = alRight
                Caption = 'Filtro Mat'#233'ria Prima'
                Color = 10768721
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Berlin Sans FB'
                Font.Style = []
                ItemIndex = 1
                Items.Strings = (
                  'Id'
                  'Descri'#231#227'o')
                ParentBackground = False
                ParentColor = False
                ParentFont = False
                TabOrder = 0
              end
              object Panel3: TPanel
                Left = 763
                Top = 0
                Width = 276
                Height = 80
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 1
                object Panel8: TPanel
                  Left = 0
                  Top = 0
                  Width = 276
                  Height = 80
                  Align = alClient
                  BevelOuter = bvNone
                  Color = 10768721
                  ParentBackground = False
                  TabOrder = 0
                  object Label9: TLabel
                    Left = 0
                    Top = 41
                    Width = 276
                    Height = 18
                    Align = alBottom
                    Caption = 'Digite conforme escolha:'
                    Color = 5483007
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -16
                    Font.Name = 'Berlin Sans FB'
                    Font.Style = []
                    ParentColor = False
                    ParentFont = False
                    ExplicitWidth = 158
                  end
                  object edtFiltroMateriaPrima: TEdit
                    Left = 0
                    Top = 59
                    Width = 276
                    Height = 21
                    Align = alBottom
                    TabOrder = 0
                    OnKeyPress = edtSearchKeyPress
                  end
                  object btnBuscarMateriaPrima: TBitBtn
                    Left = 0
                    Top = 0
                    Width = 113
                    Height = 41
                    Align = alLeft
                    Caption = 'Buscar Mat'#233'ria Prima'
                    TabOrder = 1
                    OnClick = btnBuscarMateriaPrimaClick
                  end
                  object dbnMateriaPrima: TDBNavigator
                    Left = 113
                    Top = 0
                    Width = 163
                    Height = 41
                    DataSource = dsPesquisaMateriaPrima
                    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                    Align = alClient
                    TabOrder = 2
                    OnClick = NavigatorClick
                  end
                end
              end
              object edtIdMateriaPrima: TEdit
                Left = 16
                Top = 25
                Width = 51
                Height = 21
                Alignment = taRightJustify
                TabOrder = 2
                OnExit = edtIdMateriaPrimaExit
                OnKeyDown = edtIdMateriaPrimaKeyDown
                OnKeyPress = edtIdMateriaPrimaKeyPress
              end
              object Panel5: TPanel
                Left = 281
                Top = 0
                Width = 359
                Height = 80
                Align = alRight
                BevelOuter = bvNone
                TabOrder = 3
                object Label18: TLabel
                  Left = 157
                  Top = 61
                  Width = 59
                  Height = 13
                  Caption = 'Valor Perda:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object lValorPerda: TLabel
                  Left = 232
                  Top = 61
                  Width = 12
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label20: TLabel
                  Left = 252
                  Top = 61
                  Width = 53
                  Height = 13
                  Caption = 'Valor Final:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object lValorFinal: TLabel
                  Left = 346
                  Top = 61
                  Width = 12
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label17: TLabel
                  Left = 58
                  Top = 61
                  Width = 49
                  Height = 13
                  Caption = 'Sub Total:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object lSubTotal: TLabel
                  Left = 141
                  Top = 61
                  Width = 12
                  Height = 13
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 3
                  Top = 61
                  Width = 52
                  Height = 13
                  Alignment = taRightJustify
                  Caption = 'Resultado:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 359
                  Height = 45
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
                  object lUnidade: TLabel
                    Left = 107
                    Top = 22
                    Width = 12
                    Height = 13
                    Alignment = taRightJustify
                    Caption = '...'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWhite
                    Font.Height = -11
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentFont = False
                  end
                  object edtValorUnitario: TEdit
                    Left = 134
                    Top = 19
                    Width = 97
                    Height = 26
                    Align = alRight
                    Alignment = taRightJustify
                    TabOrder = 0
                    OnExit = edtValorUnitarioExit
                    OnKeyPress = edtValorUnitarioKeyPress
                    ExplicitHeight = 21
                  end
                  object edtPerda: TEdit
                    Left = 305
                    Top = 19
                    Width = 54
                    Height = 26
                    Align = alRight
                    Alignment = taRightJustify
                    TabOrder = 2
                    OnExit = edtPerdaExit
                    OnKeyPress = edtPerdaKeyPress
                    ExplicitHeight = 21
                  end
                  object edtQtde: TEdit
                    Left = 231
                    Top = 19
                    Width = 74
                    Height = 26
                    Align = alRight
                    Alignment = taRightJustify
                    TabOrder = 1
                    OnExit = edtQtdeExit
                    OnKeyPress = edtQtdeKeyPress
                    ExplicitHeight = 21
                  end
                  object Panel10: TPanel
                    Left = 0
                    Top = 0
                    Width = 359
                    Height = 19
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 3
                    object Label14: TLabel
                      Left = 311
                      Top = 3
                      Width = 46
                      Height = 13
                      Alignment = taRightJustify
                      Caption = '% Perda:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label13: TLabel
                      Left = 274
                      Top = 3
                      Width = 28
                      Height = 13
                      Alignment = taRightJustify
                      Caption = 'Qtde:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label16: TLabel
                      Left = 160
                      Top = 3
                      Width = 68
                      Height = 13
                      Alignment = taRightJustify
                      Caption = 'Valor Unit'#225'rio:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label19: TLabel
                      Left = 77
                      Top = 3
                      Width = 43
                      Height = 13
                      Alignment = taRightJustify
                      Caption = 'Unidade:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWhite
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                    end
                  end
                end
              end
              object btnConfirmaMateriaPrima: TBitBtn
                Left = 0
                Top = 52
                Width = 122
                Height = 25
                Caption = 'Confirma Mat'#233'ria Prima'
                TabOrder = 4
                OnClick = btnConfirmaMateriaPrimaClick
              end
              object btnCancelaMateriaPrima: TBitBtn
                Left = 121
                Top = 52
                Width = 122
                Height = 25
                Caption = 'Cancela Materia Prima'
                TabOrder = 5
              end
              object BitBtn1: TBitBtn
                Left = 208
                Top = 8
                Width = 75
                Height = 25
                Caption = 'BitBtn1'
                TabOrder = 6
                TabStop = False
                Visible = False
                OnClick = BitBtn1Click
              end
            end
            object pPesquisaMateriaPrima: TPanel
              Left = 642
              Top = 81
              Width = 398
              Height = 272
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
              object dbgPesquisaMateriaPrima: TDBGrid
                Left = 0
                Top = 0
                Width = 398
                Height = 272
                Align = alClient
                DataSource = dsPesquisaMateriaPrima
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnCellClick = dbgPesquisaMateriaPrimaCellClick
                OnColEnter = dbgPesquisaMateriaPrimaColEnter
                OnDrawColumnCell = dbgPesquisaMateriaPrimaDrawColumnCell
                Columns = <
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'Id'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id MP:'
                    Width = 43
                    Visible = True
                  end
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'Status'
                    Title.Alignment = taCenter
                    Title.Caption = 'Enviar:'
                    Width = 42
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Descricao'
                    Title.Caption = 'Nome Mat'#233'ria Prima:'
                    Width = 285
                    Visible = True
                  end>
              end
            end
            object pFichaTecnicaItem: TPanel
              Left = 1
              Top = 81
              Width = 641
              Height = 272
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object dbgFichaTecnicaItem: TDBGrid
                Left = 0
                Top = 81
                Width = 641
                Height = 191
                Align = alClient
                DataSource = dsFichaTecnicaItem
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnCellClick = dbgFichaTecnicaItemCellClick
                OnDrawColumnCell = dbgFichaTecnicaItemDrawColumnCell
                OnKeyUp = dbgFichaTecnicaItemKeyUp
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'IDFICHATECNICA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id:'
                    Width = 24
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IDMATERIAPRIMA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id MP:'
                    Width = 46
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Nome Mat'#233'ria Prima:'
                    Width = 218
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDE'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Qtde:'
                    Width = 61
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORUNITARIO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor Unit'#225'rio:'
                    Width = 95
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'PERDA'
                    Title.Alignment = taRightJustify
                    Title.Caption = '% Perda:'
                    Width = 75
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORPERDA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor Perda:'
                    Width = 88
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORFINAL'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor Final:'
                    Width = 77
                    Visible = True
                  end>
              end
              object StringGrid1: TStringGrid
                Left = 12
                Top = 200
                Width = 604
                Height = 41
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                ColCount = 9
                RowCount = 1
                FixedRows = 0
                TabOrder = 1
                Visible = False
              end
              object dbgFichaTecnica: TDBGrid
                Left = 0
                Top = 0
                Width = 641
                Height = 49
                Align = alTop
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 2
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Visible = False
                OnDrawColumnCell = dbgFichaTecnicaDrawColumnCell
                Columns = <
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'Id'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id:'
                    Width = 29
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ModeloNome'
                    Title.Caption = 'Nome Modelo:'
                    Width = 197
                    Visible = True
                  end
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'QtdeProducao'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Qtde Produ'#231#227'o:'
                    Width = 96
                    Visible = True
                  end
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'ValorFichaTecnica'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor Ficha T'#233'cnica:'
                    Width = 107
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DataLancamento'
                    Title.Caption = 'Data Lan'#231'amento:'
                    Width = 101
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Operador'
                    Title.Caption = 'Operador:'
                    Width = 78
                    Visible = True
                  end>
              end
              object Panel11: TPanel
                Left = 0
                Top = 49
                Width = 641
                Height = 32
                Align = alTop
                TabOrder = 3
                object btnAlterarMateriaPrima: TBitBtn
                  Left = 1
                  Top = 1
                  Width = 114
                  Height = 30
                  Align = alLeft
                  Caption = 'Alterar Mat'#233'ria Prima'
                  TabOrder = 0
                end
                object btnExcluirMateriaPrima: TBitBtn
                  Left = 115
                  Top = 1
                  Width = 114
                  Height = 30
                  Align = alLeft
                  Caption = 'Excluir Mat'#233'ria Prima'
                  TabOrder = 1
                  OnClick = btnExcluirMateriaPrimaClick
                end
                object dbnFichaTecnicaItem: TDBNavigator
                  Left = 422
                  Top = 1
                  Width = 218
                  Height = 30
                  DataSource = dsFichaTecnicaItem
                  VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                  Align = alRight
                  TabOrder = 2
                  OnClick = NavigatorClick
                end
                object btnInsereNovoItem: TBitBtn
                  Left = 229
                  Top = 1
                  Width = 114
                  Height = 30
                  Align = alLeft
                  Caption = 'Nova Mat'#233'ria Prima'
                  TabOrder = 3
                  OnClick = btnInsereNovoItemClick
                end
              end
            end
          end
        end
      end
      inherited tsSearch: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 1041
        ExplicitHeight = 419
        inherited pSearch: TPanel
          Width = 1041
          ExplicitWidth = 1041
          inherited rgChoice: TRadioGroup
            Width = 233
            Columns = 2
            Items.Strings = (
              'Id Registro'
              'Id Modelo'
              'Nome Modelo'
              'Operador')
            ExplicitWidth = 233
          end
          inherited gbBetweenDates: TGroupBox
            Left = 233
            ExplicitLeft = 233
          end
          inherited Panel6: TPanel
            Left = 473
            Width = 568
            ExplicitLeft = 473
            ExplicitWidth = 568
            inherited lDigiteConformeEscolha: TLabel
              Width = 566
            end
            object Label1: TLabel [1]
              Left = 0
              Top = 0
              Width = 3
              Height = 13
            end
            inherited edtSearch: TEdit
              Width = 566
              ExplicitWidth = 566
            end
          end
        end
        inherited dbgSearch: TDBGrid
          Width = 1041
          Height = 49
          Align = alTop
          ReadOnly = False
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taRightJustify
              Title.Caption = 'ID:'
              Width = 29
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ModeloNome'
              Title.Caption = 'Nome Modelo:'
              Width = 197
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'QtdeProducao'
              Title.Alignment = taRightJustify
              Title.Caption = 'Qtde Produ'#231#227'o:'
              Width = 96
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'ValorFichaTecnica'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Ficha T'#233'cnica:'
              Width = 107
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataLancamento'
              Title.Caption = 'Data Lan'#231'amento:'
              Width = 101
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Operador'
              Title.Caption = 'Operador:'
              Width = 78
              Visible = True
            end>
        end
        object dbgRegistroFichaTecnicaItem: TDBGrid
          Left = 0
          Top = 148
          Width = 1041
          Height = 271
          Align = alClient
          DataSource = dsFichaTecnicaItem
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgFichaTecnicaItemDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'IDFICHATECNICA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Id:'
              Width = 24
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'IDMATERIAPRIMA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Id MP:'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Nome Mat'#233'ria Prima:'
              Width = 218
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTDE'
              Title.Alignment = taRightJustify
              Title.Caption = 'Qtde:'
              Width = 61
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORUNITARIO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Unit'#225'rio:'
              Width = 95
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERDA'
              Title.Alignment = taRightJustify
              Title.Caption = '% Perda:'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORPERDA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Perda:'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORFINAL'
              Title.Alignment = taRightJustify
              Title.Caption = 'Valor Final:'
              Width = 77
              Visible = True
            end>
        end
        object Panel12: TPanel
          Left = 0
          Top = 116
          Width = 1041
          Height = 32
          Align = alTop
          TabOrder = 3
          object btnAlterarRegistroFichaTecnicaItem: TBitBtn
            Left = 1
            Top = 1
            Width = 114
            Height = 30
            Align = alLeft
            Caption = 'Alterar Mat'#233'ria Prima'
            TabOrder = 0
          end
          object btnExcluirRegistroFichaTecnicaItem: TBitBtn
            Left = 115
            Top = 1
            Width = 114
            Height = 30
            Align = alLeft
            Caption = 'Excluir Mat'#233'ria Prima'
            TabOrder = 1
            OnClick = btnExcluirRegistroFichaTecnicaItemClick
          end
          object dbnRegistroFichaTecnicaItem: TDBNavigator
            Left = 229
            Top = 1
            Width = 218
            Height = 30
            DataSource = dsFichaTecnicaItem
            VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
            Align = alLeft
            TabOrder = 2
            OnClick = NavigatorClick
          end
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 520
    Top = 352
  end
  object dsPesquisaMateriaPrima: TDataSource [4]
    Left = 808
    Top = 288
  end
  object dsAuxiliar: TDataSource [5]
    Left = 368
    Top = 400
  end
  object dsFichaTecnicaItem: TDataSource [6]
    DataSet = dmPrincipal.cdsFichaTecnicaItem
    Left = 808
    Top = 344
  end
  inherited ImageList1: TImageList
    Left = 680
    Top = 320
  end
end
