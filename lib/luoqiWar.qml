[General]
SyntaxVersion=2
MacroID=cb5944c6-b518-4bf0-973d-17ea6c925a16
[Comment]

[Script]
//��������д�������ӳ������
//д�걣�������һ������ϵ���Ҽ���ѡ��ˢ�¡�����

Sub deyunDeWeituo(times)
	
	//���ݴ���Ĵ���ս�����ٴ�
	For i = 1 To times
	
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
		
		nextPageX = windowX + 669
		nextPageY = windowY + 707
		
		Dim northFeiXuX
		Dim northFeiXuY
		
		northFeiXuX = windowX + 768
		northFeiXuY = windowY + 368
		
		MoveTo northFeiXuX, northFeiXuY
		Delay 2000
		LeftClick 1
		Delay 10000
		
		// create boat
		Dim createShipX
		Dim createShipY
		createShipX = windowX + 320
		createShipY = windowY + 643
		
		MoveTo createShipX, createShipY
		Delay 2000
		LeftClick 1
		Delay 3000 
		
		//jin ru choose war
		Dim juezhanX
		Dim juezhanY
		juezhanX = windowX + 586
		juezhanY = windowY + 298
		
		MoveTo juezhanX, juezhanY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ����
		Dim danrenX
		Dim danrenY
		
		danrenX = windowX + 155
		danrenY = windowY + 392
		
		MoveTo danrenX, danrenY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// choose mode
		
		Dim juezhanModeX
		Dim juezhanModeY
		
		juezhanModeX = windowX + 281
		juezhanModeY = windowY + 235
		
		MoveTo juezhanModeX, juezhanModeY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// move to apply for leave button
		Dim applyLeaveX
		Dim applyLeaveY
		
		applyLeaveX = windowX + 232
		applyLeaveY = windowY + 519
		
		MoveTo applyLeaveX, applyLeaveY
		Delay 1000
		LeftClick 1
		Delay 20000
		
		// start to take off
		Dim takeoffX
		Dim takeoffY
		
		takeoffX = windowX + 100
		takeoffY = windowY + 679
		
		MoveTo takeoffX, takeoffY
		Delay 1000
		LeftClick 1
		
		Delay 5000
		
		//����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "������ͼ�ж���ʼ"
        //����Ҫ����ͼ�жϵ�...
        Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		//��ʼ����Ƶ�ί��		
		Delay 2000

		//�������ͼ
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "��һ�ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"
		
		TracePrint "start to press up"
		
		KeyPress "W", 80
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //ȡ��boss�����õ�
    		
    		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  		
			XY = Plugin.ColorEx.FindColor(nextPageX-50,nextPageY-50, nextPageX+50,nextPageY+50, "576D84", 1, 0)      
	      		
			ZB = InStr(XY, "|")      
	      		
			X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 		
			Call Plugin.ColorEx.Free()
						
			If x>0 and y>0 Then  
				continueLoop = false
			Else 
				KeyPress "P", 10
    		End If
				
			
		Wend
		
		//�����һҳ����ս��
		Call Lib.luoqi.jieshuZhandou()

		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		
		//��ʼѰ·�������
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub

