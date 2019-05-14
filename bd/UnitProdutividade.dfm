object FrmProdu: TFrmProdu
  Left = 192
  Top = 117
  Width = 870
  Height = 450
  BorderIcons = [biSystemMenu]
  Caption = 'Produtividade'
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
  object DBChart2: TDBChart
    Left = 56
    Top = 32
    Width = 537
    Height = 305
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'VALORES DE SERVI'#199'OS')
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.LegendStyle = lsValues
    Legend.TextStyle = ltsPlain
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    TabOrder = 0
    object BarTECNICO: TPieSeries
      Marks.ArrowLength = 20
      Marks.Style = smsValue
      Marks.Visible = True
      DataSource = ADOTable1
      SeriesColor = clRed
      Title = 'T'#233'cnicos e Valores'
      XLabelsSource = 'nomeTec'
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loNone
      PieValues.ValueSource = 'novototal'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 8
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\FACULDADE\SOFTWA' +
      'RE ORDEM DE SERVI'#199'O\bd\Cadastro.mdb;Persist Security Info=False'
    CursorType = ctStatic
    TableName = 'Os'
    Left = 8
    Top = 56
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
