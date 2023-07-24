inherited frmMateriaPrima: TfrmMateriaPrima
  Caption = 'frmMateriaPrima'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    inherited pSite: TPanel
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited pCabecalho: TPanel
    inherited lTextoEmpresa: TLabel
      Width = 814
      Height = 41
    end
    inherited pOperator: TPanel
      inherited lOperator: TLabel
        Width = 120
      end
    end
  end
  inherited pgMain: TPageControl
    inherited tsRegister: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 926
      ExplicitHeight = 491
      inherited pGrid: TPanel
        inherited pEdit: TPanel
          inherited pCabecalhoEdt: TPanel
            inherited LId: TLabel
              Left = -11
              Width = 82
              Caption = 'Id Mat'#233'ria Prima:'
              ExplicitLeft = -11
              ExplicitWidth = 82
            end
            inherited lDescricao: TLabel
              Width = 118
              Caption = 'Descri'#231#227'o Mat'#233'ria Prima:'
              ExplicitWidth = 118
            end
            inherited editId: TDBEdit
              DataSource = dmPrincipal.dsMateriaPrima
            end
            inherited MedtReleaseDate: TDBEdit
              DataField = 'DT_CADASTRO'
              DataSource = dmPrincipal.dsMateriaPrima
            end
            inherited edtDescription: TDBEdit
              Width = 435
              DataField = 'DESCRICAO'
              DataSource = dmPrincipal.dsMateriaPrima
              ExplicitWidth = 435
            end
          end
        end
      end
    end
    inherited tsSearch: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 926
      ExplicitHeight = 491
      inherited pSearch: TPanel
        inherited pFiltro: TPanel
          inherited lDigiteConformeEscolha: TLabel
            Width = 501
          end
          inherited btnImprimir: TBitBtn
            ExplicitLeft = 0
            ExplicitTop = 0
          end
        end
      end
      inherited dbgSearch: TDBGrid
        DataSource = dmPrincipal.dsMateriaPrima
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CLASSE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NCM_SH'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LARG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESP_POL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_CADASTRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ANTERIOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_UNITARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EST_ANTERIOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_LIQUIDO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Visible = True
          end>
      end
    end
  end
end
