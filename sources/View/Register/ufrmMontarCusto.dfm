inherited frmMontarCusto: TfrmMontarCusto
  Caption = 'frmMontarCusto'
  ClientHeight = 725
  ClientWidth = 1336
  OnDestroy = FormDestroy
  ExplicitWidth = 1352
  ExplicitHeight = 764
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    Top = 674
    Width = 1336
    ExplicitTop = 674
    ExplicitWidth = 1336
    inherited pSite: TPanel
      Left = 1118
      ExplicitLeft = 1118
      inherited lSite: TLabel
        Width = 218
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
        OnClick = NavigatorClick
      end
    end
    inherited btnSearch: TBitBtn
      Left = 80
      Width = 80
      ExplicitLeft = 80
      ExplicitWidth = 80
    end
    inherited btnCancel: TBitBtn
      Left = 160
      Width = 80
      ExplicitLeft = 160
      ExplicitWidth = 80
    end
    inherited btnNew: TBitBtn
      Width = 80
      ExplicitWidth = 80
    end
    inherited btnSalve: TBitBtn
      Left = 400
      Width = 78
      ExplicitLeft = 400
      ExplicitWidth = 78
    end
    inherited btnUpdate: TBitBtn
      Left = 240
      Width = 80
      ExplicitLeft = 240
      ExplicitWidth = 80
    end
    inherited btnDelete: TBitBtn
      Left = 320
      Width = 80
      ExplicitLeft = 320
      ExplicitWidth = 80
    end
    inherited bbClose: TBitBtn
      Left = 478
      Width = 80
      ExplicitLeft = 478
      ExplicitWidth = 80
    end
    inherited rgActive: TRadioGroup
      Left = 1054
      ExplicitLeft = 1054
    end
    object btnGerarCustoModelos: TBitBtn
      Left = 807
      Top = 0
      Width = 247
      Height = 51
      Align = alRight
      Caption = 'Gerar Custo de Todos Modelos com Ficha T'#233'cnica'
      TabOrder = 9
      OnClick = btnGerarCustoModelosClick
    end
  end
  inherited pCabecalho: TPanel
    Width = 1336
    ExplicitWidth = 1336
    inherited lTextoEmpresa: TLabel
      Width = 1216
      Height = 41
    end
    inherited pOperator: TPanel
      Left = 1216
      ExplicitLeft = 1216
      inherited lOperator: TLabel
        Width = 120
      end
    end
    object cbEntreDatas: TCheckBox
      Left = 17
      Top = 12
      Width = 256
      Height = 17
      Caption = 'Usar par'#226'metro de entre datas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = cbEntreDatasClick
    end
  end
  inherited pgMain: TPageControl
    Width = 1336
    Height = 633
    ActivePage = tsSearch
    ExplicitWidth = 1336
    ExplicitHeight = 633
    inherited tsRegister: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1328
      ExplicitHeight = 605
      inherited pGrid: TPanel
        Width = 1328
        Height = 605
        ExplicitWidth = 1328
        ExplicitHeight = 605
        inherited pEdit: TPanel
          Width = 1326
          ExplicitWidth = 1326
          inherited pCabecalhoEdt: TPanel
            Width = 1326
            ExplicitWidth = 1326
            inherited LId: TLabel
              Left = 26
              Width = 45
              Caption = 'Id Custo:'
              ExplicitLeft = 26
              ExplicitWidth = 45
            end
            inherited lDescricao: TLabel
              Width = 51
              Caption = 'Id Modelo:'
              ExplicitWidth = 51
            end
            object Label1: TLabel [3]
              Left = 254
              Top = 6
              Width = 38
              Height = 13
              Caption = 'Modelo:'
            end
            object lModel: TDBText [4]
              Left = 254
              Top = 29
              Width = 196
              Height = 17
              DataField = 'DESCRICAO'
              DataSource = DataSource1
            end
            object lIdMarkup: TLabel [5]
              Left = 456
              Top = 8
              Width = 50
              Height = 13
              Caption = 'Id Regi'#227'o:'
            end
            object lMarkupNome: TLabel [6]
              Left = 514
              Top = 8
              Width = 76
              Height = 13
              Caption = 'Markup/Regi'#227'o:'
            end
            object lCaptionNomeMarkup: TDBText [7]
              Left = 514
              Top = 29
              Width = 169
              Height = 17
              DataField = 'NOMEREGIAO'
              DataSource = DataSource1
            end
            object lSomaAliquota: TDBText [8]
              Left = 705
              Top = 29
              Width = 65
              Height = 17
              Alignment = taRightJustify
              DataField = 'ALIQUOTAMARKUP'
              DataSource = DataSource1
            end
            object lIndiceaVista: TDBText [9]
              Left = 833
              Top = 29
              Width = 65
              Height = 17
              Alignment = taRightJustify
              DataField = 'INDICEAVISTAMULTIPLICAR'
              DataSource = DataSource1
            end
            object Label2: TLabel [10]
              Left = 698
              Top = 7
              Width = 72
              Height = 13
              Alignment = taRightJustify
              Caption = 'Soma Aliquota:'
            end
            object Label4: TLabel [11]
              Left = 797
              Top = 7
              Width = 101
              Height = 13
              Alignment = taRightJustify
              Caption = 'Indice venda '#224' vista:'
            end
            inherited editId: TDBEdit
              Color = clSilver
            end
            inherited MedtReleaseDate: TDBEdit
              Left = 77
              DataField = 'DATALANCAMENTO'
              DataSource = DataSource1
              ExplicitLeft = 77
            end
            inherited edtDescription: TDBEdit
              Left = 197
              Top = 24
              Width = 52
              DataField = 'IDMODELO'
              OnExit = edtDescriptionExit
              OnKeyDown = edtDescriptionKeyDown
              OnKeyPress = edtDescriptionKeyPress
              ExplicitLeft = 197
              ExplicitTop = 24
              ExplicitWidth = 52
            end
            object edtIdRegiao: TDBEdit
              Left = 456
              Top = 24
              Width = 52
              Height = 21
              DataField = 'IDREGIAO'
              DataSource = DataSource1
              TabOrder = 3
              OnExit = edtIdRegiaoExit
              OnKeyDown = edtIdRegiaoKeyDown
            end
            object Panel9: TPanel
              Left = 1195
              Top = 0
              Width = 131
              Height = 49
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 4
              object lDespesaFixa: TLabel
                Left = 0
                Top = 0
                Width = 131
                Height = 24
                Align = alTop
                Caption = 'Despesa Fixa::'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Bell MT'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitWidth = 120
              end
              object lCaptionDespesaFixa: TLabel
                Left = 0
                Top = 25
                Width = 131
                Height = 24
                Align = alBottom
                Alignment = taRightJustify
                Caption = '...'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -19
                Font.Name = 'Bell MT'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 116
                ExplicitWidth = 15
              end
            end
          end
        end
        inherited pGridCadastro: TPanel
          Width = 1107
          Height = 547
          ExplicitWidth = 1107
          ExplicitHeight = 547
          object Panel25: TPanel
            Left = 0
            Top = 0
            Width = 1107
            Height = 108
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object Panel1: TPanel
              Left = 0
              Top = 0
              Width = 1107
              Height = 108
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object dbgMontarCusto: TDBGrid
                Left = 0
                Top = 0
                Width = 1107
                Height = 108
                Align = alClient
                DataSource = DataSource1
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = dbgMontarCustoDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'ID'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'ID:'
                    Width = 29
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IDMODELO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id Modelo:'
                    Width = 60
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Modelo:'
                    Width = 268
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'IDREGIAO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Id Regi'#227'o:'
                    Width = 59
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NOMEREGIAO'
                    Title.Caption = 'Markup/Regi'#227'o:'
                    Width = 150
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORDESPESAFIXA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Despesa Fixa'
                    Width = 93
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORFICHATECNICA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Ficha T'#233'cnica:'
                    Width = 97
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORMAOOBRAINTERNA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ M'#227'o de Obra Interna:'
                    Width = 134
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORMAOOBRAEXTERNA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ M'#227'o de Obra Externa:'
                    Width = 129
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORMAOOBRAAJUSTADO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ M'#227'o de Obra Ajustado:'
                    Width = 139
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORFRETE'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Frete:'
                    Width = 52
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTDEPRODUCAO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Qtde Produ'#231#227'o:'
                    Width = 84
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUSTOMODELODESPESAFIXA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Custo Despesa Fixa:'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'CUSTOTOTALMODELO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Custo Total Modelo:'
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALIQUOTAMARKUP'
                    Title.Alignment = taRightJustify
                    Title.Caption = '% Markup C/Lucro:'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ALIQUOTAMARKUPSEMLUCRO'
                    Title.Alignment = taRightJustify
                    Title.Caption = '% Markup S/Lucro:'
                    Width = 99
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORCUSTOMARKUP'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Custo Markup:'
                    Width = 95
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORCUSTOCOMMARKUP'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Custo C/Markup:'
                    Width = 111
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORVENDAAVISTA'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Vender '#224' Vista:'
                    Width = 97
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'VALORLUCROREAL'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'R$ Lucro Real:'
                    Width = 79
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'INDICEAVISTAMULTIPLICAR'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Iindice '#224' Vista X:'
                    Width = 91
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'INDICEAVISTADIVIDIR'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Iindice '#224' Vista /:'
                    Width = 91
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DATALANCAMENTO'
                    Title.Caption = 'Data Lan'#231'amento:'
                    Width = 100
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'OPERADOR'
                    Title.Caption = 'Operador:'
                    Width = 86
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'STATUS'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Status:'
                    Width = 48
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ATIVO'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Ativo:'
                    Width = 39
                    Visible = True
                  end>
              end
            end
          end
          object Panel23: TPanel
            Left = 0
            Top = 108
            Width = 1107
            Height = 25
            Align = alTop
            BevelOuter = bvNone
            Color = 4802889
            Font.Charset = ANSI_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Bell MT'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object dbnTabelaPrecoPrazoMedio: TDBNavigator
              Left = 241
              Top = 0
              Width = 206
              Height = 25
              DataSource = dmPrincipal.dsListaTabelaPrazoMedio
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              TabOrder = 0
            end
            object btnBuscarTabelaPreco: TBitBtn
              Left = 0
              Top = 0
              Width = 121
              Height = 25
              Align = alLeft
              Caption = 'Buscar Tabela Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnBuscarTabelaPrecoClick
            end
            object btnPrintTabelaPreco: TBitBtn
              Left = 121
              Top = 0
              Width = 120
              Height = 25
              Align = alLeft
              Caption = 'Imprimir Tabela'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              OnClick = btnPrintTabelaPrecoClick
            end
            object Panel10: TPanel
              Left = 447
              Top = 0
              Width = 323
              Height = 25
              Align = alLeft
              TabOrder = 3
              object cbTabelaSomenteaVista: TCheckBox
                Left = 1
                Top = 1
                Width = 321
                Height = 23
                Align = alClient
                Caption = 'Montar Tabela de Pre'#231'o Somente a Vista'
                Checked = True
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -16
                Font.Name = 'Bell MT'
                Font.Style = [fsBold]
                ParentFont = False
                State = cbChecked
                TabOrder = 0
              end
            end
          end
          object dbgListaTabelaPreco: TDBGrid
            Left = 0
            Top = 186
            Width = 1107
            Height = 361
            Align = alClient
            DataSource = dmPrincipal.dsListaTabelaPrazoMedio
            ReadOnly = True
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgListaTabelaPrecoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'IDMONTARCUSTO'
                Title.Caption = 'Id Custo:'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRAZOMEDIO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Prazo M'#233'dio:'
                Width = 92
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORVENDAPRAZOMEDIO'
                Title.Alignment = taRightJustify
                Title.Caption = 'R$ Prazo M'#233'dio:'
                Visible = True
              end>
          end
          object dbgTabelaPreco: TDBGrid
            Left = 0
            Top = 133
            Width = 1107
            Height = 53
            Align = alTop
            DataSource = dmPrincipal.dsListaTabelaPrazoMedio
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgTabelaPrecoDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'IDMONTARCUSTO'
                Title.Alignment = taRightJustify
                Title.Caption = 'Id Custo:'
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MODELO'
                Title.Caption = 'Nome Modelo:'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MARKUP'
                Title.Caption = 'Nome Markup:'
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALORVENDAAVISTA'
                Title.Alignment = taRightJustify
                Title.Caption = 'R$ '#192' Vista:'
                Width = 64
                Visible = True
              end>
          end
        end
        object Panel3: TPanel
          Left = 1108
          Top = 57
          Width = 219
          Height = 547
          Align = alRight
          BevelOuter = bvNone
          Color = 5592405
          ParentBackground = False
          TabOrder = 2
          object Panel11: TPanel
            Left = 0
            Top = 62
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            object lCustoModeloDespesaFixa: TLabel
              Left = 6
              Top = 0
              Width = 205
              Height = 24
              Caption = 'Despesa Fixa P/Modelo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText1: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'CUSTOMODELODESPESAFIXA'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
          end
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            object Label10: TLabel
              Left = 6
              Top = 4
              Width = 150
              Height = 24
              Caption = 'R$ Ficha T'#233'cnica:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText8: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORFICHATECNICA'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
          end
          object Panel2: TPanel
            Left = 0
            Top = 423
            Width = 219
            Height = 62
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 2
            object DBText2: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORMAOOBRAINTERNA'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
            object Label3: TLabel
              Left = 6
              Top = 0
              Width = 178
              Height = 24
              Caption = 'M'#227'o de Obra Interna:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel5: TPanel
            Left = 0
            Top = 186
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 3
            object DBText4: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORFRETE'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 24
              ExplicitTop = 53
            end
            object Label6: TLabel
              Left = 6
              Top = 0
              Width = 133
              Height = 24
              Caption = 'Frete Produ'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 248
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 4
            object DBText5: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'CUSTOTOTALMODELO'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
            object Label7: TLabel
              Left = 6
              Top = 0
              Width = 172
              Height = 24
              Caption = 'Custo Total Modelo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 310
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 5
            object DBText6: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORVENDAAVISTA'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
            object Label8: TLabel
              Left = 6
              Top = 0
              Width = 130
              Height = 24
              Caption = 'Vender '#192' Vista:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object Panel4: TPanel
            Left = 0
            Top = 485
            Width = 219
            Height = 62
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 6
            object Label5: TLabel
              Left = 6
              Top = 8
              Width = 183
              Height = 24
              Caption = 'M'#227'o de Obra Externa:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object DBText3: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORMAOOBRAEXTERNA'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitLeft = 128
              ExplicitTop = 32
              ExplicitWidth = 65
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 124
            Width = 219
            Height = 62
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 7
            object DBText7: TDBText
              Left = 0
              Top = 45
              Width = 219
              Height = 17
              Align = alBottom
              Alignment = taRightJustify
              DataField = 'VALORMAOOBRAAJUSTADO'
              DataSource = DataSource1
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ExplicitTop = 39
            end
            object Label9: TLabel
              Left = 6
              Top = 0
              Width = 191
              Height = 24
              Caption = 'M'#227'o de Obra Ajustado:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    inherited tsSearch: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1328
      ExplicitHeight = 605
      inherited pSearch: TPanel
        Width = 1328
        ExplicitWidth = 1328
        inherited rgChoice: TRadioGroup
          Width = 225
          Columns = 2
          Items.Strings = (
            'Id Custo'
            'Id Modelo'
            'Id Markup'
            'Nome Modelo'
            'Nome Markup'
            'Operador')
          ExplicitWidth = 225
        end
        inherited gbBetweenDates: TGroupBox
          Left = 225
          Width = 232
          Visible = False
          ExplicitLeft = 225
          ExplicitWidth = 232
          inherited lStart: TLabel
            Left = 4
            Top = 18
            ExplicitLeft = 4
            ExplicitTop = 18
          end
          inherited lEnd: TLabel
            Left = 120
            Top = 18
            ExplicitLeft = 120
            ExplicitTop = 18
          end
          inherited StartDate: TDateTimePicker
            Left = 4
            Top = 37
            ExplicitLeft = 4
            ExplicitTop = 37
          end
          inherited EndDate: TDateTimePicker
            Left = 120
            Top = 37
            ExplicitLeft = 120
            ExplicitTop = 37
          end
        end
        inherited pFiltro: TPanel
          Left = 457
          Width = 871
          ExplicitLeft = 457
          ExplicitWidth = 871
          inherited lDigiteConformeEscolha: TLabel
            Width = 871
          end
          inherited edtSearch: TEdit
            Width = 871
            ExplicitWidth = 871
          end
          inherited btnImprimir: TBitBtn
            Left = 189
            Width = 116
            OnClick = btnImprimirClick
            ExplicitLeft = 189
            ExplicitWidth = 116
          end
          object btnRecalcularCusto: TBitBtn
            Left = 703
            Top = 0
            Width = 168
            Height = 28
            Align = alRight
            Caption = 'Recalcular Custo'
            TabOrder = 2
            OnClick = btnRecalcularCustoClick
          end
          object rbEscolhaTipoImpressao: TRadioGroup
            Left = 0
            Top = 0
            Width = 189
            Height = 28
            Align = alLeft
            Caption = 'Escolha tipo de impress'#227'o'
            Columns = 2
            ItemIndex = 1
            Items.Strings = (
              'Todos'
              'Espec'#237'fico')
            TabOrder = 3
          end
        end
      end
      inherited dbgSearch: TDBGrid
        Width = 1328
        Height = 193
        Align = alTop
        DataSource = DataSource1
        OnCellClick = dbgSearchCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Custo:'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDMODELO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Modelo:'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Modelo:'
            Width = 215
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IDREGIAO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Regi'#227'o:'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEREGIAO'
            Title.Caption = 'Markup/Nome Regi'#227'o:'
            Width = 176
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORDESPESAFIXA'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Despesa Fixa:'
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORFICHATECNICA'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Ficha T'#233'cnica:'
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORMAOOBRAINTERNA'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ M'#227'o de Obra Interna:'
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORMAOOBRAEXTERNA'
            Title.Alignment = taRightJustify
            Title.Caption = 'M'#227'o de Obra Externa:'
            Width = 116
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDEPRODUCAO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Qtde Produ'#231#227'o:'
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOMODELODESPESAFIXA'
            Title.Caption = 'Custo Despesa Fixa:'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUSTOTOTALMODELO'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Custo Modelo MODF:'
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAMARKUP'
            Title.Alignment = taRightJustify
            Title.Caption = '% Markup C/Lucro:'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQUOTAMARKUPSEMLUCRO'
            Title.Alignment = taRightJustify
            Title.Caption = '% Markup S/Lucro:'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORCUSTOMARKUP'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Custo Markup:'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORCUSTOCOMMARKUP'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Custo + Markup:'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORVENDAAVISTA'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Vender '#224' Vista:'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORLUCROREAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'R$ Lucro Real:'
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDICEAVISTAMULTIPLICAR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Iindice '#224' Vista X:'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INDICEAVISTADIVIDIR'
            Title.Alignment = taRightJustify
            Title.Caption = 'Iindice '#224' Vista /:'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATALANCAMENTO'
            Title.Caption = 'Data Lan'#231'amento:'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OPERADOR'
            Title.Caption = 'Operador:'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Alignment = taRightJustify
            Title.Caption = 'Status:'
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Ativo:'
            Width = 39
            Visible = True
          end>
      end
      object dbgMarkup: TDBGrid
        Left = 0
        Top = 300
        Width = 1328
        Height = 305
        Align = alClient
        DataSource = dsMarkup
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = dbgMarkupDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Id Custo:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeMarkup'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Caption = 'Nome Markup'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 505
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valorvendaavista'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Venda:'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'valorfichatecnica'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor Ficha T'#233'cnica:'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'aliquota'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Aliquota%:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'Valor individual markup:'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 169
            Visible = True
          end>
      end
      object Panel13: TPanel
        Left = 0
        Top = 277
        Width = 1328
        Height = 23
        Align = alTop
        Color = 5592405
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        object lValorVenda: TLabel
          Left = 1
          Top = 1
          Width = 70
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Valor Venda:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object lvalorfichatecnica: TLabel
          Left = 715
          Top = 1
          Width = 124
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Markup+Ficha T'#233'cnia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object Label11: TLabel
          Left = 155
          Top = 1
          Width = 106
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Valor ficha t'#233'cnica:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object lMarkupSemLucro: TLabel
          Left = 528
          Top = 1
          Width = 107
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Markup sem Lucro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object Label13: TLabel
          Left = 341
          Top = 1
          Width = 107
          Height = 21
          Margins.Left = 10
          Margins.Top = 10
          Margins.Right = 10
          Margins.Bottom = 10
          Align = alLeft
          Caption = 'Markup com Lucro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitHeight = 13
        end
        object dbValorVenda: TDBEdit
          Left = 71
          Top = 1
          Width = 80
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          Color = clInactiveCaption
          DataField = 'valorvendaavista'
          DataSource = dsMarkup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 24
        end
        object dbvalorfichatecnica: TDBEdit
          Left = 261
          Top = 1
          Width = 80
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          Color = clInactiveCaption
          DataField = 'valorfichatecnica'
          DataSource = dsMarkup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          ExplicitHeight = 24
        end
        object Panel14: TPanel
          Left = 151
          Top = 1
          Width = 4
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
        end
        object dbValorMarkupFichaTenica: TDBEdit
          Left = 839
          Top = 1
          Width = 80
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          Color = clInactiveCaption
          DataField = 'valorfichatecnicamarkup'
          DataSource = dsMarkup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          ExplicitHeight = 24
        end
        object dbValorMarkupComLucro: TDBEdit
          Left = 448
          Top = 1
          Width = 80
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          Color = clInactiveCaption
          DataField = 'valormarkupcomlucro'
          DataSource = dsMarkup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          ExplicitHeight = 24
        end
        object dbMarkupSemLucro: TDBEdit
          Left = 635
          Top = 1
          Width = 80
          Height = 21
          Align = alLeft
          BevelOuter = bvNone
          Color = clInactiveCaption
          DataField = 'valormarkupsemlucro'
          DataSource = dsMarkup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          ExplicitHeight = 24
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 260
        Width = 1328
        Height = 17
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Soma Markup/'#8235'Ficha t'#233'cnica'
        Color = 1543167
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 960
    Top = 496
  end
  inherited DataSource1: TDataSource
    DataSet = dmPrincipal.cdsMontarCusto
    Left = 840
    Top = 512
  end
  object dsSomaMarkup: TDataSource
    Left = 920
    Top = 400
  end
  object ppdbTabelaPrazoMedio: TppDBPipeline
    DataSource = dmPrincipal.dsListaTabelaPrazoMedio
    UserName = 'dbTabelaPrazoMedio'
    Left = 448
    Top = 376
  end
  object pprTabelaPrazoMedio: TppReport
    AutoStop = False
    DataPipeline = ppdbTabelaPrazoMedio
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = pprTabelaPrazoMedioBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 449
    Top = 423
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbTabelaPrazoMedio'
    object ppHeaderBand13: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer13
        UserName = 'Shape2'
        mmHeight = 11639
        mmLeft = 2646
        mmTop = 1323
        mmWidth = 193146
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable25: TppSystemVariable
        DesignLayer = ppDesignLayer13
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4234
        mmLeft = 4498
        mmTop = 2910
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground11
      end
      object pplListagemTabelaPrazoMedio: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Listagem de'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 81756
        mmTop = 2910
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground11
      end
      object pplEmpresaListagemPrazoMedio: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'lNomeEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 7673
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground11
      end
      object ppSystemVariable26: TppSystemVariable
        DesignLayer = ppDesignLayer13
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 158221
        mmTop = 2910
        mmWidth = 34660
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine52: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 2646
        mmTop = 14817
        mmWidth = 193147
        BandType = 0
        LayerName = Foreground11
      end
      object ppLine53: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line20'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1584
        mmLeft = 134938
        mmTop = 20902
        mmWidth = 60854
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel133: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = 'Prazo M'#233'dio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 140759
        mmTop = 16404
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground11
      end
      object ppLabel136: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label136'
        Border.mmPadding = 0
        Caption = 'R$ Prazo M'#233'dio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 168275
        mmTop = 16403
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground11
      end
    end
    object ppDetailBand13: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppDBText102: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'PRAZOMEDIO'
        DataPipeline = ppdbTabelaPrazoMedio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbTabelaPrazoMedio'
        mmHeight = 4498
        mmLeft = 30956
        mmTop = 265
        mmWidth = 132027
        BandType = 4
        LayerName = Foreground11
      end
      object ppDBText104: TppDBText
        DesignLayer = ppDesignLayer13
        UserName = 'DBText104'
        Border.mmPadding = 0
        DataField = 'VALORVENDAPRAZOMEDIO'
        DataPipeline = ppdbTabelaPrazoMedio
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbTabelaPrazoMedio'
        mmHeight = 4498
        mmLeft = 178594
        mmTop = 265
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground11
      end
      object ppLine55: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line55'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1054
        mmLeft = 134938
        mmTop = 5025
        mmWidth = 60854
        BandType = 4
        LayerName = Foreground11
      end
    end
    object ppFooterBand13: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object ppLabel137: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'lDesenvolvidopor'
        Border.mmPadding = 0
        Caption = 'Desenvolvido por -> '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1588
        mmWidth = 34396
        BandType = 8
        LayerName = Foreground11
      end
      object pplSiteListagemPrazoMedio: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'lSiteEmpresa'
        Border.mmPadding = 0
        Caption = 'lSiteEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 39158
        mmTop = 1588
        mmWidth = 31485
        BandType = 8
        LayerName = Foreground11
      end
      object ppLine54: TppLine
        DesignLayer = ppDesignLayer13
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 4
        Visible = False
        Weight = 3.000000000000000000
        mmHeight = 1323
        mmLeft = 128588
        mmTop = 529
        mmWidth = 67998
        BandType = 8
        LayerName = Foreground11
      end
      object ppLabel139: TppLabel
        DesignLayer = ppDesignLayer13
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Qtde Registro(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 4234
        mmLeft = 130704
        mmTop = 1588
        mmWidth = 27517
        BandType = 8
        LayerName = Foreground11
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'MODELO'
      DataPipeline = ppdbTabelaPrazoMedio
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbTabelaPrazoMedio'
      NewFile = False
      object ppGroupHeaderBand7: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
        object ppLabel106: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label106'
          Border.mmPadding = 0
          Caption = 'Modelo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 794
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBText100: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText100'
          Border.mmPadding = 0
          DataField = 'MODELO'
          DataPipeline = ppdbTabelaPrazoMedio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbTabelaPrazoMedio'
          mmHeight = 4498
          mmLeft = 21960
          mmTop = 794
          mmWidth = 110067
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppLine56: TppLine
          DesignLayer = ppDesignLayer13
          UserName = 'Line56'
          Border.mmPadding = 0
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1584
          mmLeft = 7144
          mmTop = 5821
          mmWidth = 188648
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppLabel135: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label135'
          Border.mmPadding = 0
          Caption = 'R$ '#192' Vista:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 134938
          mmTop = 794
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
        object ppDBText103: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText103'
          Border.mmPadding = 0
          DataField = 'VALORVENDAAVISTA'
          DataPipeline = ppdbTabelaPrazoMedio
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbTabelaPrazoMedio'
          mmHeight = 4498
          mmLeft = 178594
          mmTop = 529
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground11
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'MARKUP'
      DataPipeline = ppdbTabelaPrazoMedio
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppdbTabelaPrazoMedio'
      NewFile = False
      object ppGroupHeaderBand8: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppDBText101: TppDBText
          DesignLayer = ppDesignLayer13
          UserName = 'DBText101'
          Border.mmPadding = 0
          DataField = 'MARKUP'
          DataPipeline = ppdbTabelaPrazoMedio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppdbTabelaPrazoMedio'
          mmHeight = 4498
          mmLeft = 38079
          mmTop = -1
          mmWidth = 46038
          BandType = 3
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppLabel108: TppLabel
          DesignLayer = ppDesignLayer13
          UserName = 'Label108'
          Border.mmPadding = 0
          Caption = 'Markup:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 4233
          mmLeft = 21960
          mmTop = 264
          mmWidth = 13494
          BandType = 3
          GroupNo = 1
          LayerName = Foreground11
        end
        object ppLine57: TppLine
          DesignLayer = ppDesignLayer13
          UserName = 'Line57'
          Border.mmPadding = 0
          Pen.Width = 2
          Weight = 1.500000000000000000
          mmHeight = 1319
          mmLeft = 21960
          mmTop = 5291
          mmWidth = 104775
          BandType = 3
          GroupNo = 1
          LayerName = Foreground11
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers13: TppDesignLayers
      object ppDesignLayer13: TppDesignLayer
        UserName = 'Foreground11'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList13: TppParameterList
    end
  end
  object dsMarkup: TDataSource
    DataSet = mtMarkup
    Left = 680
    Top = 552
  end
  object mtMarkup: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'NomeMarkup'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'valorvendaavista'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'valorfichatecnica'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'aliquota'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'valor'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'valormarkupcomlucro'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'valorfichatecnicamarkup'
        DataType = ftCurrency
        Precision = 19
      end
      item
        Name = 'status'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 576
    Top = 552
    object mtMarkupidmontarcusto: TIntegerField
      FieldName = 'id'
    end
    object mtMarkupNomeMarkup: TStringField
      FieldName = 'NomeMarkup'
      Size = 60
    end
    object mtMarkupvalorvendaavista: TCurrencyField
      Tag = 2
      FieldName = 'valorvendaavista'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mtMarkupvalorfichatecnica: TCurrencyField
      FieldName = 'valorfichatecnica'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mtMarkupaliquota: TCurrencyField
      FieldName = 'aliquota'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00%'
    end
    object mtMarkupvalor: TCurrencyField
      FieldName = 'valor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mtMarkupvalormarkupcomlucro: TCurrencyField
      FieldName = 'valormarkupcomlucro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mtMarkupvalorfichatecnicamarkup: TCurrencyField
      FieldName = 'valorfichatecnicamarkup'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object mtMarkupstatus: TIntegerField
      FieldName = 'status'
    end
    object mtMarkupvalormarkupsemlucro: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'valormarkupsemlucro'
      Calculated = True
    end
  end
  object DataSource2: TDataSource
    Left = 840
    Top = 448
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 592
    Top = 464
  end
  object pprCustoAnalitico: TppReport
    AutoStop = False
    DataPipeline = ppdbMarkup
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = pprCustoAnaliticoBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 352
    Top = 552
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppdbMarkup'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17992
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        mmHeight = 11639
        mmLeft = 2646
        mmTop = 1323
        mmWidth = 193146
        BandType = 0
        LayerName = Foreground
      end
      object pplCustoModelo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lCustoModelo'
        Border.mmPadding = 0
        Caption = 'Custo do modelo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 78052
        mmTop = 2910
        mmWidth = 28311
        BandType = 0
        LayerName = Foreground
      end
      object pplEmpresa: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lEmpresa'
        Border.mmPadding = 0
        Caption = 'lNomeEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 61119
        mmTop = 7673
        mmWidth = 60325
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label51'
        Border.mmPadding = 0
        Caption = 'Id Markup:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 4513
        mmTop = 13754
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label52'
        Border.mmPadding = 0
        Caption = 'Modelo do produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4234
        mmLeft = 23018
        mmTop = 13754
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = 'Valor  Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 173567
        mmTop = 13758
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label55'
        Border.mmPadding = 0
        Caption = 'Data cadastro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 3175
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label56'
        Border.mmPadding = 0
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 138642
        mmTop = 3175
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = 'Valor ficha t'#233'cnica:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 133879
        mmTop = 13758
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'DATALANCAMENTO'
        DataPipeline = ppdbCustoAnalitico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdbCustoAnalitico'
        mmHeight = 4498
        mmLeft = 27517
        mmTop = 3175
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'OPERADOR'
        DataPipeline = ppdbCustoAnalitico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppdbCustoAnalitico'
        mmHeight = 4498
        mmLeft = 160073
        mmTop = 3175
        mmWidth = 34396
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5007
        mmLeft = 2646
        mmTop = 12702
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 190500
        mmTop = 12682
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppdbNomeMarkup: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbNomeMarkup'
        Border.mmPadding = 0
        DataField = 'NomeMarkup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4498
        mmLeft = 4498
        mmTop = 1058
        mmWidth = 63500
        BandType = 4
        LayerName = Foreground
      end
      object ppdbAliquota: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbAliquota'
        Border.mmPadding = 0
        DataField = 'aliquota'
        DataPipeline = ppdbMarkup
        DisplayFormat = '0.00 %'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMarkup'
        mmHeight = 4498
        mmLeft = 69579
        mmTop = 794
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppdbValorMarkup: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbValorMarkup'
        Border.mmPadding = 0
        DataField = 'valor'
        DataPipeline = ppdbMarkup
        DisplayFormat = '#,0.000;(#,0.000)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdbMarkup'
        mmHeight = 4498
        mmLeft = 83600
        mmTop = 794
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 2646
        mmTop = 6615
        mmWidth = 111625
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 2646
        mmTop = -270
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7409
        mmLeft = 109269
        mmTop = -270
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9793
        mmLeft = 190501
        mmTop = -1065
        mmWidth = 5291
        BandType = 4
        LayerName = Foreground
      end
      object ppdbStatus: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'dbStatus'
        Border.mmPadding = 0
        DataField = 'status'
        DataPipeline = ppdbMarkup
        DisplayFormat = '#,0.000;(#,0.000)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        Visible = False
        DataPipelineName = 'ppdbMarkup'
        mmHeight = 4498
        mmLeft = 116681
        mmTop = 1323
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6085
      mmPrintPosition = 0
      object pplDesenvolvidopor: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lDesenvolvidopor'
        Border.mmPadding = 0
        Caption = 'Desenvolvido por -> '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 1588
        mmWidth = 34396
        BandType = 8
        LayerName = Foreground
      end
      object pplSiteEmpresa: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lSiteEmpresa'
        Border.mmPadding = 0
        Caption = 'lSiteEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 1588
        mmWidth = 31485
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 1588
        mmWidth = 34660
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppdbIdMarkup'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 14023
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'IDMODELO'
          DataPipeline = ppdbCustoAnalitico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbCustoAnalitico'
          mmHeight = 4498
          mmLeft = 23018
          mmTop = 1058
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'DESCRICAO'
          DataPipeline = ppdbCustoAnalitico
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppdbCustoAnalitico'
          mmHeight = 4498
          mmLeft = 36248
          mmTop = 1058
          mmWidth = 92604
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppdbIdMarkup: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbIdMarkup'
          Border.mmPadding = 0
          DataField = 'id'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4498
          mmLeft = 14038
          mmTop = 1058
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Border.mmPadding = 0
          DataField = 'valorvendaavista'
          DataPipeline = ppdbMarkup
          DisplayFormat = '#,0.000;(#,0.000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16737843
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMarkup'
          mmHeight = 4498
          mmLeft = 165100
          mmTop = 1058
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppdbValorFichaTecnica: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbValorFichaTecnica'
          Border.mmPadding = 0
          DataField = 'valorfichatecnica'
          DataPipeline = ppdbMarkup
          DisplayFormat = '#,0.000;(#,0.000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMarkup'
          mmHeight = 4498
          mmLeft = 135202
          mmTop = 1058
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label3'
          Border.mmPadding = 0
          Caption = 'Aliquota'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 69579
          mmTop = 9260
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label4'
          Border.mmPadding = 0
          Caption = 'Valor Markup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 88892
          mmTop = 9260
          mmWidth = 20373
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 2646
          mmTop = 6615
          mmWidth = 111262
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 14817
          mmLeft = 2646
          mmTop = -1058
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine7: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line7'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 6879
          mmLeft = 109269
          mmTop = 6893
          mmWidth = 5292
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line11'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 17727
          mmLeft = 190501
          mmTop = -1058
          mmWidth = 5291
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 28840
        mmPrintPosition = 0
        object ppdbValorMarkupComLucro: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbValorMarkupComLucro'
          Border.mmPadding = 0
          DataField = 'valormarkupcomlucro'
          DataPipeline = ppdbMarkup
          DisplayFormat = '#,0.000;(#,0.000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMarkup'
          mmHeight = 4498
          mmLeft = 83071
          mmTop = 529
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          Border.mmPadding = 0
          Caption = 'Markup com Lucro ----->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 35719
          mmTop = 794
          mmWidth = 39687
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppdbValorFichaTecnicaComMarkup: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbValorFichaTecnicaComMarkup'
          Border.mmPadding = 0
          DataField = 'valorfichatecnicamarkup'
          DataPipeline = ppdbMarkup
          DisplayFormat = '#,0.000;(#,0.000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMarkup'
          mmHeight = 4498
          mmLeft = 170392
          mmTop = 529
          mmWidth = 24077
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label2'
          Border.mmPadding = 0
          Caption = 'Soma ficha t'#233'cnica + markup ----->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4234
          mmLeft = 111664
          mmTop = 529
          mmWidth = 57680
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 32808
          mmTop = 7409
          mmWidth = 162719
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine8: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line8'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpLeft
          Weight = 0.750000000000000000
          mmHeight = 18809
          mmLeft = 32808
          mmTop = -1592
          mmWidth = 2894
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine10: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line10'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 7673
          mmLeft = 190500
          mmTop = 265
          mmWidth = 5291
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.mmPadding = 0
          Caption = 'Markup sem Lucro ----->'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 35983
          mmTop = 10319
          mmWidth = 39423
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppdbValorMarkupSemLucro: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'dbValorMarkupSemLucro'
          Border.mmPadding = 0
          DataField = 'valormarkupsemlucro'
          DataPipeline = ppdbMarkup
          DisplayFormat = '#,0.000;(#,0.000)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppdbMarkup'
          mmHeight = 4498
          mmLeft = 83865
          mmTop = 10319
          mmWidth = 25400
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine14: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line14'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpBottom
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 32808
          mmTop = 15365
          mmWidth = 81099
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line101'
          Border.mmPadding = 0
          Pen.Style = psDot
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8733
          mmLeft = 109273
          mmTop = 8484
          mmWidth = 5292
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppdbCustoAnalitico: TppDBPipeline
    UserName = 'dbCustoAnalitico'
    Left = 461
    Top = 554
  end
  object ppdbMarkup: TppDBPipeline
    DataSource = dsMarkup
    UserName = 'dbMarkup'
    Left = 464
    Top = 608
    object ppdbMarkupppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'id'
      FieldName = 'id'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppdbMarkupppField2: TppField
      FieldAlias = 'NomeMarkup'
      FieldName = 'NomeMarkup'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppdbMarkupppField3: TppField
      FieldAlias = 'valorvendaavista'
      FieldName = 'valorvendaavista'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object ppdbMarkupppField4: TppField
      FieldAlias = 'valorfichatecnica'
      FieldName = 'valorfichatecnica'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object ppdbMarkupppField5: TppField
      FieldAlias = 'aliquota'
      FieldName = 'aliquota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppdbMarkupppField6: TppField
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppdbMarkupppField7: TppField
      FieldAlias = 'valormarkupcomlucro'
      FieldName = 'valormarkupcomlucro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object ppdbMarkupppField8: TppField
      FieldAlias = 'valorfichatecnicamarkup'
      FieldName = 'valorfichatecnicamarkup'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object ppdbMarkupppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'status'
      FieldName = 'status'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppdbMarkupppField10: TppField
      FieldAlias = 'valormarkupsemlucro'
      FieldName = 'valormarkupsemlucro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
  end
end