Sub fuchou(times)
	
	//���ݴ���Ĵ���ս�����ٴ�
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
				
		Dim northFeiXuX
		Dim northFeiXuY
		
		northFeiXuX = windowX + 768
		northFeiXuY = windowY + 368
		
		MoveTo northFeiXuX, northFeiXuY
		Delay 2000
		LeftClick 1
		Delay 10000
		
		// create boat
		Dim createShipX
		Dim createShipY
		createShipX = windowX + 320
		createShipY = windowY + 643
		
		MoveTo createShipX, createShipY
		Delay 2000
		LeftClick 1
		Delay 3000 
		
		//jin ru choose war
		Dim juezhanX
		Dim juezhanY
		juezhanX = windowX + 577
		juezhanY = windowY + 400
		
		MoveTo juezhanX, juezhanY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ����
		Dim danrenX
		Dim danrenY
		
		danrenX = windowX + 155
		danrenY = windowY + 392
		
		MoveTo danrenX, danrenY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// choose mode
		
		Dim juezhanModeX
		Dim juezhanModeY
		
		juezhanModeX = windowX + 238
		juezhanModeY = windowY + 290
		
		MoveTo juezhanModeX, juezhanModeY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// move to apply for leave button
		Dim applyLeaveX
		Dim applyLeaveY
		
		applyLeaveX = windowX + 232
		applyLeaveY = windowY + 519
		
		MoveTo applyLeaveX, applyLeaveY
		Delay 1000
		LeftClick 1
		Delay 20000
		
		// start to take off
		Dim takeoffX
		Dim takeoffY
		
		takeoffX = windowX + 100
		takeoffY = windowY + 679
		
		MoveTo takeoffX, takeoffY
		Delay 1000
		LeftClick 1
		
		Delay 5000
		
		//����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "������ͼ�ж���ʼ"
        //����Ҫ����ͼ�жϵ�...
        Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		//��ʼ����Ƶ�ί��		
		Delay 2000

		//�������ͼ
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "��һ�ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"
		
        //��Ҫ��ͼ����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "�ڶ��ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"
		
		KeyPress "W", 80
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		jieshuX = windowX + 553
		jieshuY = windowY + 185
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //ȡ��boss�����õ�
    		
    		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  		
			XY = Plugin.ColorEx.FindColor(jieshuX-5,jieshuY-5, jieshuX+5,jieshuY+5, "927748", 1, 0)      
	      		
			ZB = InStr(XY, "|")      
	      		
			X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 		
			Call Plugin.ColorEx.Free()
						
			If x>0 and y>0 Then  
				continueLoop = false
			Else 
				KeyPress "P", 10
    		End If
			
			attackDirection = attackDirection + 1
			
			tempVal = attackDirection mod 4
			
			If tempVal=0 Then  
				KeyPress "W", 1
				Delay 20
				KeyPress "W", 1
				Delay 20
				KeyPress "W", 1
			ElseIf tempVal=1 Then
	    		KeyPress "D", 1
	    		Delay 20
				KeyPress "D", 1
				Delay 20
				KeyPress "D", 1
			ElseIf tempVal=2 Then
	    		KeyPress "S", 1
	    		Delay 20
				KeyPress "S", 1
				Delay 20
				KeyPress "S", 1
			Else 
				KeyPress "A", 1
				Delay 20
				KeyPress "A", 1
				Delay 20
				KeyPress "A", 1
    		End If
			
		Wend
		
		//�����һҳ����ս��
		Call Lib.luoqi.jieshuZhandou()

		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		
		//��ʼѰ·�������
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub


Sub jueZhan(times)
	
	//���ݴ���Ĵ���ս�����ٴ�
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		Dim northFeiXuX
		Dim northFeiXuY
		
		northFeiXuX = windowX + 768
		northFeiXuY = windowY + 368
		
		MoveTo northFeiXuX, northFeiXuY
		Delay 2000
		LeftClick 1
		Delay 10000
		
		// create boat
		Dim createShipX
		Dim createShipY
		createShipX = windowX + 320
		createShipY = windowY + 643
		
		MoveTo createShipX, createShipY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		//jin ru choose war
		Dim juezhanX
		Dim juezhanY
		juezhanX = windowX + 597
		juezhanY = windowY + 435
		
		MoveTo juezhanX, juezhanY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ����
		Dim danrenX
		Dim danrenY
		
		danrenX = windowX + 155
		danrenY = windowY + 392
		
		MoveTo danrenX, danrenY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// choose mode
		
		Dim juezhanModeX
		Dim juezhanModeY
		
		juezhanModeX = windowX + 215
		juezhanModeY = windowY + 273
		
		MoveTo juezhanModeX, juezhanModeY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// move to apply for leave button
		Dim applyLeaveX
		Dim applyLeaveY
		
		applyLeaveX = windowX + 232
		applyLeaveY = windowY + 519
		
		MoveTo applyLeaveX, applyLeaveY
		Delay 1000
		LeftClick 1
		Delay 20000
		
		// start to take off
		Dim takeoffX
		Dim takeoffY
		
		takeoffX = windowX + 100
		takeoffY = windowY + 679
		
		MoveTo takeoffX, takeoffY
		Delay 1000
		LeftClick 1
		
		Delay 5000
		
		//����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "������ͼ�ж���ʼ"
        //����Ҫ����ͼ�жϵ�...
        Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		//��ʼ���ս		
		
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
		
		//�������ͼ
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "��һ�ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "�ڶ��ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		
		TracePrint "start to press up"
		
		KeyPress "W", 80
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal

		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		jieshuX = windowX + 553
		jieshuY = windowY + 185
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //ȡ��boss�����õ�
    		
    		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  		
			XY = Plugin.ColorEx.FindColor(jieshuX-5,jieshuY-5, jieshuX+5,jieshuY+5, "927748", 1, 0)     
	      		
			ZB = InStr(XY, "|")      
	      		
			X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 		
			Call Plugin.ColorEx.Free()
			
			
			If x>0 and y>0 Then  
				continueLoop = false
			Else 
				KeyPress "P", 10
    		End If
			
			attackDirection = attackDirection + 1
			
			tempVal = attackDirection mod 4
			
			If tempVal=0 Then  
				KeyPress "W", 1
				Delay 20
				KeyPress "W", 1
				Delay 20
				KeyPress "W", 1
			ElseIf tempVal=1 Then
	    		KeyPress "D", 1
	    		Delay 20
				KeyPress "D", 1
				Delay 20
				KeyPress "D", 1
			ElseIf tempVal=2 Then
	    		KeyPress "S", 1
	    		Delay 20
				KeyPress "S", 1
				Delay 20
				KeyPress "S", 1
			Else 
				KeyPress "A", 1
				Delay 20
				KeyPress "A", 1
				Delay 20
				KeyPress "A", 1
    		End If
				
			
		Wend
		
		
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
		
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		
		//��ʼѰ·�������
		KeyPress "W", 3
		KeyPress "D", 23
		
		Delay 2000

	Next

	
