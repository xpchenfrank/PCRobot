[General]
SyntaxVersion=2
MacroID=6e811b77-786a-4a80-90fc-d17329f9055c
[Comment]

[Script]
//��������д�������ӳ������
//д�걣�������һ������ϵ���Ҽ���ѡ��ˢ�¡�����

//������Ҳ����Ĵ���
Sub setWaigua

    //���Ƴ�ȥ�������
    MoveTo 59, 688
    Delay 200
    LeftClick 1
    
    //�����������
    Delay 10000
    
    //�������Ӣ�۴����ڻ�����ý���
    Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
	Delay 2000
		
	sRect = Plugin.Window.GetClientRect(Hwnd)  
	myArray=Split(srect,"|")       
		
	windowX = CLng(myArray(0))                      
	windowY = CLng(myArray(1))
	
	MoveTo windowX + 30, windowY + 60
	Delay 200
	LeftClick 1
  
	Delay 2000
	KeyDown 16, 1
	KeyPress 73, 1
	KeyUp 16, 1
	Delay 3000
	// twice ctrl i ���ù�����ʱ��Ҫ��
	/*
	KeyDown 17, 1
	KeyPress 73, 1
	KeyUp 17, 1
	Delay 3000
	KeyDown 17, 1
	KeyPress 73, 1
	KeyUp 17, 1
	Delay 3000
	*/
	// four times alt i
	KeyDown 18, 1
	KeyPress 73, 1
	KeyUp 18, 1
	Delay 3000
	KeyDown 18, 1
	KeyPress 73, 1
	KeyUp 18, 1
	Delay 3000
	KeyDown 18, 1
	KeyPress 73, 1
	KeyUp 18, 1
	Delay 3000
	KeyDown 18, 1
	KeyPress 73, 1
	KeyUp 18, 1
	Delay 3000
	KeyDown 18, 1
	KeyPress 86, 1
	KeyUp 18, 1
	Delay 2000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000
	KeyPress "Esc", 1
	Delay 1000

End Sub

// �ж��Ƿ��ͼ��ɵĴ���,������ǰ���Delay�����������������ֻ��Ҫ���õ�true�Ժ�ֱ�Ӹ��¾Ϳ�����
Sub isMapPassed

    Delay 10000

	Dim continueLoop
	continueLoop = true

	While continueLoop
    	
    	Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  	
	      	
		XY = Plugin.ColorEx.FindColor(356,825, 376,845, "6C500D", 1, 0)      
	      	
		ZB = InStr(XY, "|")      
	      	
		X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 	
		Call Plugin.ColorEx.Free()
		
		
		If x>0 and y>0 Then  
	    	continueLoop = true
		else
			continueLoop = false
    	End If
		
	Wend
	Delay 10000
	
End Sub

//��½�Ժ�ȥ����
Sub goToBoardAfterLogin

    //������ͼ
	KeyDown 18, 1
	KeyPress 82, 1
	KeyUp 18, 1
	
	Call Lib.luoqi.isMapPassed()
	
	Delay 10000
	
	Call Lib.luoqi.goToBoardFromWharf()
		
	Delay 2000

End Sub

Sub goToBoardFromWharf

	KeyPress "W", 4
	KeyPress "D", 23
	
End Sub

