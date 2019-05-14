object frmprodutividade: Tfrmprodutividade
  Left = 192
  Top = 117
  Width = 870
  Height = 450
  BorderIcons = [biSystemMenu]
  Caption = 'PRODUTIVIDADE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 272
    Top = 120
    Width = 400
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      'TDBChart')
    View3D = False
    TabOrder = 0
    object Series1: TBarSeries
      Marks.ArrowLength = 20
      Marks.Visible = True
      DataSource = ADOTable1
      SeriesColor = clRed
      XLabelsSource = 'StatusSer'
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      XValues.ValueSource = 'novototal'
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
      YValues.ValueSource = 'novototal'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 72
    Top = 104
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\FACULDADE\SOFTWA' +
      'RE ORDEM DE SERVI'#199'O\bd\Cadastro.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Os'
    Left = 128
    Top = 80
    object ADOTable1NumeroOs: TAutoIncField
      FieldName = 'NumeroOs'
      ReadOnly = True
    end
    object ADOTable1TecRes: TIntegerField
      FieldName = 'TecRes'
    end
    object ADOTable1DataEntra: TDateTimeField
      FieldName = 'DataEntra'
    end
    object ADOTable1PrevEntre: TDateTimeField
      FieldName = 'PrevEntre'
    end
    object ADOTable1NomeCli: TWideStringField
      FieldName = 'NomeCli'
      Size = 30
    end
    object ADOTable1FoneCli: TIntegerField
      FieldName = 'FoneCli'
    end
    object ADOTable1Equipam: TWideStringField
      FieldName = 'Equipam'
      Size = 30
    end
    object ADOTable1StatusSer: TIntegerField
      FieldName = 'StatusSer'
    end
    object ADOTable1ProbleInfor: TWideStringField
      FieldName = 'ProbleInfor'
      Size = 200
    end
    object ADOTable1ProbleConst: TWideStringField
      FieldName = 'ProbleConst'
      Size = 200
    end
    object ADOTable1ServExe: TWideStringField
      FieldName = 'ServExe'
      Size = 200
    end
    object ADOTable1ValorServ: TIntegerField
      FieldName = 'ValorServ'
    end
    object ADOTable1Desconto: TIntegerField
      FieldName = 'Desconto'
    end
    object ADOTable1Total: TIntegerField
      FieldName = 'Total'
    end
    object ADOTable1nomeTec: TWideStringField
      FieldName = 'nomeTec'
      Size = 30
    end
    object ADOTable1novofone: TWideStringField
      FieldName = 'novofone'
    end
    object ADOTable1novovalor: TBCDField
      FieldName = 'novovalor'
      Precision = 19
    end
    object ADOTable1novodesconto: TBCDField
      FieldName = 'novodesconto'
      Precision = 19
    end
    object ADOTable1novototal: TBCDField
      FieldName = 'novototal'
      Precision = 19
    end
  end
end