End Sub

//��ʼ �ؾ��峤 ս��
Sub dijingZuzhang(times)
	
	TracePrint "��ʼ�ؾ��峤ս��"
	//���ݴ���Ĵ���ս�����ٴ�
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		Dim bingshanguX
		Dim bingshanguY
		
		bingshanguX = windowX + 773
		bingshanguY = windowY + 263
		
		MoveTo bingshanguX, bingshanguY
		Delay 2000
		LeftClick 1
		Delay 10000
		
		// create boat
		Dim createShipX
		Dim createShipY
		createShipX = windowX + 320
		createShipY = windowY + 643
		
		MoveTo createShipX, createShipY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ��ؾ��峤ս��
		// Ҫ�ȰѼ�ͷŪ��������
		xialaJiantouX = windowX + 816
		xialaJiantouY = windowY + 185
		
		MoveTo xialaJiantouX, xialaJiantouY
		Delay 1000
		LeftClick 30
		Delay 1000	
		
		Dim juezhanX
		Dim juezhanY
		juezhanX = windowX + 572
		juezhanY = windowY + 502
		
		MoveTo juezhanX, juezhanY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ����
		Dim danrenX
		Dim danrenY
		
		danrenX = windowX + 155
		danrenY = windowY + 392
		
		MoveTo danrenX, danrenY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// choose mode
		
		Dim juezhanModeX
		Dim juezhanModeY
		
		juezhanModeX = windowX + 215
		juezhanModeY = windowY + 273
		
		MoveTo juezhanModeX, juezhanModeY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// move to apply for leave button
		Dim applyLeaveX
		Dim applyLeaveY
		
		applyLeaveX = windowX + 232
		applyLeaveY = windowY + 519
		
		MoveTo applyLeaveX, applyLeaveY
		Delay 1000
		LeftClick 1
		Delay 20000
		
		// start to take off
		Dim takeoffX
		Dim takeoffY
		
		takeoffX = windowX + 100
		takeoffY = windowY + 679
		
		MoveTo takeoffX, takeoffY
		Delay 1000
		LeftClick 1
		
		Delay 5000
		
		//����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "������ͼ�ж���ʼ"
        //����Ҫ����ͼ�жϵ�...
        Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		//��ʼ��ؾ��峤		
		
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
		
		//�������ͼ
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "��һ�ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		
		//����������ҹ��������200%
		KeyDown 18, 1
		KeyPress 80, 1
		KeyUp 18, 1
		
		Delay 1000
		
		//���ù���175
		if i=1 Then
			//���ù���200
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
			
			 
			KeyPress "Esc", 1
			Delay 2000
		end if
		
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "�ڶ��ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"
		
		Delay 3000

		
		TracePrint "start to press up"
		
		//�ؾ��峤���ص���·
		KeyPress "W", 21
		Delay 1000
		KeyPress "A", 20
		Delay 6000
		KeyPress "D", 1
		For i=1 To 40
    		KeyPress "W", 1
    		Delay 500
		Next
		KeyPress "A", 12
		Delay 1000
		KeyPress "W", 16
		Delay 1000
		KeyPress "A", 1

        //�ȴ�boss����
        Delay 5000
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal
		While continueLoop
  		
    		KeyPress "ESC", 1    //ȡ��boss�����õ�
    		
    		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  		
	      		
			XY = Plugin.ColorEx.FindColor(nextPageX-50,nextPageY-50, nextPageX+50,nextPageY+50, "576D84", 1, 0)      
	      		
			ZB = InStr(XY, "|")      
	      		
			X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 		
			Call Plugin.ColorEx.Free()
			
			
			If x>0 and y>0 Then  
				continueLoop = false
			Else 
				KeyPress "P", 10
    		End If
	
		Wend
		
		
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
		
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		
		//��ʼѰ·�������
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub


