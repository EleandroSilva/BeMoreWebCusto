inherited frmPesquisaRegiaoPessoa: TfrmPesquisaRegiaoPessoa
  Caption = 'Pesquisa Regi'#227'o Pessoa'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    inherited Panel4: TPanel
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited btnSearch: TBitBtn
      OnClick = btnSearchClick
    end
  end
  inherited pSearch: TPanel
    inherited Panel6: TPanel
      inherited Label1: TLabel
        Width = 513
      end
    end
  end
  inherited Panel2: TPanel
    inherited lTextoEmpresa: TLabel
      Width = 870
      Height = 34
    end
  end
  inherited Panel1: TPanel
    inherited dbgSearch: TDBGrid
      OnEnter = dbgSearchEnter
      OnExit = dbgSearchExit
      OnKeyPress = dbgSearchKeyPress
      OnKeyUp = dbgSearchKeyUp
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'Id'
          Title.Alignment = taRightJustify
          Title.Caption = 'Id:'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Regi'#227'o Nome:'
          Width = 379
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Usuario'
          Title.Caption = 'Operador:'
          Width = 151
          Visible = True
        end>
    end
  end
end
