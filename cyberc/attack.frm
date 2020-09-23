VERSION 5.00
Begin VB.Form attack 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "attack"
   ClientHeight    =   5640
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5235
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5640
   ScaleWidth      =   5235
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton misa 
      Caption         =   "launch"
      Height          =   255
      Left            =   1560
      TabIndex        =   9
      Top             =   1920
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Timer chat 
      Enabled         =   0   'False
      Interval        =   9000
      Left            =   600
      Top             =   3840
   End
   Begin VB.CommandButton china 
      Caption         =   "attack china"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label mis 
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   2400
      TabIndex        =   8
      Top             =   1680
      Width           =   855
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   "missles:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1800
      TabIndex        =   7
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label chattacks 
      BackColor       =   &H00000000&
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3600
      TabIndex        =   6
      Top             =   720
      Width           =   735
   End
   Begin VB.Label Label3 
      BackColor       =   &H00000000&
      Caption         =   "attacks:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3000
      TabIndex        =   5
      Top             =   720
      Width           =   615
   End
   Begin VB.Label chpop 
      BackColor       =   &H00000000&
      Caption         =   "5000"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3360
      TabIndex        =   4
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "pop:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3000
      TabIndex        =   3
      Top             =   1320
      Width           =   375
   End
   Begin VB.Label charmy 
      BackColor       =   &H00000000&
      Caption         =   "1000"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3480
      TabIndex        =   2
      Top             =   1080
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "army:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   3000
      TabIndex        =   1
      Top             =   1080
      Width           =   495
   End
End
Attribute VB_Name = "attack"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub charmy_Change()
If charmy.Caption < 0 Then
MsgBox "u win"
End
End If
End Sub

Private Sub chat_Timer()
MsgBox "china is getting pay backs"
fm.funds.Caption = fm.funds.Caption - 500
fm.pop.Caption = fm.pop.Caption - 5
fm.army.Caption = fm.army.Caption - 50

chattacks.Caption = chattacks.Caption + 1
chat.Enabled = False
charmy.Caption = charmy.Caption - 50

End Sub

Private Sub china_Click()

fm.army.Caption = fm.army.Caption - 50
fm.food.Caption = fm.food.Caption - 50
fm.funds.Caption = fm.funds.Caption - 1000


charmy.Caption = charmy.Caption - 100
chpop.Caption = chpop.Caption - 50





Dim at
badv = Int((2 * Rnd) + 1)
If at = 1 Then
chat.Enabled = True
Else
If at = 2 Then

End If
End If
End Sub

Private Sub chpop_Change()
If chpop.Caption < 0 Then
MsgBox "u win"
End
End If
End Sub



Private Sub Form_Load()
'525-9525
'danni
End Sub

Private Sub mis_Click()
If mis.Caption > 0 Then

Else
misa.Visible = False
End If

End Sub

Private Sub misa_Click()
If mis > 0 Then
mis.Caption = mis.Caption - 1
chpop.Caption = chpop.Caption - 1000
Else
misa.Visible = False
End If
End Sub