//��ʼ ����֮�� ս��
Sub fanjiZhiRi(times)
	
	TracePrint "��ʼ����֮��ս��"
	
	//���ݴ���Ĵ���ս�����ٴ�
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "����Ӣ�۴�")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		Dim bingshanguX
		Dim bingshanguY
		
		bingshanguX = windowX + 773
		bingshanguY = windowY + 263
		
		MoveTo bingshanguX, bingshanguY
		Delay 2000
		LeftClick 1
		Delay 10000
		
		// create boat
		Dim createShipX
		Dim createShipY
		createShipX = windowX + 320
		createShipY = windowY + 643
		
		MoveTo createShipX, createShipY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ�񷴻�֮��ս��   
		
		// ���������⣬��Ҫ�����������ģ������д��Ľ�
		//���ƶ����������Ǹ���ͷ�����30��
		xialaJiantouX = windowX + 816
		xialaJiantouY = windowY + 517
		
		MoveTo xialaJiantouX, xialaJiantouY
		Delay 1000
		LeftClick 30
		Delay 1000
		
		Dim juezhanX
		Dim juezhanY
		juezhanX = windowX + 601
		juezhanY = windowY + 472
		
		MoveTo juezhanX, juezhanY
		Delay 2000
		LeftClick 1
		Delay 3000
		
		// ѡ����
		Dim danrenX
		Dim danrenY
		
		danrenX = windowX + 155
		danrenY = windowY + 392
		
		MoveTo danrenX, danrenY
		Delay 1000
		LeftClick 1
		Delay 1000
		
		// choose mode
		Dim juezhanModeX
		Dim juezhanModeY
		
		juezhanModeX = windowX + 241
		juezhanModeY = windowY + 311
		
		MoveTo juezhanModeX, juezhanModeY
		Delay 1000
		LeftClick 2
		Delay 1000
		
		// move to apply for leave button
		Dim applyLeaveX
		Dim applyLeaveY
		
		applyLeaveX = windowX + 232
		applyLeaveY = windowY + 519
		
		MoveTo applyLeaveX, applyLeaveY
		Delay 1000
		LeftClick 1
		Delay 20000
		
		// start to take off
		Dim takeoffX
		Dim takeoffY
		
		takeoffX = windowX + 100
		takeoffY = windowY + 679
		
		MoveTo takeoffX, takeoffY
		Delay 1000
		LeftClick 1
		
		Delay 5000
		
		//����
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "������ͼ�ж���ʼ"
        //����Ҫ����ͼ�жϵ�...
        Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		//��ʼ��ؾ��峤		
		
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
		
		//�������ͼ
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "��һ�ι�ͼ�ж���ʼ"
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		TracePrint "������ͼ�ж�����"

		if i=1 Then
			//���ù���200
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
			
			 
			KeyPress "Esc", 1
			Delay 2000
		end if
		
		//����������ҹ��������200%
		KeyDown 18, 1
		KeyPress 80, 1
		KeyUp 18, 1
		
		Delay 1000
			
		TracePrint "start to press up"
		
		//�ؾ��峤���ص���·
		KeyPress "W", 21
		Delay 1000
		KeyPress "A", 20
		Delay 6000
		KeyPress "D", 1
		For i=1 To 40
    		KeyPress "W", 1
    		Delay 500
		Next
		KeyPress "A", 12
		Delay 1000
		KeyPress "W", 16
		Delay 1000
		KeyPress "A", 1

        //�ȴ�boss����
        Delay 5000
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal
		While continueLoop
  		
    		KeyPress "ESC", 1    //ȡ��boss�����õ�
    		
    		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
  		
	      		
			XY = Plugin.ColorEx.FindColor(nextPageX-50,nextPageY-50, nextPageX+50,nextPageY+50, "576D84", 1, 0)      
	      		
			ZB = InStr(XY, "|")      
	      		
			X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    	 		
			Call Plugin.ColorEx.Free()
			
			
			If x>0 and y>0 Then  
				continueLoop = false
			Else 
				KeyPress "P", 10
    		End If
    		
	
		Wend
		
		
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
		
		//����Ҫ����ͼ�жϵ�..
		Call Lib.luoqi.isMapPassed()
		
		//��ʼѰ·�������
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub