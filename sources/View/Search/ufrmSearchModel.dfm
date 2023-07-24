inherited frmSearchModel: TfrmSearchModel
  Caption = 'Pesquisa Modelo'
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
      inherited edtSearch: TEdit
        OnExit = edtSearchExit
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
          Expanded = False
          FieldName = 'Id'
          Title.Alignment = taRightJustify
          Title.Caption = 'Id:'
          Width = 42
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 497
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ativo'
          Title.Alignment = taCenter
          Title.Caption = 'Ativo'
          Width = 54
          Visible = True
        end>
    end
  end
  inherited DataSource1: TDataSource
    Left = 496
  end
  inherited ImageList1: TImageList
    Left = 496
    Top = 232
  end
end
