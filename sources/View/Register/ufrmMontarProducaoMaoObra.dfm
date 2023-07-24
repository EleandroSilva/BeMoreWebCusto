inherited frmMontarProducaoMaoObra: TfrmMontarProducaoMaoObra
  Caption = 'Montar Produ'#231#227'o M'#227'o de Obra'
  ClientWidth = 992
  OnDestroy = FormDestroy
  ExplicitWidth = 1008
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    Width = 992
    ExplicitWidth = 992
    inherited pSite: TPanel
      Left = 774
      ExplicitLeft = 774
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
        OnClick = NavigatorClick
      end
    end
    inherited btnSearch: TBitBtn
      Left = 84
      ExplicitLeft = 84
    end
    inherited btnCancel: TBitBtn
      Left = 174
      ExplicitLeft = 174
    end
    inherited btnNew: TBitBtn
      Width = 84
      ExplicitWidth = 84
    end
    inherited btnSalve: TBitBtn
      Left = 444
      ExplicitLeft = 444
    end
    inherited btnUpdate: TBitBtn
      Left = 264
      ExplicitLeft = 264
    end
    inherited btnDelete: TBitBtn
      Left = 354
      ExplicitLeft = 354
    end
    inherited bbClose: TBitBtn
      Left = 534
      ExplicitLeft = 534
    end
    inherited rgActive: TRadioGroup
      Left = 710
      ExplicitLeft = 710
    end
  end
  inherited pCabecalho: TPanel
    Width = 992
    ExplicitWidth = 992
    inherited lTextoEmpresa: TLabel
      Width = 872
      Height = 41
    end
    inherited pOperator: TPanel
      Left = 872
      ExplicitLeft = 872
      inherited lOperator: TLabel
        Width = 120
      end
    end
  end
  inherited pgMain: TPageControl
    Width = 992
    OnChange = pgMainChange
    ExplicitWidth = 992
    inherited tsRegister: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 984
      ExplicitHeight = 491
      inherited pGrid: TPanel
        Width = 984
        ExplicitWidth = 984
        inherited pEdit: TPanel
          Width = 982
          Height = 136
          ExplicitWidth = 982
          ExplicitHeight = 136
          inherited pCabecalhoEdt: TPanel
            Top = 17
            Width = 982
            ExplicitTop = 17
            ExplicitWidth = 982
            inherited LId: TLabel
              Left = 9
              Width = 62
              Caption = 'Id Produ'#231#227'o:'
              ExplicitLeft = 9
              ExplicitWidth = 62
            end
            inherited lDescricao: TLabel
              Left = 424
              Width = 76
              Caption = 'Qtde Produ'#231#227'o:'
              ExplicitLeft = 424
              ExplicitWidth = 76
            end
            inherited lDataLancamento: TLabel
              Left = 77
              ExplicitLeft = 77
            end
            object lValorFrete: TLabel [3]
              Left = 501
              Top = 6
              Width = 57
              Height = 13
              Caption = 'Valor Frete:'
            end
            object Label4: TLabel [4]
              Left = 583
              Top = 6
              Width = 78
              Height = 13
              Caption = 'Valor M'#227'o Obra:'
            end
            object Label3: TLabel [5]
              Left = 666
              Top = 6
              Width = 143
              Height = 13
              Caption = 'Valor Custo Frete+M'#227'o Obra:'
            end
            object Label2: TLabel [6]
              Left = 171
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Modelo:'
            end
            object Label10: TLabel [7]
              Left = 897
              Top = 6
              Width = 84
              Height = 13
              Caption = 'Al'#237'quota Externa:'
            end
            object Label9: TLabel [8]
              Left = 810
              Top = 6
              Width = 82
              Height = 13
              Caption = 'Al'#237'quota Interna:'
            end
            inherited editId: TDBEdit
              Color = clSilver
            end
            inherited MedtReleaseDate: TDBEdit
              Left = 72
              DataField = 'DATALANCAMENTO'
              DataSource = DataSource1
              OnExit = MedtReleaseDateExit
              ExplicitLeft = 72
            end
            inherited edtDescription: TDBEdit
              Left = 419
              Width = 81
              DataField = 'QTDEPRODUCAO'
              TabOrder = 3
              ExplicitLeft = 419
              ExplicitWidth = 81
            end
            object edtValorFrete: TDBEdit
              Left = 501
              Top = 25
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORFRETE'
              DataSource = DataSource1
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 4
            end
            object edtValorMaoObra: TDBEdit
              Left = 583
              Top = 25
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORMAOOBRA'
              DataSource = DataSource1
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 5
            end
            object edtValorCusto: TDBEdit
              Left = 665
              Top = 25
              Width = 144
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORCUSTO'
              DataSource = DataSource1
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 6
            end
            object dblkModelo: TDBLookupComboBox
              Left = 171
              Top = 25
              Width = 247
              Height = 21
              DataField = 'IDMODELO'
              DataSource = DataSource1
              KeyField = 'ID'
              ListField = 'DESCRICAO'
              ListSource = dmPrincipal.dsModelo
              TabOrder = 2
              OnEnter = dblkModeloEnter
              OnExit = dblkModeloExit
            end
            object dbAliquotaExterna: TDBEdit
              Left = 897
              Top = 25
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'ALIQUOTAEXTERNA'
              DataSource = dmPrincipal.dsProducao
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 7
            end
            object dbAliquotaInterna: TDBEdit
              Left = 810
              Top = 25
              Width = 86
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'ALIQUOTAINTERNA'
              DataSource = dmPrincipal.dsProducao
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 8
            end
          end
          object pProducaoCabecalho: TPanel
            Left = 0
            Top = 0
            Width = 982
            Height = 17
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Produ'#231#227'o Cabe'#231'alho'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object pProducaoSetorLocal: TPanel
            Left = 0
            Top = 66
            Width = 982
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Produ'#231#227'o Setor/Local'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Panel1: TPanel
            Left = 0
            Top = 81
            Width = 982
            Height = 53
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object Label1: TLabel
              Left = 8
              Top = 9
              Width = 58
              Height = 13
              Caption = 'Setor/Local:'
            end
            object Label5: TLabel
              Left = 197
              Top = 9
              Width = 76
              Height = 13
              Caption = 'Qtde Produ'#231#227'o:'
            end
            object Label6: TLabel
              Left = 284
              Top = 9
              Width = 57
              Height = 13
              Caption = 'Valor Frete:'
            end
            object Label7: TLabel
              Left = 371
              Top = 9
              Width = 78
              Height = 13
              Caption = 'Valor M'#227'o Obra:'
            end
            object Label8: TLabel
              Left = 459
              Top = 9
              Width = 143
              Height = 13
              Caption = 'Valor Custo Frete+M'#227'o Obra:'
            end
            object dblkSetorLocal: TDBLookupComboBox
              Left = 8
              Top = 28
              Width = 184
              Height = 21
              DataField = 'IDSETORLOCAL'
              DataSource = dmPrincipal.dsProducaoItem
              KeyField = 'ID'
              ListField = 'DESCRICAO'
              ListSource = dmPrincipal.dsSetorLocal
              TabOrder = 0
              OnEnter = dblkSetorLocalEnter
            end
            object edtQtdeProducaoItem: TDBEdit
              Left = 197
              Top = 28
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              DataField = 'QTDEPRODUCAO'
              DataSource = dmPrincipal.dsProducaoItem
              ParentBiDiMode = False
              TabOrder = 1
              OnEnter = edtQtdeProducaoItemEnter
              OnExit = edtQtdeProducaoItemExit
            end
            object edtValorFreteProducaoItem: TDBEdit
              Left = 284
              Top = 28
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORFRETE'
              DataSource = dmPrincipal.dsProducaoItem
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 3
            end
            object edtValorMaoObraProducaoItem: TDBEdit
              Left = 371
              Top = 28
              Width = 81
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORMAOOBRA'
              DataSource = dmPrincipal.dsProducaoItem
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 4
            end
            object edtValorCustoProducaoItem: TDBEdit
              Left = 458
              Top = 28
              Width = 144
              Height = 21
              BiDiMode = bdRightToLeftNoAlign
              Color = clSilver
              DataField = 'VALORCUSTO'
              DataSource = dmPrincipal.dsProducaoItem
              ParentBiDiMode = False
              ReadOnly = True
              TabOrder = 5
            end
            object btnInserirOutraProducao: TBitBtn
              Left = 608
              Top = 24
              Width = 144
              Height = 25
              Caption = 'Inserir Outra Produ'#231#227'o'
              Enabled = False
              TabOrder = 2
              OnClick = btnInserirOutraProducaoClick
            end
          end
        end
        inherited pGridCadastro: TPanel
          Top = 137
          Width = 982
          Height = 353
          ExplicitTop = 137
          ExplicitWidth = 982
          ExplicitHeight = 353
          object dbgCadastro: TDBGrid
            Left = 0
            Top = 32
            Width = 982
            Height = 321
            Align = alClient
            DataSource = dmPrincipal.dsProducaoItem
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgCadastroDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'IDPRODUCAO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id Produ'#231#227'o:'
                Width = 76
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taRightJustify
                Title.Caption = 'ID:'
                Width = 38
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDSETORLOCAL'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id Setor/Local:'
                Width = 77
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Setor/Local'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTDEPRODUCAO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Qtde Produ'#231#227'o:'
                Width = 88
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORFRETE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Frete:'
                Width = 71
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORMAOOBRA'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor M'#227'o de Obra:'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORAJUSTADO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor ajustado:'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORCUSTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Custo:'
                Width = 94
                Visible = True
              end>
          end
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 982
            Height = 32
            Align = alTop
            TabOrder = 1
            object btnAlterarMateriaPrima: TBitBtn
              Left = 115
              Top = 1
              Width = 114
              Height = 30
              Align = alLeft
              Caption = 'Alterar Produ'#231#227'o'
              TabOrder = 0
            end
            object btnExcluirMateriaPrima: TBitBtn
              Left = 229
              Top = 1
              Width = 114
              Height = 30
              Align = alLeft
              Caption = 'Excluir Setor'
              TabOrder = 1
              OnClick = btnExcluirMateriaPrimaClick
            end
            object dbnFichaTecnicaItem: TDBNavigator
              Left = 763
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
              Caption = 'Nova Produ'#231#227'o'
              TabOrder = 3
            end
          end
        end
      end
    end
    inherited tsSearch: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 984
      ExplicitHeight = 491
      inherited pSearch: TPanel
        Width = 984
        ExplicitWidth = 984
        inherited rgChoice: TRadioGroup
          Width = 233
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            '0 - Id Produ'#231#227'o'
            '1 - Id Modelo'
            '2 - Nome Modelo'
            '3 - Operador')
          ExplicitWidth = 233
        end
        inherited gbBetweenDates: TGroupBox
          Left = 233
          ExplicitLeft = 233
        end
        inherited pFiltro: TPanel
          Left = 473
          Width = 511
          ExplicitLeft = 473
          ExplicitWidth = 511
          inherited lDigiteConformeEscolha: TLabel
            Width = 511
          end
          inherited edtSearch: TEdit
            Width = 511
            ExplicitWidth = 511
          end
          inherited btnImprimir: TBitBtn
            OnClick = btnImprimirClick
          end
          object btnRecalcularProducaoMaoObra: TBitBtn
            Left = 344
            Top = 0
            Width = 167
            Height = 28
            Align = alRight
            Caption = 'Recalcular Produ'#231#227'o M'#227'o Obra'
            TabOrder = 2
            OnClick = btnRecalcularProducaoMaoObraClick
          end
        end
      end
      inherited dbgSearch: TDBGrid
        Width = 984
        DataSource = DataSource1
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Produ'#231#227'o:'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDMODELO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Modelo:'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Modelo:'
            Width = 237
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPRODUCAO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde Produ'#231#227'o:'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAINTERNA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Al'#237'quota Interna:'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAEXTERNA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Al'#237'quota Externa:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORFRETE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Frete:'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORMAOOBRA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor M'#227'o de Obra:'
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORAJUSTADO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Ajustado:'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORCUSTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Custo:'
            Width = 85
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DATALANCAMENTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Data Lan'#231'amento:'
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERADOR'
            Title.Caption = 'Operador:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taRightJustify
            Title.Caption = 'Status:'
            Width = 43
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ativo:'
            Width = 35
            Visible = True
          end>
      end
    end
  end
  inherited DataSource1: TDataSource
    DataSet = dmPrincipal.cdsProducao
  end
end
