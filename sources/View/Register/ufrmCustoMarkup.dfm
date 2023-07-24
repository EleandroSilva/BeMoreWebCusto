inherited frmCustoMarkup: TfrmCustoMarkup
  Caption = 'Conjunto Custo Markup'
  ClientHeight = 534
  Position = poScreenCenter
  ExplicitHeight = 573
  PixelsPerInch = 96
  TextHeight = 13
  object Label32: TLabel [0]
    Left = 456
    Top = 280
    Width = 37
    Height = 13
    Caption = 'Label32'
  end
  object Label33: TLabel [1]
    Left = 256
    Top = 73
    Width = 37
    Height = 13
    Caption = 'Label33'
  end
  object DBText1: TDBText [2]
    Left = 448
    Top = 280
    Width = 65
    Height = 17
  end
  inherited Panel2: TPanel
    inherited lTextoEmpresa: TLabel
      Width = 818
      Height = 41
    end
    inherited pOperator: TPanel
      inherited lOperator: TLabel
        Width = 120
      end
    end
  end
  inherited pButtons: TPanel
    Top = 483
    ExplicitTop = 483
    inherited Panel4: TPanel
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited btnSearch: TBitBtn
      Left = 86
      Width = 88
      ExplicitLeft = 86
      ExplicitWidth = 88
    end
    inherited btnCancel: TBitBtn
      Left = 174
      ExplicitLeft = 174
    end
    inherited btnNew: TBitBtn
      Width = 86
      ExplicitWidth = 86
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
  end
  inherited Panel1: TPanel
    Height = 442
    ExplicitHeight = 442
    inherited pgMain: TPageControl
      Height = 442
      ActivePage = tsMarkupNome
      ExplicitHeight = 442
      inherited tsRegister: TTabSheet
        Caption = 'Principal'
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 930
        ExplicitHeight = 414
        inherited pGrid: TPanel
          Height = 414
          ExplicitHeight = 414
          inherited pEdit: TPanel
            TabOrder = 2
            inherited edtDescription: TEdit
              OnExit = edtDescriptionExit
            end
          end
          inherited Panel9: TPanel
            Height = 347
            ExplicitHeight = 347
          end
          object DBGrid1: TDBGrid
            Left = 1
            Top = 66
            Width = 928
            Height = 347
            Align = alClient
            DataSource = DataSource1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
      inherited tsSearch: TTabSheet
        TabVisible = False
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 930
        ExplicitHeight = 414
        inherited pSearch: TPanel
          inherited Panel6: TPanel
            inherited lDigiteConformeEscolha: TLabel
              Width = 503
            end
          end
        end
        inherited dbgSearch: TDBGrid
          Height = 347
        end
      end
      object tsMarkupNome: TTabSheet
        Caption = 'Markup Nome'
        ImageIndex = 2
        object Panel14: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 1543167
          ParentBackground = False
          TabOrder = 0
          object Label17: TLabel
            Left = 40
            Top = 13
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id:'
          end
          object Label18: TLabel
            Left = 62
            Top = 13
            Width = 88
            Height = 13
            Caption = 'Data Lan'#231'amento:'
          end
          object Label19: TLabel
            Left = 429
            Top = 13
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Label34: TLabel
            Left = 183
            Top = 13
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id Regi'#227'o:'
          end
          object Label35: TLabel
            Left = 243
            Top = 13
            Width = 67
            Height = 13
            Caption = 'Regi'#227'o Nome:'
          end
          object dbtRegiao: TDBText
            Left = 243
            Top = 36
            Width = 175
            Height = 17
            DataField = 'REGIAO'
            DataSource = dmPrincipal.dsMarkupNome
          end
          object edtIdMarkupNome: TDBEdit
            Left = 8
            Top = 32
            Width = 46
            Height = 21
            Color = clGrayText
            DataField = 'ID'
            DataSource = dmPrincipal.dsMarkupNome
            ReadOnly = True
            TabOrder = 0
          end
          object MedtReleaseDateMarkupNome: TDBEdit
            Left = 60
            Top = 32
            Width = 106
            Height = 21
            DataField = 'DATALANCAMENTO'
            DataSource = dmPrincipal.dsMarkupNome
            TabOrder = 1
          end
          object edtIdRegiaoPessoa: TDBEdit
            Left = 176
            Top = 32
            Width = 57
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'IDREGIAO'
            DataSource = dmPrincipal.dsMarkupNome
            ParentBiDiMode = False
            TabOrder = 2
            OnExit = edtIdRegiaoPessoaExit
            OnKeyDown = edtIdRegiaoPessoaKeyDown
            OnKeyPress = edtIdRegiaoPessoaKeyPress
          end
          object edtDescriptionMarkupNome: TDBEdit
            Left = 429
            Top = 32
            Width = 482
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = dmPrincipal.dsMarkupNome
            TabOrder = 3
            OnExit = edtDescriptionMarkupNomeExit
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 66
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 10768721
          ParentBackground = False
          TabOrder = 1
          object rgChoiceMarkupNome: TRadioGroup
            Left = 0
            Top = 0
            Width = 266
            Height = 66
            Align = alLeft
            Caption = 'Escolha Filtro Markup Nome'
            Color = 10768721
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Id Markup Nome'
              'Nome Markup'
              'Id Regi'#227'o'
              'Nome Regi'#227'o'
              'Operador')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object gbBetweenDatesMarkupNome: TGroupBox
            Left = 266
            Top = 0
            Width = 263
            Height = 66
            Align = alLeft
            Caption = 'Entra datas'
            Color = 10768721
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label21: TLabel
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
            object Label22: TLabel
              Left = 132
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
            object StartDateMarkupNome: TDateTimePicker
              Left = 6
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              TabOrder = 0
            end
            object EndDateMarkupNome: TDateTimePicker
              Left = 132
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              ParentBiDiMode = False
              TabOrder = 1
            end
          end
          object Panel16: TPanel
            Left = 529
            Top = 0
            Width = 401
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            Color = 10768721
            ParentBackground = False
            TabOrder = 2
            object Label23: TLabel
              Left = 0
              Top = 27
              Width = 401
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
            object edtSearchMarkupNome: TEdit
              Left = 0
              Top = 45
              Width = 401
              Height = 21
              Align = alBottom
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
            object btnImprimeMarkupNome: TBitBtn
              Left = 0
              Top = 0
              Width = 120
              Height = 27
              Align = alLeft
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = btnImprimeMarkupNomeClick
            end
          end
        end
        object dbgMarkupNome: TDBGrid
          Left = 0
          Top = 179
          Width = 930
          Height = 235
          Align = alClient
          DataSource = dmPrincipal.dsMarkupNome
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = dbgMarkupNomeCellClick
          OnColEnter = dbgMarkupNomeColEnter
          OnDrawColumnCell = dbgMarkupNomeDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taRightJustify
              Title.Caption = 'Id:'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 411
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERADOR'
              Title.Caption = 'Operador:'
              Width = 175
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATALANCAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Lan'#231'amento:'
              Width = 134
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ATIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo:'
              Width = 35
              Visible = True
            end>
        end
        object dbgRegiaoNome: TDBGrid
          Left = 0
          Top = 132
          Width = 930
          Height = 47
          Align = alTop
          DataSource = dmPrincipal.dsMarkupNome
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = dbgRegiaoNomeDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'IDREGIAO'
              Title.Alignment = taRightJustify
              Title.Caption = 'Id Regi'#227'o:'
              Width = 62
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REGIAO'
              Title.Caption = 'Nome Regi'#227'o:'
              Width = 222
              Visible = True
            end>
        end
      end
      object tsAliquotaNome: TTabSheet
        Caption = 'Al'#237'quota Nome'
        ImageIndex = 3
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 1543167
          ParentBackground = False
          TabOrder = 0
          object Label2: TLabel
            Left = 40
            Top = 13
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id:'
          end
          object Label5: TLabel
            Left = 142
            Top = 13
            Width = 88
            Height = 13
            Caption = 'Data Lan'#231'amento:'
          end
          object Label6: TLabel
            Left = 245
            Top = 13
            Width = 50
            Height = 13
            Caption = 'Descri'#231#227'o:'
          end
          object Label30: TLabel
            Left = 885
            Top = 13
            Width = 43
            Height = 13
            Caption = 'Al'#237'quota:'
          end
          object rgFinanceiro: TRadioGroup
            Left = 57
            Top = 0
            Width = 80
            Height = 66
            Caption = 'Financeiro'
            ItemIndex = 0
            Items.Strings = (
              '0 - N'#227'o'
              '1 - Sim'
              '2 - Todos')
            TabOrder = 0
          end
          object edtIdAliquotaNome: TDBEdit
            Left = 5
            Top = 32
            Width = 46
            Height = 21
            BiDiMode = bdRightToLeft
            Color = cl3DDkShadow
            DataField = 'ID'
            DataSource = dmPrincipal.dsAliquotaNome
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
          object MedtReleaseDateAliquotaNome: TDBEdit
            Left = 142
            Top = 32
            Width = 94
            Height = 21
            DataField = 'DATALANCAMENTO'
            DataSource = dmPrincipal.dsAliquotaNome
            TabOrder = 2
          end
          object edtDescriptionAliquotaNome: TDBEdit
            Left = 242
            Top = 32
            Width = 431
            Height = 21
            DataField = 'DESCRICAO'
            DataSource = dmPrincipal.dsAliquotaNome
            TabOrder = 3
          end
          object edtAliquota: TDBEdit
            Left = 831
            Top = 32
            Width = 97
            Height = 21
            DataField = 'ALIQUOTA'
            DataSource = dmPrincipal.dsAliquotaNome
            TabOrder = 5
            OnExit = edtAliquotaExit
            OnKeyPress = edtAliquotaKeyPress
          end
          object rgLucro: TRadioGroup
            Left = 679
            Top = 0
            Width = 146
            Height = 66
            Caption = 'Cadastro '#233' margem de lucro'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Sim'
              'N'#227'o')
            TabOrder = 4
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 66
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 10768721
          ParentBackground = False
          TabOrder = 1
          object rgChoiceAliquotaNome: TRadioGroup
            Left = 0
            Top = 0
            Width = 166
            Height = 66
            Align = alLeft
            Caption = 'Escolha Filtro Al'#237'quota Nome'
            Color = 10768721
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Id Al'#237'quota'
              'Nome Al'#237'quota'
              'Operador')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object gbBetweenDatesAliquotaNome: TGroupBox
            Left = 166
            Top = 0
            Width = 263
            Height = 66
            Align = alLeft
            Caption = 'Entra datas'
            Color = 10768721
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label8: TLabel
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
            object Label9: TLabel
              Left = 132
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
            object StartDateAliquotaNome: TDateTimePicker
              Left = 6
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              TabOrder = 0
            end
            object EndDateAliquotaNome: TDateTimePicker
              Left = 132
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              ParentBiDiMode = False
              TabOrder = 1
            end
          end
          object Panel10: TPanel
            Left = 429
            Top = 0
            Width = 501
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            Color = 10768721
            ParentBackground = False
            TabOrder = 2
            object Label10: TLabel
              Left = 0
              Top = 27
              Width = 501
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
            object edtSearchAliquotaNome: TEdit
              Left = 0
              Top = 45
              Width = 501
              Height = 21
              Align = alBottom
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
            object btnPrintAliquotaNome: TBitBtn
              Left = 0
              Top = 0
              Width = 118
              Height = 27
              Align = alLeft
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = btnPrintAliquotaNomeClick
            end
          end
        end
        object dbgAliquotaNome: TDBGrid
          Left = 0
          Top = 132
          Width = 930
          Height = 282
          Align = alClient
          DataSource = dmPrincipal.dsAliquotaNome
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnCellClick = dbgAliquotaNomeCellClick
          OnColEnter = dbgAliquotaNomeColEnter
          OnDrawColumnCell = dbgAliquotaNomeDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Alignment = taRightJustify
              Title.Caption = 'Id:'
              Width = 49
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'STATUS'
              Title.Alignment = taCenter
              Title.Caption = 'Enviar:'
              Width = 46
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o:'
              Width = 416
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ALIQUOTA'
              Title.Alignment = taRightJustify
              Title.Caption = 'Al'#237'quota:'
              Width = 56
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'OPERADOR'
              Title.Caption = 'Operador:'
              Width = 92
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DATALANCAMENTO'
              Title.Alignment = taCenter
              Title.Caption = 'Data Lan'#231'amento:'
              Width = 104
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'ATIVO'
              Title.Alignment = taCenter
              Title.Caption = 'Ativo:'
              Width = 35
              Visible = True
            end>
        end
      end
      object tsAliquotaGrupo: TTabSheet
        Caption = 'Al'#237'quota Grupo'
        ImageIndex = 4
        object Panel11: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 1543167
          ParentBackground = False
          TabOrder = 0
          object Label3: TLabel
            Left = 40
            Top = 13
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id:'
          end
          object Label11: TLabel
            Left = 62
            Top = 13
            Width = 88
            Height = 13
            Caption = 'Data Lan'#231'amento:'
          end
          object Label12: TLabel
            Left = 188
            Top = 13
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id Markup:'
          end
          object Label7: TLabel
            Left = 253
            Top = 13
            Width = 69
            Height = 13
            Caption = 'Nome Markup:'
          end
          object lMarkupNome: TDBText
            Left = 253
            Top = 36
            Width = 159
            Height = 17
            DataField = 'MARKUPNOME'
            DataSource = dmPrincipal.dsAliquotaGrupo
          end
          object pPesquisaAliquotaNome: TPanel
            Left = 568
            Top = 0
            Width = 362
            Height = 66
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Label13: TLabel
              Left = 0
              Top = 30
              Width = 362
              Height = 13
              Align = alBottom
              Caption = 'Digite conforme escolha Aliquota nome'
              ExplicitWidth = 185
            end
            object edtSearchAliquotaNomeFiltro: TEdit
              Left = 0
              Top = 43
              Width = 362
              Height = 23
              Align = alBottom
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object btnPesquisaAliquotaNomeFiltro: TBitBtn
              Left = 0
              Top = 0
              Width = 362
              Height = 30
              Align = alTop
              Caption = 'Buscar aliquota nome'
              TabOrder = 1
              OnClick = btnPesquisaAliquotaNomeFiltroClick
            end
          end
          object Panel17: TPanel
            Left = 423
            Top = 0
            Width = 145
            Height = 66
            Align = alRight
            TabOrder = 1
            object rbAliquotaNomeFiltro: TRadioGroup
              Left = 1
              Top = 1
              Width = 143
              Height = 64
              Align = alClient
              Caption = 'Escolha Nome Al'#237'quota'
              Color = 10768721
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ItemIndex = 1
              Items.Strings = (
                'Id Nome Al'#237'quota'
                'Nome Al'#237'quota'
                'Operador')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object edtIdAliquotaGrupo: TDBEdit
            Left = 13
            Top = 34
            Width = 41
            Height = 21
            BiDiMode = bdRightToLeft
            Color = cl3DDkShadow
            DataField = 'ID'
            DataSource = dmPrincipal.dsAliquotaGrupo
            ParentBiDiMode = False
            TabOrder = 2
          end
          object MedtReleaseDateAliquotaGrupo: TDBEdit
            Left = 60
            Top = 34
            Width = 92
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'DATALANCAMENTO'
            DataSource = dmPrincipal.dsAliquotaGrupo
            ParentBiDiMode = False
            TabOrder = 3
          end
          object edtIdMarkupNomeFiltro: TDBEdit
            Left = 158
            Top = 34
            Width = 80
            Height = 21
            BiDiMode = bdRightToLeft
            DataField = 'IDMARKUPNOME'
            DataSource = dmPrincipal.dsAliquotaGrupo
            ParentBiDiMode = False
            TabOrder = 4
            OnExit = edtIdMarkupNomeFiltroExit
            OnKeyDown = edtIdMarkupNomeFiltroKeyDown
            OnKeyPress = edtIdMarkupNomeFiltroKeyPress
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 66
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 10768721
          ParentBackground = False
          TabOrder = 1
          object rgChoiceAliquotaGrupo: TRadioGroup
            Left = 0
            Top = 0
            Width = 297
            Height = 66
            Align = alLeft
            Caption = 'Escolha Filtro Al'#237'quota Grupo'
            Color = 10768721
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Id Al'#237'quota Grupo'
              'Id Nome Markup'
              'Id Nome Al'#237'quota'
              'Nome Markup'
              'Nome Al'#237'quota'
              'Operador')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object gbBetweenDatesAliquotaGrupo: TGroupBox
            Left = 297
            Top = 0
            Width = 263
            Height = 66
            Align = alLeft
            Caption = 'Entra datas'
            Color = 10768721
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label14: TLabel
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
            object Label15: TLabel
              Left = 132
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
            object StartDateAliquotaGrupo: TDateTimePicker
              Left = 6
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              TabOrder = 0
            end
            object EndDateAliquotaGrupo: TDateTimePicker
              Left = 132
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              ParentBiDiMode = False
              TabOrder = 1
            end
          end
          object Panel13: TPanel
            Left = 560
            Top = 0
            Width = 370
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            Color = 10768721
            ParentBackground = False
            TabOrder = 2
            object Label16: TLabel
              Left = 0
              Top = 27
              Width = 370
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
            object edtSearchAliquotaGrupo: TEdit
              Left = 0
              Top = 45
              Width = 370
              Height = 21
              Align = alBottom
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
            object btnPrintAliquotaGrupo: TBitBtn
              Left = 0
              Top = 0
              Width = 120
              Height = 27
              Align = alLeft
              Caption = 'Imprimir'
              TabOrder = 1
              OnClick = btnPrintAliquotaGrupoClick
            end
          end
        end
        object Panel3: TPanel
          Left = 584
          Top = 132
          Width = 346
          Height = 282
          Align = alRight
          TabOrder = 2
          object dbgAliquotaNomeFiltro: TDBGrid
            Left = 1
            Top = 29
            Width = 344
            Height = 252
            Align = alClient
            DataSource = dmPrincipal.dsAliquotaNome
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = dbgAliquotaNomeFiltroCellClick
            OnColEnter = dbgAliquotaNomeFiltroColEnter
            OnDrawColumnCell = dbgAliquotaNomeFiltroDrawColumnCell
            OnEnter = dbgAliquotaNomeFiltroEnter
            OnExit = dbgAliquotaNomeFiltroExit
            Columns = <
              item
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id:'
                Width = 34
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
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o:'
                Width = 176
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ALIQUOTA'
                Title.Alignment = taRightJustify
                Title.Caption = 'Al'#237'quota:'
                Width = 48
                Visible = True
              end>
          end
          object Panel18: TPanel
            Left = 1
            Top = 1
            Width = 344
            Height = 28
            Align = alTop
            TabOrder = 1
            object dbnAliquotaNomeFiltro: TDBNavigator
              Left = 1
              Top = 1
              Width = 342
              Height = 26
              DataSource = dmPrincipal.dsAliquotaNome
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alClient
              TabOrder = 0
            end
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 132
          Width = 584
          Height = 282
          Align = alClient
          TabOrder = 3
          object dbgAliquotaGrupo: TDBGrid
            Left = 1
            Top = 49
            Width = 582
            Height = 232
            Align = alClient
            DataSource = dmPrincipal.dsAliquotaGrupo
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = dbgAliquotaGrupoCellClick
            OnColEnter = dbgAliquotaGrupoColEnter
            OnDrawColumnCell = dbgAliquotaGrupoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'IDMARKUPNOME'
                Title.Caption = 'IDMarkupNome:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IDALIQUOTANOME'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id Al'#237'quota Nome:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTANOME'
                Title.Caption = 'Nome Al'#237'quota:'
                Width = 176
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ALIQUOTA'
                Title.Alignment = taRightJustify
                Title.Caption = 'Al'#237'quota:'
                Width = 56
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OPERADOR'
                Title.Caption = 'Operador:'
                Width = 89
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DATALANCAMENTO'
                Title.Alignment = taCenter
                Title.Caption = 'Data Lan'#231'amento:'
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'ATIVO'
                Title.Alignment = taCenter
                Title.Caption = 'Ativo:'
                Width = 35
                Visible = True
              end>
          end
          object Panel19: TPanel
            Left = 1
            Top = 1
            Width = 582
            Height = 48
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object dbgMarkupNomeFiltro: TDBGrid
              Left = 0
              Top = 0
              Width = 582
              Height = 48
              Align = alClient
              DataSource = dmPrincipal.dsAliquotaGrupo
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgMarkupNomeFiltroDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'IDMARKUPNOME'
                  Title.Caption = 'IdMarkupNome:'
                  Width = 93
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'MARKUPNOME'
                  Title.Caption = 'Markup Nome:'
                  Width = 455
                  Visible = True
                end>
            end
          end
        end
      end
      object tsCustoFinanceiro: TTabSheet
        Caption = 'Custo Financeiro'
        ImageIndex = 5
        object Panel20: TPanel
          Left = 0
          Top = 132
          Width = 542
          Height = 282
          Align = alClient
          TabOrder = 0
          object dbgCustoFinanceiro: TDBGrid
            Left = 1
            Top = 57
            Width = 540
            Height = 224
            Align = alClient
            DataSource = dsCustoFinanceiro
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = dbgCustoFinanceiroCellClick
            OnColEnter = dbgCustoFinanceiroColEnter
            OnDrawColumnCell = dbgCustoFinanceiroDrawColumnCell
            Columns = <
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'IdPagamento'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id Pgto:'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PagamentoNome'
                Title.Caption = 'Pagamento Nome:'
                Width = 232
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'PrazoMedio'
                Title.Alignment = taRightJustify
                Title.Caption = 'Prazo M'#233'dio:'
                Width = 71
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'JurosFinanceiro'
                Title.Alignment = taRightJustify
                Title.Caption = 'Juros Financeiro:'
                Width = 98
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Operador'
                Title.Caption = 'Operador:'
                Width = 62
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'DataLancamento'
                Title.Alignment = taRightJustify
                Title.Caption = 'Data Lan'#231'amento:'
                Width = 98
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'Ativo'
                Title.Alignment = taRightJustify
                Title.Caption = 'Ativo:'
                Width = 35
                Visible = True
              end>
          end
          object Panel21: TPanel
            Left = 1
            Top = 1
            Width = 540
            Height = 56
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object dbgAliquotaNomeCustoFinanceiro: TDBGrid
              Left = 0
              Top = 0
              Width = 540
              Height = 56
              Align = alClient
              DataSource = dsCustoFinanceiro
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgAliquotaNomeCustoFinanceiroDrawColumnCell
              Columns = <
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'id'
                  Title.Alignment = taCenter
                  Title.Caption = 'Id :'
                  Width = 33
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'IdAliquotaNome'
                  Title.Alignment = taCenter
                  Title.Caption = 'Id Aliquota Nome:'
                  Width = 94
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'AliquotaNome'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliquota Nome:'
                  Width = 217
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'Aliquota'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliquota:'
                  Width = 56
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'IndiceFinanceiro'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliquota por Dia:'
                  Width = 88
                  Visible = True
                end>
            end
          end
        end
        object Panel22: TPanel
          Left = 542
          Top = 132
          Width = 388
          Height = 282
          Align = alRight
          TabOrder = 1
          object dbgPrazoPagamento: TDBGrid
            Left = 1
            Top = 33
            Width = 386
            Height = 248
            Align = alClient
            DataSource = dsPrazoPagamento
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnCellClick = dbgPrazoPagamentoCellClick
            OnColEnter = dbgPrazoPagamentoColEnter
            OnDrawColumnCell = dbgPrazoPagamentoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Id'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id:'
                Width = 27
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Status'
                Title.Alignment = taRightJustify
                Title.Caption = 'Status:'
                Width = 52
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'descricao'
                Title.Caption = 'Descri'#231#227'o:'
                Width = 191
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'prazomedio'
                Title.Alignment = taRightJustify
                Title.Caption = 'Prazo M'#233'dio:'
                Width = 76
                Visible = True
              end>
          end
          object Panel23: TPanel
            Left = 1
            Top = 1
            Width = 386
            Height = 32
            Align = alTop
            TabOrder = 1
            object dbnPrazoPagamento: TDBNavigator
              Left = 137
              Top = 1
              Width = 248
              Height = 30
              DataSource = dsPrazoPagamento
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alClient
              TabOrder = 0
            end
            object pMarcaTodosPrazoPagamento: TPanel
              Left = 1
              Top = 1
              Width = 136
              Height = 30
              Align = alLeft
              Color = 1543167
              ParentBackground = False
              TabOrder = 1
              object cbMarcaTodosPrazoPagamento: TCheckBox
                Left = 1
                Top = 1
                Width = 134
                Height = 28
                Align = alClient
                Caption = 'Caixa Prazo Pagamento:'
                TabOrder = 0
                OnClick = cbMarcaTodosPrazoPagamentoClick
              end
            end
          end
        end
        object Panel24: TPanel
          Left = 0
          Top = 66
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 10768721
          ParentBackground = False
          TabOrder = 2
          object rgChoiceCustoFinanceiro: TRadioGroup
            Left = 0
            Top = 0
            Width = 297
            Height = 66
            Align = alLeft
            Caption = 'Escolha Filtro Custo Financeiro'
            Color = 10768721
            Columns = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ItemIndex = 1
            Items.Strings = (
              'Id Custo Financeiro'
              'Id Aliquota Nome'
              'Id Pagamento'
              'Aliquota Nome'
              'Pagamento Nome'
              'Operador')
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
          end
          object gbBetweenDatesCustoFinanceiro: TGroupBox
            Left = 297
            Top = 0
            Width = 263
            Height = 66
            Align = alLeft
            Caption = 'Entra datas'
            Color = 10768721
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label20: TLabel
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
            object Label24: TLabel
              Left = 132
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
            object StartDateCustoFinanceiro: TDateTimePicker
              Left = 6
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              TabOrder = 0
            end
            object DateTimePicker6: TDateTimePicker
              Left = 132
              Top = 34
              Width = 120
              Height = 23
              BevelInner = bvNone
              BevelOuter = bvNone
              BiDiMode = bdLeftToRight
              Date = 43907.000000000000000000
              Time = 0.659640995370864400
              ParentBiDiMode = False
              TabOrder = 1
            end
          end
          object Panel25: TPanel
            Left = 560
            Top = 0
            Width = 370
            Height = 66
            Align = alClient
            BevelOuter = bvNone
            Color = 10768721
            ParentBackground = False
            TabOrder = 2
            object Label25: TLabel
              Left = 0
              Top = 27
              Width = 370
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
            object edtSearchCustoFinanceiro: TEdit
              Left = 0
              Top = 45
              Width = 370
              Height = 21
              Align = alBottom
              TabOrder = 0
              OnKeyPress = edtSearchKeyPress
            end
            object BitBtn4: TBitBtn
              Left = 0
              Top = 0
              Width = 120
              Height = 27
              Align = alLeft
              Caption = 'Imprimir'
              TabOrder = 1
            end
          end
        end
        object Panel26: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 66
          Align = alTop
          BevelOuter = bvNone
          Color = 1543167
          ParentBackground = False
          TabOrder = 3
          object Label26: TLabel
            Left = 40
            Top = 13
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id:'
          end
          object Label27: TLabel
            Left = 62
            Top = 13
            Width = 88
            Height = 13
            Caption = 'Data Lan'#231'amento:'
          end
          object Label28: TLabel
            Left = 154
            Top = 13
            Width = 86
            Height = 13
            Alignment = taRightJustify
            Caption = 'Id Aliquota Nome:'
          end
          object Label29: TLabel
            Left = 253
            Top = 13
            Width = 73
            Height = 13
            Caption = 'Aliquota Nome:'
          end
          object lCustoFinanceiroAliquotaNome: TLabel
            Left = 253
            Top = 38
            Width = 12
            Height = 13
            Caption = '...'
          end
          object edtIdCustoFinanceiroAliquotaNome: TEdit
            Left = 194
            Top = 32
            Width = 46
            Height = 23
            Alignment = taRightJustify
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnExit = edtIdCustoFinanceiroAliquotaNomeExit
            OnKeyPress = edtIdCustoFinanceiroAliquotaNomeKeyPress
          end
          object edtIdCustoFinanceiro: TEdit
            Left = 10
            Top = 32
            Width = 46
            Height = 23
            Alignment = taRightJustify
            BevelInner = bvNone
            BevelOuter = bvNone
            Color = 5592405
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object MedtReleaseDateCustoFinanceiro: TMaskEdit
            Left = 60
            Top = 32
            Width = 90
            Height = 23
            Alignment = taRightJustify
            EditMask = '99/99/9999;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Berlin Sans FB'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 1
            Text = '  /  /    '
          end
          object Panel27: TPanel
            Left = 568
            Top = 0
            Width = 362
            Height = 66
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 3
            object Label31: TLabel
              Left = 0
              Top = 30
              Width = 362
              Height = 13
              Align = alBottom
              Caption = 'Digite conforme escolha Pagamento'
              ExplicitWidth = 171
            end
            object edtSearchPrazoPagamento: TEdit
              Left = 0
              Top = 43
              Width = 362
              Height = 23
              Align = alBottom
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object btnBuscarPrazoPagamento: TBitBtn
              Left = 0
              Top = 0
              Width = 362
              Height = 30
              Align = alTop
              Caption = 'Buscar pagamento'
              TabOrder = 1
              OnClick = btnBuscarPrazoPagamentoClick
            end
          end
          object Panel28: TPanel
            Left = 423
            Top = 0
            Width = 145
            Height = 66
            Align = alRight
            TabOrder = 4
            object rbPrazoPagamento: TRadioGroup
              Left = 1
              Top = 1
              Width = 143
              Height = 64
              Align = alClient
              Caption = 'Escolha Pagamento'
              Color = 10768721
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ItemIndex = 1
              Items.Strings = (
                'Id Pagamento'
                'Nome Pagamento'
                'Operador')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object tsVendasPeriodo: TTabSheet
        Caption = 'Receita/Despesa'
        ImageIndex = 6
        TabVisible = False
        object pdbgReceitaDespesa: TPanel
          Left = 0
          Top = 0
          Width = 930
          Height = 414
          Align = alClient
          TabOrder = 0
          object pCabecalhoReceitaDespesa: TPanel
            Left = 1
            Top = 1
            Width = 928
            Height = 64
            Align = alTop
            Color = 10768721
            ParentBackground = False
            TabOrder = 0
            object rgPeriodoContas: TRadioGroup
              Left = 1
              Top = 1
              Width = 390
              Height = 62
              Align = alClient
              Caption = 'Escolha per'#237'odo'
              Color = 10768721
              Columns = 2
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Berlin Sans FB'
              Font.Style = []
              ItemIndex = 1
              Items.Strings = (
                '  M'#234's Anterior'
                '  3 Meses Anteriores '
                '  6 Meses Anteriores'
                ' 12 Meses Anteriores')
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              TabOrder = 0
            end
            object btnGerarReceitaDespesa: TBitBtn
              Left = 715
              Top = 1
              Width = 212
              Height = 62
              Align = alRight
              Caption = 'Gerar Receita/Despesa'
              TabOrder = 1
              OnClick = btnGerarReceitaDespesaClick
            end
            object rdTipoDespesa: TRadioGroup
              Left = 576
              Top = 1
              Width = 139
              Height = 62
              Align = alRight
              Caption = 'Escolha tipo de despesas'
              ItemIndex = 0
              Items.Strings = (
                'Todas as Despesas'
                'Despesas Vari'#225'veis'
                'Despesas Fixas')
              TabOrder = 2
            end
            object rgChoiceTypeAccount: TRadioGroup
              Left = 391
              Top = 1
              Width = 185
              Height = 62
              Align = alRight
              Caption = 'Escolha tipo de data'
              ItemIndex = 0
              Items.Strings = (
                'Data Emiss'#227'o(Receita/Despesa)'
                'Data Faturamento/Pagamento')
              TabOrder = 3
            end
          end
          object pReceita: TPanel
            Left = 1
            Top = 65
            Width = 298
            Height = 348
            Align = alLeft
            TabOrder = 1
            object dbgReceita: TDBGrid
              Left = 1
              Top = 42
              Width = 296
              Height = 305
              Align = alLeft
              DataSource = dsReceita
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'mesano'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#234's/Ano:'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ValorReceita'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Receita'
                  Width = 133
                  Visible = True
                end>
            end
            object Panel29: TPanel
              Left = 1
              Top = 1
              Width = 296
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Receita'
              Color = 15499776
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object pDespesa: TPanel
            Left = 299
            Top = 65
            Width = 294
            Height = 348
            Align = alLeft
            TabOrder = 2
            object dbgDespesa: TDBGrid
              Left = 1
              Top = 42
              Width = 292
              Height = 305
              Align = alClient
              DataSource = dsDespesa
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'datalancamento'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#234's/Ano'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Despesa:'
                  Width = 112
                  Visible = True
                end>
            end
            object Panel30: TPanel
              Left = 1
              Top = 1
              Width = 292
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Despesa'
              Color = 185
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
          object pResultado: TPanel
            Left = 593
            Top = 65
            Width = 336
            Height = 348
            Align = alClient
            TabOrder = 3
            object dbgResultado: TDBGrid
              Left = 1
              Top = 42
              Width = 334
              Height = 305
              Align = alClient
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Receita'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Receita:'
                  Width = 103
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Despesa'
                  Title.Alignment = taCenter
                  Title.Caption = 'Valor Despesa:'
                  Width = 104
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Aliquota'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliquota:'
                  Width = 75
                  Visible = True
                end>
            end
            object Panel31: TPanel
              Left = 1
              Top = 1
              Width = 334
              Height = 41
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Resultado'
              Color = 8026746
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
          end
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 64
  end
  object dsCustoFinanceiro: TDataSource [7]
    OnDataChange = dsCustoFinanceiroDataChange
    Left = 160
    Top = 248
  end
  object dsPrazoPagamento: TDataSource [8]
    OnDataChange = dsPrazoPagamentoDataChange
    Left = 160
    Top = 296
  end
  object dsAuxiliar: TDataSource [9]
    Left = 272
    Top = 304
  end
  object dsReceitaDespesa: TDataSource [10]
    Left = 360
    Top = 304
  end
  object dsReceita: TDataSource [11]
    Left = 64
    Top = 296
  end
  object dsDespesa: TDataSource [12]
    Left = 360
    Top = 248
  end
  inherited ImageList1: TImageList
    Left = 264
    Top = 248
  end
end
