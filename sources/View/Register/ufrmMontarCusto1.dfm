inherited frmMontarCusto1: TfrmMontarCusto1
  Caption = 'Custo final'
  ClientHeight = 749
  ClientWidth = 1092
  ExplicitWidth = 1108
  ExplicitHeight = 788
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel2: TPanel
    Width = 1092
    ExplicitWidth = 1092
    inherited lTextoEmpresa: TLabel
      Width = 88
      Height = 23
    end
    inherited pOperator: TPanel
      Left = 972
      ExplicitLeft = 972
      inherited lOperator: TLabel
        Width = 66
      end
    end
  end
  inherited pButtons: TPanel
    Top = 698
    Width = 1092
    ExplicitTop = 698
    ExplicitWidth = 1092
    inherited Panel4: TPanel
      Left = 874
      ExplicitLeft = 874
      inherited lSite: TLabel
        Width = 12
      end
      inherited Navigator: TDBNavigator
        Hints.Strings = ()
      end
    end
    inherited rgActive: TRadioGroup
      Left = 810
      ExplicitLeft = 810
    end
  end
  inherited Panel1: TPanel
    Width = 1092
    Height = 657
    ExplicitWidth = 1092
    ExplicitHeight = 657
    inherited pgMain: TPageControl
      Width = 1092
      Height = 657
      ExplicitWidth = 1092
      ExplicitHeight = 657
      inherited tsRegister: TTabSheet
        ExplicitWidth = 1084
        ExplicitHeight = 629
        inherited pGrid: TPanel
          Width = 1084
          Height = 629
          ExplicitWidth = 1084
          ExplicitHeight = 629
          inherited pEdit: TPanel
            Width = 1082
            Height = 49
            ExplicitWidth = 1082
            ExplicitHeight = 49
            inherited LId: TLabel
              Left = 7
              Width = 64
              Caption = 'Primary Key :'
              ExplicitLeft = 7
              ExplicitWidth = 64
            end
            inherited lDescricao: TLabel
              Width = 51
              Caption = 'Id Modelo:'
              ExplicitWidth = 51
            end
            object Label8: TLabel [3]
              Left = 475
              Top = 6
              Width = 112
              Height = 13
              Caption = 'Qtde Produ'#231#227'o Mensal:'
            end
            object lModel: TLabel [4]
              Left = 255
              Top = 29
              Width = 12
              Height = 13
              Caption = '...'
            end
            object Label1: TLabel [5]
              Left = 255
              Top = 6
              Width = 68
              Height = 13
              Caption = 'Nome Modelo:'
            end
            object lIdMarkup: TLabel [6]
              Left = 593
              Top = 6
              Width = 52
              Height = 13
              Caption = 'Id Markup:'
            end
            object lNomeMarkup: TLabel [7]
              Left = 650
              Top = 6
              Width = 69
              Height = 13
              Caption = 'Nome Markup:'
            end
            object lCaptionNomeMarkup: TLabel [8]
              Left = 650
              Top = 29
              Width = 12
              Height = 13
              Caption = '...'
            end
            inherited edtDescription: TEdit
              Width = 51
              Alignment = taRightJustify
              OnExit = edtDescriptionExit
              ExplicitWidth = 51
            end
            object edtQtdeProducao: TEdit
              Left = 475
              Top = 24
              Width = 112
              Height = 21
              Alignment = taRightJustify
              Color = 5898239
              TabOrder = 3
            end
            object edtIdMarkup: TEdit
              Left = 593
              Top = 24
              Width = 51
              Height = 21
              Alignment = taRightJustify
              TabOrder = 4
              OnExit = edtIdMarkupExit
            end
            object Panel13: TPanel
              Left = 879
              Top = 1
              Width = 202
              Height = 47
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 5
              object Label2: TLabel
                Left = 2
                Top = 6
                Width = 72
                Height = 13
                Alignment = taRightJustify
                Caption = 'Soma Aliquota:'
              end
              object lSomaAliquota: TLabel
                Left = 62
                Top = 29
                Width = 12
                Height = 13
                Alignment = taRightJustify
                Caption = '...'
              end
              object Label4: TLabel
                Left = 101
                Top = 6
                Width = 101
                Height = 13
                Alignment = taRightJustify
                Caption = 'Indice venda '#224' vista:'
              end
              object lIndiceaVista: TLabel
                Left = 190
                Top = 29
                Width = 12
                Height = 13
                Alignment = taRightJustify
                Caption = '...'
              end
            end
          end
          inherited Panel9: TPanel
            Top = 50
            Width = 1082
            Height = 578
            BevelOuter = bvNone
            ExplicitTop = 50
            ExplicitWidth = 1082
            ExplicitHeight = 578
            object Panel3: TPanel
              Left = 849
              Top = 0
              Width = 233
              Height = 578
              Align = alRight
              BevelOuter = bvNone
              Color = clMedGray
              ParentBackground = False
              TabOrder = 0
              object Panel5: TPanel
                Left = 0
                Top = 532
                Width = 233
                Height = 46
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 0
                object Label3: TLabel
                  Left = 119
                  Top = 0
                  Width = 114
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Pre'#231'o de venda '#224' vista:'
                end
                object lCaptionValorVendaaVista: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 486
                Width = 233
                Height = 46
                Align = alBottom
                BevelOuter = bvNone
                TabOrder = 1
                object Label5: TLabel
                  Left = 40
                  Top = 0
                  Width = 193
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Indice para venda '#224' vista x Valor Custo:'
                end
                object lCaptionIndicevendaaVista: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 220
                Width = 233
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
                object lCustoModeloDespesaFixaMateriaPrima: TLabel
                  Left = 9
                  Top = 0
                  Width = 224
                  Height = 13
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = 'Custo do Modelo Despesa Fixa+Mat'#233'ria Prima:'
                end
                object lCaptionCustoModeloDespesaFixaMateriaPrima: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel10: TPanel
                Left = 0
                Top = 92
                Width = 233
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 3
                object lCustoModeloMateriaPrima: TLabel
                  Left = 81
                  Top = 0
                  Width = 152
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Custo do Modelo Mat'#233'ria Prima:'
                end
                object lCaptionCustoModeloMateriaPrima: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel11: TPanel
                Left = 0
                Top = 46
                Width = 233
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 4
                object lCaptioCustoModeloDespesaFixa: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
                object lCustoModeloDespesaFixa: TLabel
                  Left = 82
                  Top = 0
                  Width = 151
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Custo do Modelo Despesa Fixa:'
                end
              end
              object Panel12: TPanel
                Left = 0
                Top = 0
                Width = 233
                Height = 46
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 5
                object lDespesaFixa: TLabel
                  Left = 165
                  Top = 0
                  Width = 68
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Despesa Fixa:'
                end
                object lCaptionDespesaFixa: TLabel
                  Left = 221
                  Top = 24
                  Width = 12
                  Height = 22
                  Align = alBottom
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel26: TPanel
                Left = 0
                Top = 138
                Width = 233
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 6
                object Label6: TLabel
                  Left = 48
                  Top = 0
                  Width = 185
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'M'#227'o de Obra Interna/externa e Frete:'
                end
                object lValorFrete: TLabel
                  Left = 47
                  Top = 13
                  Width = 12
                  Height = 22
                  Align = alLeft
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
                object lValorMaoObra: TLabel
                  Left = 221
                  Top = 13
                  Width = 12
                  Height = 22
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
                object Label7: TLabel
                  Left = 0
                  Top = 13
                  Width = 47
                  Height = 22
                  Align = alLeft
                  Caption = 'Frete:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
                object Label9: TLabel
                  Left = 137
                  Top = 13
                  Width = 84
                  Height = 22
                  Align = alRight
                  Caption = 'M'#227'o Obra:'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel27: TPanel
                Left = 0
                Top = 179
                Width = 233
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 7
                object Label10: TLabel
                  Left = 30
                  Top = 0
                  Width = 203
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Custo M'#227'o Obra Interna/Externa + Frete:'
                end
                object lCustoMaoObraFrete: TLabel
                  Left = 221
                  Top = 13
                  Width = 12
                  Height = 22
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
              object Panel28: TPanel
                Left = 0
                Top = 266
                Width = 233
                Height = 41
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 8
                object Label11: TLabel
                  Left = 173
                  Top = 0
                  Width = 60
                  Height = 13
                  Align = alTop
                  Alignment = taRightJustify
                  Caption = 'Custo Geral:'
                end
                object lCustoFinal: TLabel
                  Left = 221
                  Top = 13
                  Width = 12
                  Height = 22
                  Align = alRight
                  Alignment = taRightJustify
                  Caption = '...'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -19
                  Font.Name = 'Bell MT'
                  Font.Style = []
                  ParentFont = False
                end
              end
            end
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 849
              Height = 578
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              object Panel18: TPanel
                Left = 0
                Top = 0
                Width = 849
                Height = 578
                Align = alClient
                TabOrder = 0
                object Panel24: TPanel
                  Left = 1
                  Top = 1
                  Width = 847
                  Height = 576
                  Align = alClient
                  TabOrder = 0
                  object DBGrid1: TDBGrid
                    Left = 1
                    Top = 134
                    Width = 845
                    Height = 441
                    Align = alClient
                    DataSource = dsTabelaPreco
                    ReadOnly = True
                    TabOrder = 0
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDrawColumnCell = dbgTabelaPrecoDrawColumnCell
                    Columns = <
                      item
                        Alignment = taRightJustify
                        Expanded = False
                        FieldName = 'PrazoMedio'
                        Title.Alignment = taRightJustify
                        Visible = True
                      end
                      item
                        Alignment = taRightJustify
                        Expanded = False
                        FieldName = 'ValorVendaPrazoMedio'
                        Title.Alignment = taRightJustify
                        Title.Caption = 'Valor Venda Prazo M'#233'dio:'
                        Width = 140
                        Visible = True
                      end>
                  end
                  object Panel25: TPanel
                    Left = 1
                    Top = 1
                    Width = 845
                    Height = 108
                    Align = alTop
                    BevelOuter = bvNone
                    TabOrder = 1
                    object DBGrid2: TDBGrid
                      Left = 0
                      Top = 0
                      Width = 845
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
                      OnDrawColumnCell = dbgMontaCustoDrawColumnCell
                      Columns = <
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'ID'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'ID:'
                          Width = 34
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'Markup'
                          Width = 102
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'Modelo'
                          Width = 124
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'AliquotaMarkup'
                          Title.Alignment = taRightJustify
                          Title.Caption = '% Markup:'
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'valordespesafixa'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Despesa Fixa:'
                          Width = 74
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'qtdeproducao'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Produ'#231#227'o:'
                          Width = 58
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'customodelodespesafixa'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Custo c/Despesa Fixa:'
                          Width = 115
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'valorfichatecnica'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Ficha T'#233'cnica:'
                          Width = 78
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'custototalmodelo'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Custo Total Modelo:'
                          Width = 106
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'indiceavistamultiplicar'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Indice Venda '#224' vista:'
                          Width = 109
                          Visible = True
                        end
                        item
                          Alignment = taRightJustify
                          Expanded = False
                          FieldName = 'Valorvendaavista'
                          Title.Alignment = taRightJustify
                          Title.Caption = 'Valor Venda '#224' Vista:'
                          Width = 107
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'DataLancamento'
                          Title.Alignment = taCenter
                          Title.Caption = 'Data Lan'#231'amento:'
                          Width = 97
                          Visible = True
                        end>
                    end
                  end
                  object Panel23: TPanel
                    Left = 1
                    Top = 109
                    Width = 845
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
                    TabOrder = 2
                    object DBNavigator2: TDBNavigator
                      Left = 121
                      Top = 0
                      Width = 206
                      Height = 25
                      DataSource = dsTabelaPreco
                      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
                      Align = alLeft
                      TabOrder = 0
                    end
                    object BitBtn3: TBitBtn
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
                  end
                end
              end
            end
          end
        end
      end
      inherited tsSearch: TTabSheet
        ExplicitWidth = 1084
        ExplicitHeight = 629
        inherited pSearch: TPanel
          Width = 1084
          ExplicitWidth = 1084
          inherited Panel6: TPanel
            Width = 659
            ExplicitWidth = 659
            inherited lDigiteConformeEscolha: TLabel
              Width = 158
            end
            inherited edtSearch: TEdit
              Width = 657
              ExplicitWidth = 657
            end
          end
        end
        inherited dbgSearch: TDBGrid
          Top = 119
          Width = 350
          Height = 298
          Align = alNone
          Visible = False
          Columns = <
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'id'
              Title.Alignment = taRightJustify
              Title.Caption = 'ID:'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AliquotaNome'
              Title.Caption = 'Nome Aliquota:'
              Width = 206
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Aliquota'
              Title.Alignment = taRightJustify
              Width = 73
              Visible = True
            end>
        end
        object Panel15: TPanel
          Left = 0
          Top = 67
          Width = 1084
          Height = 166
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          object dbgMontaCusto: TDBGrid
            Left = 0
            Top = 0
            Width = 1084
            Height = 166
            Align = alClient
            DataSource = DataSource1
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = dbgMontaCustoDrawColumnCell
            Columns = <
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'ID'
                Title.Alignment = taRightJustify
                Title.Caption = 'ID:'
                Width = 34
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Markup'
                Width = 102
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Modelo'
                Width = 124
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'AliquotaMarkup'
                Title.Alignment = taRightJustify
                Title.Caption = '% Markup:'
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'valordespesafixa'
                Title.Alignment = taRightJustify
                Title.Caption = 'Despesa Fixa:'
                Width = 74
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'qtdeproducao'
                Title.Alignment = taRightJustify
                Title.Caption = 'Produ'#231#227'o:'
                Width = 58
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'customodelodespesafixa'
                Title.Alignment = taRightJustify
                Title.Caption = 'Custo c/Despesa Fixa:'
                Width = 115
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'valorfichatecnica'
                Title.Alignment = taRightJustify
                Title.Caption = 'Ficha T'#233'cnica:'
                Width = 78
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'custototalmodelo'
                Title.Alignment = taRightJustify
                Title.Caption = 'Custo Total Modelo:'
                Width = 106
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'indiceavistamultiplicar'
                Title.Alignment = taRightJustify
                Title.Caption = 'Indice Venda '#224' vista:'
                Width = 109
                Visible = True
              end
              item
                Alignment = taRightJustify
                Expanded = False
                FieldName = 'Valorvendaavista'
                Title.Alignment = taRightJustify
                Title.Caption = 'Valor Venda '#224' Vista:'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DataLancamento'
                Title.Alignment = taCenter
                Title.Caption = 'Data Lan'#231'amento:'
                Width = 97
                Visible = True
              end>
          end
        end
        object Panel19: TPanel
          Left = 0
          Top = 233
          Width = 1084
          Height = 396
          Align = alClient
          TabOrder = 3
          object Panel16: TPanel
            Left = 1
            Top = 1
            Width = 1082
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
            TabOrder = 0
            object btnBuscarPagamentoSalvo: TBitBtn
              Left = 0
              Top = 0
              Width = 183
              Height = 25
              Align = alLeft
              Caption = 'Buscar pagamentos Salvos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = btnBuscarPagamentoSalvoClick
            end
            object btnCriarTabelaPrecoFinanceiro: TBitBtn
              Left = 898
              Top = 0
              Width = 184
              Height = 25
              Align = alRight
              Caption = 'Criar tabela de pre'#231'o financeiro'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              OnClick = btnCriarTabelaPrecoFinanceiroClick
            end
            object dbnCustoFinanceiro: TDBNavigator
              Left = 183
              Top = 0
              Width = 206
              Height = 25
              DataSource = dsCustoFinanceiro
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alLeft
              TabOrder = 2
            end
            object dbnTabelaPreco: TDBNavigator
              Left = 571
              Top = 0
              Width = 206
              Height = 25
              DataSource = dsTabelaPreco
              VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
              Align = alRight
              TabOrder = 3
            end
            object btnBuscarTabelaPreco: TBitBtn
              Left = 777
              Top = 0
              Width = 121
              Height = 25
              Align = alRight
              Caption = 'Buscar Tabela Pre'#231'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Bell MT'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 4
              OnClick = btnBuscarTabelaPrecoClick
            end
          end
          object Panel17: TPanel
            Left = 1
            Top = 26
            Width = 417
            Height = 369
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 1
            object dbgCustoFinanceiro: TDBGrid
              Left = 0
              Top = 49
              Width = 417
              Height = 320
              Align = alClient
              DataSource = dsCustoFinanceiro
              ReadOnly = True
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
                  Expanded = False
                  FieldName = 'PagamentoNome'
                  Title.Alignment = taCenter
                  Title.Caption = 'Pagamento Nome:'
                  Width = 180
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Status'
                  Title.Alignment = taCenter
                  Title.Caption = 'Status:'
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taRightJustify
                  Expanded = False
                  FieldName = 'PrazoMedio'
                  Title.Alignment = taCenter
                  Title.Caption = 'Prazo M'#233'dio:'
                  Width = 67
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'JurosFinanceiro'
                  Title.Alignment = taCenter
                  Title.Caption = '% Financeiro:'
                  Width = 70
                  Visible = True
                end>
            end
            object dbgCabecalhoFinanceiro: TDBGrid
              Left = 0
              Top = 0
              Width = 417
              Height = 49
              Align = alTop
              DataSource = dsCustoFinanceiro
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = dbgCabecalhoFinanceiroDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'AliquotaNome'
                  Title.Caption = 'Aliquota Nome:'
                  Width = 168
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Aliquota'
                  Title.Alignment = taCenter
                  Title.Caption = 'Aliquota:'
                  Width = 84
                  Visible = True
                end>
            end
          end
          object Panel20: TPanel
            Left = 418
            Top = 26
            Width = 665
            Height = 369
            Align = alClient
            Caption = 'Panel20'
            TabOrder = 2
            object Panel21: TPanel
              Left = 1
              Top = 1
              Width = 663
              Height = 48
              Align = alTop
              TabOrder = 0
              object dbCabecalhoTabelaPreco: TDBGrid
                Left = 1
                Top = 1
                Width = 661
                Height = 46
                Align = alClient
                DataSource = dsTabelaPreco
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = dbCabecalhoTabelaPrecoDrawColumnCell
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'Markup'
                    Width = 185
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'Modelo'
                    Width = 189
                    Visible = True
                  end
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'ValorVendaaVista'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor venda '#224' vista:'
                    Width = 103
                    Visible = True
                  end>
              end
            end
            object Panel22: TPanel
              Left = 1
              Top = 49
              Width = 663
              Height = 319
              Align = alClient
              TabOrder = 1
              object dbgTabelaPreco: TDBGrid
                Left = 1
                Top = 1
                Width = 661
                Height = 317
                Align = alClient
                DataSource = dsTabelaPreco
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnDrawColumnCell = dbgTabelaPrecoDrawColumnCell
                Columns = <
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'PrazoMedio'
                    Title.Alignment = taRightJustify
                    Visible = True
                  end
                  item
                    Alignment = taRightJustify
                    Expanded = False
                    FieldName = 'ValorVendaPrazoMedio'
                    Title.Alignment = taRightJustify
                    Title.Caption = 'Valor Venda Prazo M'#233'dio:'
                    Width = 140
                    Visible = True
                  end>
              end
            end
          end
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    OnDataChange = DataSource1DataChange
    Left = 496
    Top = 480
  end
  inherited ImageList1: TImageList
    Left = 120
    Top = 328
  end
  object dsAuxiliar: TDataSource
    Left = 184
    Top = 328
  end
  object dsCustoFinanceiro: TDataSource
    OnDataChange = dsCustoFinanceiroDataChange
    Left = 152
    Top = 392
  end
  object dsModelo: TDataSource
    Left = 280
    Top = 336
  end
  object dsDespesaFixa: TDataSource
    Left = 544
    Top = 136
  end
  object dsTabelaPreco: TDataSource
    Left = 352
    Top = 416
  end
end