//������Ϸ  �����������Ҫ������ͼ�걣�浽�ű���
//��һ������������Ϸ�˺ţ� �ڶ�����������ڼ�������
Sub startLuoqi(account, charactoerNum)

    Delay 2000

    TracePrint "��������ͼ�꿪ʼ"
    FindPic 0,0,1920,1080,"Attachment:\������Ϸͼ��.bmp",0.9,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX+5, intY+5
		Delay 30
		LeftDoubleClick 1
	End If
	
	Dim windowX
	Dim windowY
	
	windowX = 0
	windowY = 0
	
	TracePrint "��ʼ������û��HeroLauncher���ھ��"
	While windowX = 0
	    TracePrint "����ѭ�����ҵ�½����"
		Hwnd = Plugin.Window.Find(0, "HeroesLauncher")
		Delay 2000
			
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
			
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
	Wend
	
	//���ߵ���˵��luncher�Ѿ�������
	TracePrint "�Ѿ��ҵ���½����"
    MoveTo 651, 814
    Delay 20
    LeftClick 1
    
    SayString account
    
    Delay 1000
    
    MoveTo 663, 846
    Delay 20
    LeftClick 1
    
    SayString "orange26"
    
    Delay 1000
    
    MoveTo 1278, 822
    Delay 20
    LeftClick 1
    
    //���������ȵ�һ����
    Delay 60000
    
    //��ʼѭ��������Ӣ�۴�������еĻ���ʼ�ҿ�ʼ��Ϸ
    windowX = 0
    While windowX = 0
	    TracePrint "����ѭ�����ҵ�½����"
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
			
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
			
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
	Wend

    Delay 30000
	
	//�����жϹ�ͼ
	Call Lib.luoqi.isMapPassed()
	
    //Ȼ��ʼѭ���ҿ�ʼ��Ϸ����ͼ
    TracePrint "��ʼ�ҿ�ʼ��Ϸ����ͼ"
    intX = 0
    intY = 0
    While intX = 0
    	TracePrint "�ҿ�ʼ�ҿ�ʼ��Ϸ����ͼ ������"
		//����������ܲ����ҵ���ʼ��Ϸ�����Ǹ���
		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
			
		XY = Plugin.ColorEx.FindColor(781,535, 965, 681, "1487E6", 1, 0)      
			
		ZB = InStr(XY, "|")      
			
		X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    		
		Call Plugin.ColorEx.Free()
		
		TracePrint "��ʼ�����ɫ��x��"
		TracePrint x
		TracePrint "��ʼ�����ɫ��y��"
		TracePrint y
		
		If x > 0 And y > 0 Then 
			FindPic 1233,605,1425,678,"Attachment:\��ʼ��Ϸ.bmp",0.9,intX,intY
			If intX > 0 And intY > 0 Then 
		    	
				MoveTo intX + 20, intY + 20
				Delay 60
				LeftClick 1
			End If
		End If

    Wend
    
    Delay 20000
    
    //����IPȷ��
    TracePrint "��ʼ�ƶ������IPȷ��"
	TracePrint windowX
	TracePrint windowY
    MoveTo windowX + 642, windowY + 501
    Delay 1000
    LeftClick 1
    Delay 1000
    
	TracePrint "��ʼ�ƶ���ѡ������"
    //����ѡ������
    If charactoerNum = 1 Then 
		MoveTo windowX + 1104, windowY + 78
		Delay 1000
		LeftDoubleClick 1
		Delay 1000
	ElseIf charactoerNum = 2 Then
		MoveTo windowX + 1104, windowY + 141
		Delay 1000
		LeftDoubleClick 1
		Delay 1000		
    End If
    
	Delay 20000
	
    //�ȴ���ͼ
    Call Lib.luoqi.isMapPassed()
	
    //���ȥ��������
	TracePrint "��ͼ��������ʼȥ��������"
	MoveTo windowX + 648, windowY + 608
	Delay 1000
	LeftClick 1
	Delay 1000	
	
	Delay 6000
	
    MoveTo windowX + 642, windowY + 686
	Delay 1000
	LeftClick 1
	Delay 1000	
    
    //�˳��ù�
    MoveTo windowX + 268, windowY + 42
	Delay 1000
	LeftClick 1
	Delay 1000    
    

End Sub

Sub jieshuZhandou

		Dim windowX
		Dim windowY 
		
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		Dim nextPageX
		Dim nextPageY
		
		Dim endWarX
		Dim endWarY
		
		Dim backX
		Dim backY
		
		nextPageX = windowX + 669
		nextPageY = windowY + 707
		
		endWarX = windowX + 426
		endWarY = windowY + 707
		
		backX = windowX + 89
		backY = windowY + 396

		MoveTo nextPageX, nextPageY
		Delay 2000
		LeftClick 1
		Delay 15000
		MoveTo endWarX, endWarY
		Delay 1000
		LeftClick 1
		Delay 2000
		TracePrint "print for end war"
		MoveTo backX, backY
		Delay 2000
		LeftClick 1
	
End Sub