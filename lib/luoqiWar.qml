[General]
SyntaxVersion=2
MacroID=cb5944c6-b518-4bf0-973d-17ea6c925a16
[Comment]

[Script]
//请在下面写上您的子程序或函数
//写完保存后，在任一命令库上点击右键并选择“刷新”即可

Sub deyunDeWeituo(times)
	
	//根据传入的次数战斗多少次
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		// 选择单人
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
		
		//跳船
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "跳船过图判定开始"
        //这里要加跳图判断的...
        Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		//开始打德云的委托		
		Delay 2000

		//这个是跳图
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第一次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"
		
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
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //取消boss动画用的
    		
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
		
		//点击下一页技术战斗
		Call Lib.luoqi.jieshuZhandou()

		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		
		//开始寻路到任务版
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub

Sub fuchou(times)
	
	//根据传入的次数战斗多少次
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		// 选择单人
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
		
		//跳船
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "跳船过图判定开始"
        //这里要加跳图判断的...
        Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		//开始打德云的委托		
		Delay 2000

		//这个是跳图
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第一次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"
		
        //需要跳图两次
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第二次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"
		
		KeyPress "W", 80
		
		Dim x
		Dim y
		Dim pointColor
		
		
		Dim continueLoop
		continueLoop = true
		
		Dim attackDirection
		attackDirection = 0
		Dim tempVal
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		jieshuX = windowX + 553
		jieshuY = windowY + 185
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //取消boss动画用的
    		
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
		
		//点击下一页技术战斗
		Call Lib.luoqi.jieshuZhandou()

		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		
		//开始寻路到任务版
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub


Sub jueZhan(times)
	
	//根据传入的次数战斗多少次
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		// 选择单人
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
		
		//跳船
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "跳船过图判定开始"
        //这里要加跳图判断的...
        Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		//开始打决战		
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		//这个是跳图
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第一次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第二次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		
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

		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
		Delay 2000
		
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
		
		//MessageBox myArray(0) & "," & myArray(1) 
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
		
		jieshuX = windowX + 553
		jieshuY = windowY + 185
		
		While continueLoop
  		
    		KeyPress "ESC", 1    //取消boss动画用的
    		
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
		
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		
		//开始寻路到任务版
		KeyPress "W", 3
		KeyPress "D", 23
		
		Delay 2000

	Next

	
End Sub

//开始 地精族长 战役
Sub dijingZuzhang(times)
	
	TracePrint "开始地精族长战役"
	//根据传入的次数战斗多少次
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		// 选择地精族长战役
		// 要先把箭头弄到最上面
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
		
		// 选择单人
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
		
		//跳船
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "跳船过图判定开始"
        //这里要加跳图判断的...
        Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		//开始打地精族长		
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		//这个是跳图
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第一次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		
		//重新设置外挂攻击定义成200%
		KeyDown 18, 1
		KeyPress 80, 1
		KeyUp 18, 1
		
		Delay 1000
		
		//设置攻击175
		if i=1 Then
			//设置攻击200
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
		
		TracePrint "第二次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"
		
		Delay 3000

		
		TracePrint "start to press up"
		
		//地精族长独特的走路
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

        //等待boss动画
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
  		
    		KeyPress "ESC", 1    //取消boss动画用的
    		
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
		
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		
		//开始寻路到任务版
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub


//开始 反击之日 战役
Sub fanjiZhiRi(times)
	
	TracePrint "开始反击之日战役"
	
	//根据传入的次数战斗多少次
	For i = 1 To times
	
    	Dim windowX
		Dim windowY
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		// 选择反击之日战役   
		
		// 这里有问题，需要调整滑动条的，代码有待改进
		//先移动到下拉条那个箭头，狂点30次
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
		
		// 选择单人
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
		
		//跳船
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1

		TracePrint "跳船过图判定开始"
        //这里要加跳图判断的...
        Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		//开始打地精族长		
		
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
		
		//这个是跳图
		KeyDown 18, 1
		KeyPress 89, 1
		KeyUp 18, 1
		
		TracePrint "第一次过图判定开始"
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		TracePrint "跳船过图判定结束"

		if i=1 Then
			//设置攻击200
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
		
		//重新设置外挂攻击定义成200%
		KeyDown 18, 1
		KeyPress 80, 1
		KeyUp 18, 1
		
		Delay 1000
			
		TracePrint "start to press up"
		
		//地精族长独特的走路
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

        //等待boss动画
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
  		
    		KeyPress "ESC", 1    //取消boss动画用的
    		
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
		
		//这里要加跳图判断的..
		Call Lib.luoqi.isMapPassed()
		
		//开始寻路到任务版
		Call Lib.luoqi.goToBoardFromWharf()

		
		Delay 2000

	Next

	
End Sub