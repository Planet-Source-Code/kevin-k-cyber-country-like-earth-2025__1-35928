VERSION 5.00
Begin VB.Form fm 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "cyber country"
   ClientHeight    =   6105
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6480
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6105
   ScaleWidth      =   6480
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command7 
      Caption         =   "sell exports"
      Height          =   375
      Left            =   3840
      TabIndex        =   16
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton Command6 
      Caption         =   "research missle"
      Height          =   375
      Left            =   3840
      TabIndex        =   15
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command5 
      Caption         =   "build homes"
      Height          =   375
      Left            =   3840
      TabIndex        =   14
      Top             =   1560
      Width           =   1335
   End
   Begin VB.CommandButton Command4 
      Caption         =   "attack"
      Height          =   495
      Left            =   3000
      TabIndex        =   13
      Top             =   4680
      Width           =   1695
   End
   Begin VB.Timer bad 
      Interval        =   5000
      Left            =   120
      Top             =   5640
   End
   Begin VB.CommandButton Command3 
      Caption         =   "sell food"
      Height          =   375
      Left            =   2400
      TabIndex        =   9
      Top             =   3360
      Width           =   1335
   End
   Begin VB.TextBox sellf 
      Height          =   375
      Left            =   2400
      TabIndex        =   8
      Text            =   "0"
      Top             =   3000
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "farm"
      Height          =   375
      Left            =   2400
      TabIndex        =   7
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Timer tim 
      Interval        =   4500
      Left            =   960
      Top             =   2040
   End
   Begin VB.CommandButton Command1 
      Caption         =   "buy units"
      Height          =   375
      Left            =   2400
      TabIndex        =   3
      Top             =   1560
      Width           =   1335
   End
   Begin VB.Label pop 
      BackColor       =   &H00000000&
      Caption         =   "500"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   600
      TabIndex        =   12
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label5 
      BackColor       =   &H00000000&
      Caption         =   "pop:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   2880
      Width           =   375
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "CYBER COUNTRY"
      BeginProperty Font 
         Name            =   "OCR A Extended"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   375
      Left            =   1560
      TabIndex        =   10
      Top             =   480
      Width           =   2895
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   2
      Height          =   1095
      Left            =   1440
      Shape           =   2  'Oval
      Top             =   120
      Width           =   3135
   End
   Begin VB.Label army 
      BackColor       =   &H00000000&
      Caption         =   "100"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   600
      TabIndex        =   6
      Top             =   1800
      Width           =   1335
   End
   Begin VB.Label funds 
      BackColor       =   &H00000000&
      Caption         =   "25000"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   600
      TabIndex        =   5
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label Label4 
      BackColor       =   &H00000000&
      Caption         =   "funds:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   2520
      Width           =   495
   End
   Begin VB.Label food 
      BackColor       =   &H00000000&
      Caption         =   "100"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00000000&
      Caption         =   "food:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   2160
      Width           =   495
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "army:"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   1800
      Width           =   495
   End
End
Attribute VB_Name = "fm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub army_Change()
If army.Caption < 0 Then
MsgBox "u loose"
End
End If
End Sub

Private Sub bad_Timer()
Dim badv
badv = Int((4 * Rnd) + 1)
If badv = 1 Then
MsgBox "u have been attacked from china"
funds.Caption = funds.Caption - 500
pop.Caption = pop.Caption - 5
army.Caption = army.Caption - 50
attack.chattacks.Caption = attack.chattacks.Caption + 1
Else
If badv = 2 Then
pop.Caption = pop.Caption - 5
Else
If badv = 3 Then
pop.Caption = pop.Caption - 10
Else
If badv = 4 Then


End If
End If
End If
End If





End Sub

Private Sub Command1_Click()

army.Caption = army.Caption + 10
funds.Caption = funds.Caption - 1000
End Sub

Private Sub Command2_Click()
food.Caption = food.Caption + 50
funds.Caption = funds.Caption - 500
End Sub

Private Sub Command3_Click()
Dim sel
food.Caption = food.Caption - sellf.Text
sel = sellf.Text * 2
funds.Caption = funds.Caption + sel
End Sub

Private Sub Command4_Click()
attack.Show
End Sub

Private Sub Command5_Click()
funds.Caption = funds.Caption - 2000
pop.Caption = pop.Caption + 10
End Sub

Private Sub Command6_Click()
funds.Caption = funds.Caption - 1000
Dim misr
misr = Int((8 * Rnd) + 1)
If misr = 1 Then
MsgBox "u research crew made a nuke!"
attack.mis.Caption = attack.mis.Caption + 1
attack.misa.Visible = True



Else
If misr = 2 Then

Else
If misr = 3 Then

Else
If misr = 4 Then

Else
If misr = 5 Then

Else
If misr = 6 Then
MsgBox "u research crew made a mustard bomb!"
attack.mis.Caption = attack.mis.Caption + 1
attack.misa.Visible = True
Else
If misr = 7 Then

Else
If misr = 8 Then

End If
End If
End If
End If
End If
End If
End If
End If


End Sub

Private Sub Command7_Click()
funds.Caption = funds.Caption + 100
End Sub

Private Sub food_Change()
If food.Caption < 0 Then
MsgBox "u loose"
End
End If
End Sub

Private Sub funds_Change()
If funds.Caption < 0 Then
MsgBox "u loose"
End
End If
End Sub

Private Sub pop_Click()
If pop.Caption < 0 Then
MsgBox "u loose"
End
End If
End Sub

Private Sub tim_Timer()
If food.Caption < 0 Then
MsgBox "u loose"
End
Else

Dim foods
foods = army.Caption / 5
food.Caption = food.Caption - foods
End If
End Sub
