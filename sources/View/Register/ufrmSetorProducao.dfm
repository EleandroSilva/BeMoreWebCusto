inherited frmSetorProducao: TfrmSetorProducao
  Caption = 'frmSetorProducao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    inherited pSite: TPanel
      inherited lSite: TLabel
        Width = 12
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited pCabecalho: TPanel
    inherited lTextoEmpresa: TLabel
      Width = 88
      Height = 23
    end
    inherited pOperator: TPanel
      inherited lOperator: TLabel
        Width = 66
      end
      inherited edtOperator: TDBEdit
        DataField = 'OPERADOR'
      end
    end
  end
  inherited pgMain: TPageControl
    inherited tsRegister: TTabSheet
      inherited pGrid: TPanel
        inherited pEdit: TPanel
          object lValorGasto: TLabel [0]
            Left = 765
            Top = 6
            Width = 66
            Height = 13
            Caption = 'Valor Gastor: '
          end
          object lAliquotaFrete: TLabel [1]
            Left = 847
            Top = 6
            Width = 72
            Height = 13
            Caption = 'Al'#237'quota Frete:'
          end
          inherited pCabecalhoEdt: TPanel
            inherited LId: TLabel
              Left = 28
              Width = 43
              Caption = 'Id Setor:'
              ExplicitLeft = 28
              ExplicitWidth = 43
            end
            inherited lDescricao: TLabel
              Left = 192
              ExplicitLeft = 192
            end
            inherited lDataLancamento: TLabel
              Left = 89
              ExplicitLeft = 89
            end
            inherited MedtReleaseDate: TDBEdit
              Left = 89
              Width = 88
              DataField = 'DATALANCAMENTO'
              DataSource = DataSource1
              ExplicitLeft = 89
              ExplicitWidth = 88
            end
            inherited edtDescription: TDBEdit
              Left = 192
              Width = 533
              DataField = 'DESCRICAO'
              ExplicitLeft = 192
              ExplicitWidth = 533
            end
          end
          object dbValorGasto: TDBEdit
            Left = 731
            Top = 25
            Width = 100
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'VALORGASTO'
            DataSource = DataSource1
            ParentBiDiMode = False
            TabOrder = 1
          end
          object dbAliquotaFrete: TDBEdit
            Left = 847
            Top = 25
            Width = 72
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'ALIQUOTAFRETE'
            DataSource = DataSource1
            ParentBiDiMode = False
            TabOrder = 2
            OnExit = dbAliquotaFreteExit
          end
        end
        inherited pGridCadastro: TPanel
          object dbgCadastro: TDBGrid
            Left = 0
            Top = 0
            Width = 924
            Height = 433
            Align = alClient
            DataSource = DataSource1
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
                FieldName = 'ID'
                Title.Alignment = taRightJustify
                Title.Caption = 'ID:'
                Width = 38
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORGASTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Gasto:'
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTAFRETE'
                Title.Alignment = taRightJustify
                Title.Caption = 'Al'#237'quota Frete:'
                Width = 94
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
    end
    inherited tsSearch: TTabSheet
      inherited pSearch: TPanel
        inherited pFiltro: TPanel
          inherited lDigiteConformeEscolha: TLabel
            Width = 158
          end
          inherited btnImprimir: TBitBtn
            Width = 118
            OnClick = btnImprimirClick
            ExplicitWidth = 118
          end
        end
      end
      inherited dbgSearch: TDBGrid
        DataSource = DataSource1
        OnEnter = dbgSearchEnter
        OnExit = dbgSearchExit
        OnKeyPress = dbgSearchKeyPress
        OnKeyUp = dbgSearchKeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taRightJustify
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORGASTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Gasto:'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAFRETE'
            Title.Alignment = taRightJustify
            Title.Caption = 'Al'#237'quota Frete:'
            Width = 94
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
  inherited DataSource1: TDataSource
    DataSet = dmPrincipal.cdsSetor
  end
end
