inherited frmSearchMarkupNome: TfrmSearchMarkupNome
  Caption = 'Pesquisa Nome Markup'
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
    inherited rgChoice: TRadioGroup
      Width = 233
      Columns = 2
      ItemIndex = 2
      Items.Strings = (
        'Id'
        'Id Regi'#227'o'
        'Nome Markup'
        'Nome Regi'#227'o'
        'Operador')
      ExplicitWidth = 233
    end
    inherited Panel6: TPanel
      Left = 473
      Width = 465
      ExplicitLeft = 473
      ExplicitWidth = 465
      inherited Label1: TLabel
        Width = 465
      end
      inherited edtSearch: TEdit
        Width = 465
        OnExit = edtSearchExit
        ExplicitWidth = 465
      end
    end
    inherited gbBetweenDates: TGroupBox
      Left = 233
      ExplicitLeft = 233
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
    end
  end
end
