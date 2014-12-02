[General]
SyntaxVersion=2
MacroID=6e811b77-786a-4a80-90fc-d17329f9055c
[Comment]

[Script]
//请在下面写上您的子程序或函数
//写完保存后，在任一命令库上点击右键并选择“刷新”即可

//设置外挂参数的代码
Sub setWaigua

    //先移出去启动外挂
    MoveTo 59, 688
    Delay 200
    LeftClick 1
    
    //等外挂启动好
    Delay 10000
    
    //点击洛奇英雄传窗口回来获得焦点
    Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
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
	// twice ctrl i 设置攻速暂时不要了
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

// 判断是否读图完成的代码,包含了前后的Delay，调用这个方法的人只需要在拿到true以后直接干事就可以了
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

//登陆以后去看板
Sub goToBoardAfterLogin

    //辅助跳图
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

//启动游戏  用这个方法需要把洛奇图标保存到脚本里
//第一个参数代表游戏账号， 第二个参数代表第几个人物
Sub startLuoqi(account, charactoerNum)

    Delay 2000

    TracePrint "查找洛奇图标开始"
    FindPic 0,0,1920,1080,"Attachment:\洛奇游戏图标.bmp",0.9,intX,intY
	If intX > 0 And intY > 0 Then 
		MoveTo intX+5, intY+5
		Delay 30
		LeftDoubleClick 1
	End If
	
	Dim windowX
	Dim windowY
	
	windowX = 0
	windowY = 0
	
	TracePrint "开始查找有没有HeroLauncher窗口句柄"
	While windowX = 0
	    TracePrint "正在循环查找登陆窗口"
		Hwnd = Plugin.Window.Find(0, "HeroesLauncher")
		Delay 2000
			
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
			
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
	Wend
	
	//能走到这说明luncher已经启动了
	TracePrint "已经找到登陆窗口"
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
    
    //机器慢，先等一分钟
    Delay 60000
    
    //开始循环找洛奇英雄传句柄，有的话开始找开始游戏
    windowX = 0
    While windowX = 0
	    TracePrint "正在循环查找登陆窗口"
		Hwnd = Plugin.Window.Find(0, "洛奇英雄传")
		Delay 2000
			
		sRect = Plugin.Window.GetClientRect(Hwnd)  
		myArray=Split(srect,"|")       
			
		windowX = CLng(myArray(0))                      
		windowY = CLng(myArray(1))
	Wend

    Delay 30000
	
	//加入判断过图
	Call Lib.luoqi.isMapPassed()
	
    //然后开始循环找开始游戏这张图
    TracePrint "开始找开始游戏这张图"
    intX = 0
    intY = 0
    While intX = 0
    	TracePrint "找开始找开始游戏这张图 进行中"
		//这里测试下能不能找到开始游戏界面那个点
		Call Plugin.ColorEx.PrintScreen(0, 0, 1920, 1080)   
			
		XY = Plugin.ColorEx.FindColor(781,535, 965, 681, "1487E6", 1, 0)      
			
		ZB = InStr(XY, "|")      
			
		X = Clng(Left(XY, ZB - 1)) : Y = Clng(Right(XY, Len(XY) - ZB))
    		
		Call Plugin.ColorEx.Free()
		
		TracePrint "开始界面黄色点x是"
		TracePrint x
		TracePrint "开始界面黄色点y是"
		TracePrint y
		
		If x > 0 And y > 0 Then 
			FindPic 1233,605,1425,678,"Attachment:\开始游戏.bmp",0.9,intX,intY
			If intX > 0 And intY > 0 Then 
		    	
				MoveTo intX + 20, intY + 20
				Delay 60
				LeftClick 1
			End If
		End If

    Wend
    
    Delay 20000
    
    //单击IP确认
    TracePrint "开始移动到点击IP确认"
	TracePrint windowX
	TracePrint windowY
    MoveTo windowX + 642, windowY + 501
    Delay 1000
    LeftClick 1
    Delay 1000
    
	TracePrint "开始移动到选择人物"
    //进行选择人物
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
	
    //等待过图
    Call Lib.luoqi.isMapPassed()
	
    //点击去掉公告栏
	TracePrint "过图结束，开始去掉公告栏"
	MoveTo windowX + 648, windowY + 608
	Delay 1000
	LeftClick 1
	Delay 1000	
	
	Delay 6000
	
    MoveTo windowX + 642, windowY + 686
	Delay 1000
	LeftClick 1
	Delay 1000	
    
    //退出旅馆
    MoveTo windowX + 268, windowY + 42
	Delay 1000
	LeftClick 1
	Delay 1000    
    

End Sub

Sub jieshuZhandou

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