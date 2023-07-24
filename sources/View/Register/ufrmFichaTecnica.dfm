inherited frmFichaTecnica: TfrmFichaTecnica
  Caption = 'Ficha T'#233'cnica'
  ClientWidth = 1105
  OnDestroy = FormDestroy
  ExplicitWidth = 1121
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    Width = 1105
    ExplicitWidth = 1105
    inherited pSite: TPanel
      Left = 887
      ExplicitLeft = 887
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited rgActive: TRadioGroup
      Left = 823
      ExplicitLeft = 823
    end
    object Panel13: TPanel
      Left = 634
      Top = 0
      Width = 189
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 9
      object lAlteraFichaTecnicaItem: TLabel
        Left = 0
        Top = 0
        Width = 189
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
        ExplicitLeft = 49
        ExplicitWidth = 140
      end
      object LInsert: TLabel
        Left = 0
        Top = 13
        Width = 189
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
        ExplicitLeft = 36
        ExplicitWidth = 153
      end
      object Label3: TLabel
        Left = 0
        Top = 26
        Width = 189
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
        ExplicitLeft = 19
        ExplicitWidth = 170
      end
    end
  end
  inherited pCabecalho: TPanel
    Width = 1105
    ExplicitWidth = 1105
    inherited lTextoEmpresa: TLabel
      Width = 985
      Height = 41
    end
    inherited pOperator: TPanel
      Left = 985
      ExplicitLeft = 985
      inherited lOperator: TLabel
        Width = 120
      end
    end
  end
  inherited pgMain: TPageControl
    Width = 1105
    OnChange = pgMainChange
    ExplicitWidth = 1105
    inherited tsRegister: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1097
      ExplicitHeight = 491
      inherited pGrid: TPanel
        Width = 1097
        ExplicitWidth = 1097
        inherited pEdit: TPanel
          Width = 1095
          ExplicitWidth = 1095
          inherited pCabecalhoEdt: TPanel
            Width = 1095
            ExplicitWidth = 1095
            inherited LId: TLabel
              Left = 29
              Width = 42
              Caption = 'Id Ficha:'
              ExplicitLeft = 29
              ExplicitWidth = 42
            end
            inherited lDescricao: TLabel
              Width = 51
              Caption = 'Id Modelo:'
              ExplicitWidth = 51
            end
            object Label1: TLabel [3]
              Left = 255
              Top = 6
              Width = 68
              Height = 13
              Caption = 'Nome Modelo:'
            end
            object Label8: TLabel [4]
              Left = 479
              Top = 6
              Width = 112
              Height = 13
              BiDiMode = bdLeftToRight
              Caption = 'Qtde Produ'#231#227'o Mensal:'
              ParentBiDiMode = False
            end
            object lModel: TDBText [5]
              Left = 255
              Top = 28
              Width = 218
              Height = 17
              DataField = 'DESCRICAO'
              DataSource = DataSource1
            end
            object Label2: TLabel [6]
              Left = 605
              Top = 6
              Width = 59
              Height = 13
              Alignment = taRightJustify
              Caption = 'Valor Perda:'
            end
            object dbtValorPerda: TDBText [7]
              Left = 596
              Top = 28
              Width = 68
              Height = 17
              Alignment = taRightJustify
              DataField = 'VALORPERDA'
              DataSource = DataSource1
            end
            object Label4: TLabel [8]
              Left = 702
              Top = 6
              Width = 53
              Height = 13
              Alignment = taRightJustify
              Caption = 'Valor Final:'
            end
            object dbtValorFinal: TDBText [9]
              Left = 687
              Top = 28
              Width = 68
              Height = 17
              Alignment = taRightJustify
              DataField = 'VALORFINAL'
              DataSource = DataSource1
            end
            inherited editId: TDBEdit
              Color = clSilver
            end
            inherited MedtReleaseDate: TDBEdit
              DataField = 'DATALANCAMENTO'
              DataSource = DataSource1
            end
            inherited edtDescription: TDBEdit
              Width = 51
              DataField = 'IDMODELO'
              OnExit = edtDescricaoExit
              OnKeyDown = edtDescriptionKeyDown
              OnKeyPress = edtDescriptionKeyPress
              ExplicitWidth = 51
            end
            object edtQtdeProducao: TDBEdit
              Left = 477
              Top = 25
              Width = 112
              Height = 21
              BiDiMode = bdRightToLeft
              Color = 5898239
              DataField = 'QTDEPRODUCAO'
              DataSource = DataSource1
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 3
              OnExit = edtQtdeProducaoExit
              OnKeyPress = edtQtdeProducaoKeyPress
            end
          end
        end
        inherited pGridCadastro: TPanel
          Width = 1095
          ExplicitWidth = 1095
          object pProduct: TPanel
            Left = 0
            Top = 0
            Width = 1095
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
            object lNomeMateriaPrima: TDBText
              Left = 70
              Top = 28
              Width = 253
              Height = 17
              DataField = 'DESCRICAO'
              DataSource = dmPrincipal.dsFichaTecnicaItem
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Panel3: TPanel
              Left = 819
              Top = 0
              Width = 276
              Height = 80
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 1
            end
            object Panel5: TPanel
              Left = 460
              Top = 0
              Width = 359
              Height = 80
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object Label18: TLabel
                Left = 120
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
              object Label20: TLabel
                Left = 242
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
              object Label17: TLabel
                Left = 2
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
              object lSubTotal: TDBText
                Left = 54
                Top = 62
                Width = 57
                Height = 17
                Alignment = taRightJustify
                DataField = 'SUBTOTAL'
                DataSource = dmPrincipal.dsFichaTecnicaItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lValorPerda: TDBText
                Left = 186
                Top = 62
                Width = 50
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALORPERDA'
                DataSource = dmPrincipal.dsFichaTecnicaItem
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object lValorFinal: TDBText
                Left = 295
                Top = 62
                Width = 59
                Height = 17
                Alignment = taRightJustify
                DataField = 'VALORFINAL'
                DataSource = dmPrincipal.dsFichaTecnicaItem
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
                TabOrder = 1
                object lUnidade: TDBText
                  Left = 77
                  Top = 28
                  Width = 40
                  Height = 17
                  Alignment = taRightJustify
                  DataField = 'UN'
                  DataSource = dmPrincipal.dsFichaTecnicaItem
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Panel10: TPanel
                  Left = 0
                  Top = 0
                  Width = 359
                  Height = 19
                  Align = alTop
                  BevelOuter = bvNone
                  TabOrder = 0
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
                object edtQtde: TDBEdit
                  Left = 231
                  Top = 22
                  Width = 70
                  Height = 21
                  DataField = 'QTDE'
                  DataSource = dmPrincipal.dsFichaTecnicaItem
                  TabOrder = 1
                  OnExit = edtQtdeExit
                  OnKeyPress = edtQtdeKeyPress
                end
                object edtPerda: TDBEdit
                  Left = 304
                  Top = 22
                  Width = 51
                  Height = 21
                  DataField = 'PERDA'
                  DataSource = dmPrincipal.dsFichaTecnicaItem
                  TabOrder = 2
                  OnExit = edtPerdaExit
                  OnKeyPress = edtPerdaKeyPress
                end
              end
              object edtValorUnitario: TDBEdit
                Left = 141
                Top = 22
                Width = 84
                Height = 21
                DataField = 'VALORUNITARIO'
                DataSource = dmPrincipal.dsFichaTecnicaItem
                TabOrder = 0
                OnExit = edtValorUnitarioExit
                OnKeyPress = edtValorUnitarioKeyPress
              end
            end
            object btnConfirmaMateriaPrima: TBitBtn
              Left = 0
              Top = 52
              Width = 122
              Height = 25
              Caption = 'Confirma Mat'#233'ria Prima'
              TabOrder = 3
              OnClick = btnConfirmaMateriaPrimaClick
            end
            object btnCancelaMateriaPrima: TBitBtn
              Left = 121
              Top = 52
              Width = 122
              Height = 25
              Caption = 'Cancela Materia Prima'
              TabOrder = 4
            end
            object edtIdMateriaPrima: TDBEdit
              Left = 11
              Top = 24
              Width = 56
              Height = 21
              DataField = 'IDMATERIAPRIMA'
              DataSource = dmPrincipal.dsFichaTecnicaItem
              TabOrder = 0
              OnExit = edtIdMateriaPrimaExit
              OnKeyDown = edtIdMateriaPrimaKeyDown
              OnKeyPress = edtIdMateriaPrimaKeyPress
            end
          end
          object pFichaTecnicaItem: TPanel
            Left = 0
            Top = 80
            Width = 1095
            Height = 353
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object dbgFichaTecnicaItem: TDBGrid
              Left = 0
              Top = 85
              Width = 1095
              Height = 268
              Align = alClient
              DataSource = dmPrincipal.dsFichaTecnicaItem
              ReadOnly = True
              TabOrder = 0
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
            object dbgFichaTecnica: TDBGrid
              Left = 0
              Top = 0
              Width = 1095
              Height = 53
              Align = alTop
              DataSource = DataSource1
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Visible = False
              OnDrawColumnCell = dbgFichaTecnicaDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'ID'
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
                  Expanded = False
                  FieldName = 'QTDEPRODUCAO'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Qtde Produ'#231#227'o:'
                  Width = 96
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORPERDA'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor Perda:'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VALORFINAL'
                  Title.Alignment = taRightJustify
                  Title.Caption = 'Valor Final:'
                  Width = 107
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DATALANCAMENTO'
                  Title.Caption = 'Data Lan'#231'amento:'
                  Width = 101
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'OPERADOR'
                  Title.Caption = 'Operador:'
                  Width = 78
                  Visible = True
                end>
            end
            object Panel11: TPanel
              Left = 0
              Top = 53
              Width = 1095
              Height = 32
              Align = alTop
              TabOrder = 2
              object btnAlterarMateriaPrima: TBitBtn
                Left = 115
                Top = 1
                Width = 114
                Height = 30
                Align = alLeft
                Caption = 'Alterar Mat'#233'ria Prima'
                TabOrder = 0
                OnClick = btnAlterarMateriaPrimaClick
              end
              object btnExcluirMateriaPrima: TBitBtn
                Left = 229
                Top = 1
                Width = 114
                Height = 30
                Align = alLeft
                Caption = 'Excluir Mat'#233'ria Prima'
                TabOrder = 1
                OnClick = btnExcluirMateriaPrimaClick
              end
              object dbnFichaTecnicaItem: TDBNavigator
                Left = 876
                Top = 1
                Width = 218
                Height = 30
                DataSource = dmPrincipal.dsFichaTecnicaItem
                VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                Align = alRight
                TabOrder = 2
              end
              object btnInsereNovoItem: TBitBtn
                Left = 1
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
      ExplicitWidth = 1097
      ExplicitHeight = 491
      inherited pSearch: TPanel
        Width = 1097
        ExplicitWidth = 1097
        inherited rgChoice: TRadioGroup
          Width = 249
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Id Ficha T'#233'cnica'
            'Id Modelo'
            'Descri'#231#227'o Modelo'
            'Operador')
          ExplicitWidth = 249
        end
        inherited gbBetweenDates: TGroupBox
          Left = 249
          ExplicitLeft = 249
        end
        inherited pFiltro: TPanel
          Left = 489
          Width = 608
          ExplicitLeft = 489
          ExplicitWidth = 608
          inherited lDigiteConformeEscolha: TLabel
            Width = 608
          end
          inherited edtSearch: TEdit
            Width = 608
            ExplicitWidth = 608
          end
          inherited btnImprimir: TBitBtn
            OnClick = btnImprimirClick
          end
          object btnRecalcularFichaTecnica: TBitBtn
            Left = 440
            Top = 0
            Width = 168
            Height = 28
            Align = alRight
            Caption = 'Recalcular Ficha T'#233'nica'
            TabOrder = 2
            OnClick = btnRecalcularFichaTecnicaClick
          end
        end
      end
      inherited dbgSearch: TDBGrid
        Width = 1097
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID:'
            Width = 33
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDMODELO'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID Modelo:'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o Modelo:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPERDA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Perda:'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORFINAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Final:'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPRODUCAO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde Produ'#231#227'o:'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERADOR'
            Title.Caption = 'Operador:'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATALANCAMENTO'
            Title.Caption = 'Data Lan'#231'amento:'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taRightJustify
            Title.Caption = 'Status:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ativo:'
            Visible = True
          end>
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 544
    Top = 384
  end
  inherited DataSource1: TDataSource
    DataSet = dmPrincipal.cdsFichaTecnica
    OnDataChange = DataSource1DataChange
    Left = 424
    Top = 376
  end
  object dsAuxiliar: TDataSource
    Left = 629
    Top = 370
  end
end
