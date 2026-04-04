$Resize:On
'$Dynamic

Type UI_Element
    As _Byte Type, Orientation
    As _Unsigned Long Parent ' Parent ID
    As _Byte Visible

    As Single W, H, X, Y ' Original Values
    As Integer __W, __H, __X, __Y ' Calculated Values

    As Integer Border, BorderSize, BorderRadius
    As Long BorderColor
    As Integer RoundedRadius

    As String Title, Content
    As Long Font, Image

    As Long BColor, FColor ' Colours
    As Long HoverBColor, HoverFColor ' Mouse Hover
    As Long ClickBColor, ClickFColor ' Mouse Click

    As Single Progress, MaxProgress ' Progress Bar

    As Single Value, MaxValue ' Slider, ToggleButton

    As Long ScrollOffset, Highlighted, Selected ' List Box

    ' Text Box
    As Long CursorPositionX, CursorPositionY
    As _Byte SingleLine

    As _Byte Checked ' Check Box

    As String Children ' Tabs Group

    As _Unsigned _Byte Hover, Clicked

    As Long Response
    As String ResponseString
End Type
Const UI_Button = 1
Const UI_Label = 2
Const UI_ProgressBar = 3
'Const UI_ScrollBar = 4
Const UI_Slider = 5
Const UI_Image = 6
'Const UI_Text = 7
Const UI_List = 8
Const UI_Spinner = 9
Const UI_Menu = 15
Const UI_RadioGroup = 10 ' Works Correctly
Const UI_CheckBox = 11
Const UI_ToggleButton = 12
Const UI_TabsGroup = 13
Const UI_TabsPage = 14

Const UI_Dialog = 16
Const UI_Dialog_Message = 17
Const UI_Dialog_Text = 18
Const UI_Dialog_Image = 19
Const UI_Dialog_List = 20

Const UI_Orientation_Vertical = 1
Const UI_Orientation_Horizontal = 0

Dim Shared UI_Elements(0) As UI_Element: UI_Elements(0).Visible = -1
Dim Shared As Long UI_Current_Parent, UI_Current_Focus, UI_MouseWheel
UI_Current_Parent = 0: UI_Current_Focus = 0: UI_MouseWheel = 0

Dim Shared As UI_Element Default_UI_Element
Default_UI_Element.Border = 0
Default_UI_Element.BorderSize = 1
Default_UI_Element.BorderRadius = 0
Default_UI_Element.BorderColor = &HFF000000
Default_UI_Element.RoundedRadius = 0
Default_UI_Element.BColor = -1
Default_UI_Element.FColor = &HFF000000
Default_UI_Element.HoverBColor = &HFFDFDFDF
Default_UI_Element.HoverFColor = &HFF000000
Default_UI_Element.ClickBColor = &HFFAFAFAF
Default_UI_Element.ClickFColor = &HFF000000
Default_UI_Element.Image = 0
Default_UI_Element.Progress = 0
Default_UI_Element.MaxProgress = 0
Default_UI_Element.Value = 0
Default_UI_Element.MaxValue = 0
Default_UI_Element.ScrollOffset = 1
Default_UI_Element.Selected = 0
Default_UI_Element.CursorPositionX = 0
Default_UI_Element.CursorPositionY = 0
Default_UI_Element.SingleLine = 0
Default_UI_Element.Children = ""
Default_UI_Element.Response = 0
Default_UI_Element.ResponseString = ""
