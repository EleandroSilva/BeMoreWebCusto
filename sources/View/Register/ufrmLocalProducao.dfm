inherited frmLocalProducao: TfrmLocalProducao
  Caption = 'frmLocalProducao'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    inherited pSite: TPanel
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
        OnClick = NavigatorClick
      end
    end
  end
  inherited pgMain: TPageControl
    inherited tsRegister: TTabSheet
      inherited pGrid: TPanel
        inherited pEdit: TPanel
          inherited pCabecalhoEdt: TPanel
            Height = 50
            ExplicitHeight = 50
            inherited LId: TLabel
              Left = 30
              Width = 41
              Caption = 'Id Local:'
              ExplicitLeft = 30
              ExplicitWidth = 41
            end
            inherited MedtReleaseDate: TDBEdit
              DataField = 'DATALANCAMENTO'
              DataSource = DataSource1
            end
            inherited edtDescription: TDBEdit
              DataField = 'DESCRICAO'
              OnExit = edtDescriptionExit
            end
            object rgInternoExterno: TRadioGroup
              Left = 824
              Top = 0
              Width = 100
              Height = 50
              Align = alRight
              Caption = 'Produ'#231#227'o'
              ItemIndex = 0
              Items.Strings = (
                '0 - Interno'
                '1 - Externo')
              TabOrder = 3
            end
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
                Width = 244
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'DATALANCAMENTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Data Lan'#231'amento:'
                Width = 108
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
          inherited btnImprimir: TBitBtn
            OnClick = btnImprimirClick
            ExplicitLeft = 0
            ExplicitTop = 0
          end
        end
      end
      inherited dbgSearch: TDBGrid
        DataSource = DataSource1
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
            Width = 244
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'DATALANCAMENTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Data Lan'#231'amento:'
            Width = 108
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
  inherited DataSource1: TDataSource
    DataSet = dmPrincipal.cdsLocal
  end
end
