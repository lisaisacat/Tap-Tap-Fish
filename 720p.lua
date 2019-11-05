function daily()
	x,y = findMultiColorInRegionFuzzy( 0xece7ed, "15|-2|0xece2ed,6|-11|0x82c542", 90, 406, 517, 448, 556)--离线奖励
	if x ~= -1 then
		tap(364,  792)
	end
	multiColTap({{  338, 1303, 0xff547b},{ 1194, 1306, 0xff547b},{ 1191, 1434, 0xff547b},{  341, 1433, 0xff547b}})--签到
	multiColTap({{ 1038, 1033, 0xd1e926},{ 1048, 1041, 0xd3ea26},{ 1071, 1016, 0xcce326},{  730, 1232, 0x7d7d85},{  754, 1220, 0x808188}})--发现隐藏的鱼
	multiColTap({{  473, 1034, 0xfead00},{  491, 1034, 0xffae00},{  491, 1031, 0xffae00},{  252, 1036, 0x666869}})--关闭宝箱
end

function collect()
	x,y = findMultiColorInRegionFuzzy( 0xd95da5, "10|0|0xd95da5,5|5|0xda5da6", 80, 11, 64, 697, fh)--鱼红心泡泡
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心哦~")
	else x,y = findMultiColorInRegionFuzzy( 0xdc5ea9, "-3|1|0xdc5ca9,1|4|0xdc5ca9,4|2|0xdc5ca9", 80, 11, 64, 697, fh)
		if x ~= -1 then
			tap(x,y)
			toast("找到一颗心哦~")
		end
	end
end

function festival()
	x,y = findMultiColorInRegionFuzzy( 0xffecd2,"3|6|0xffedd2,5|10|0xffeace,-5|10|0xffedd2",80,56, 67, 652, fh)
	if x ~= -1 then
		tap(x,y)
		toast("春天快乐呀~")
	else
		x,y = findMultiColorInRegionFuzzy(0xffecd2,"6|0|0xffecd2,4|4|0xffedd2", 80, 56, 67, 652, fh)
		if x ~= -1 then
			tap(x,y)
			toast("春天快乐哇～")
		else
			x,y = findMultiColorInRegionFuzzy(0xffedd2,"6|6|0xffdec0,-6|5|0xffeed2",80, 56, 67, 652, fh)
			if x ~= -1 then
				tap(x,y)
				toast("春天快乐哦~")
			end
		end
	end
end


if shanhushi == 0 then
	左上角红心小手 = {
		{   21,  717, 0xbb5566},
		{   24,  716, 0xbb5566},
		{   33,  724, 0xffffff},
	}
end

x,y = findMultiColorInRegionFuzzyByTable( 左上角红心小手, 90, 9, 704, 45, 736)
if x ~= -1 then
	halfmemu = true
else
	halfmenu = false
end

function expand()
	if halfmemu == false then
		tap(653, 1231)
		if multiColor({
				{  338, 1207, 0xffffff},
				{  361, 1205, 0xffffff},
				{  361, 1230, 0xffffff},
				{  339, 1228, 0xffffff},
				}) == false then--扩张未开
			tap(361, 1230)
		end
	end
end

function stonemove()
	if shanhushi == 0 then
		if multiColor({{   61, 1224, 0xffffff},{   79, 1223, 0xffffff},{   70, 1205, 0xffffff}}) == false then--石头未开
			tap(79, 1223)
		else
			x,y = findMultiColorInRegionFuzzy( 0xffffff, "9|-1|0xfafbfd,9|10|0xfdfefe,19|6|0xfcfdfe,21|0|0xffffff", 90, 339, 794, 381, 817)--技能
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function menu()
	if halfmemu == false then
		tap(653, 1231)
	else
		stonemove()
	end
end

function shutmenu()
	if halfmemu == true then
		tap(648, 1218)
	end
end

function farmmove()
	if shanhushi == 0 then
		if multiColor({{  146, 1093, 0xffffff},{  146, 1085, 0xffffff},{  150, 1072, 0xffffff}}) == false then--珊瑚未开
			tap(146, 1085)
		else
			x,y = findMultiColorInRegionFuzzy( 0x93db49, "-4|13|0xffffff,-25|27|0xffffff,20|38|0xffffff", 90, 17, 702, 109, 798)--海带农场
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function farm()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0x512790, "-1|3|0x522593,-7|0|0x4e2988", 90, 42, 209, 79, 240)--半屏海胆
		if x ~= -1 then
			tap(x,314)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x7cca9c, "6|-5|0x7fc792,12|-11|0x83c68e,10|-1|0x67aba6", 90, 117, 172, 151, 199)--半屏海带
		if x ~= -1 then
			tap(x,247)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xfef4ff, "3|-1|0xfff6ff,2|6|0xffffff,6|5|0xffffff,7|11|0xfef7ff", 90, 572, 187, 602, 216)--半屏贝壳
		if x ~= -1 then
			tap(x,264)
			mSleep(500)
			toast("收割贝壳~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x6c23ab, "-2|2|0x6825a6,2|-3|0x6925a2", 90, 60, 465, 89, 490)--全屏海胆
		if x ~= -1 then
			tap(x,558)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x97c6ab, "-5|5|0x94c9b2,6|-5|0x9dc5a6,4|3|0x81acbc", 90, 127, 430, 161, 456)--全屏海带
		if x ~= -1 then
			tap(x,514)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xfff4ff, "2|0|0xfff5ff,1|6|0xffffff,5|4|0xffffff", 90, 565, 439, 591, 466)--全屏贝壳
		if x ~= -1 then
			tap(x,506)
			mSleep(500)
			toast("收割贝壳~")
		end
	end
	--[[if multiColor({{   37,  683, 0xbe516a},{   44,  684, 0xbe516a},{   31,  717, 0xbe516a},{   42,  726, 0xffffff},{  151,  718, 0xbe516a},}) == false then
	tap(989, 1844)
	dialog("农场模式暂不支持您的手机，请加群联系丸子发截图进行适配")
else
	farmmove()
end
if multiColor({{  565,  579, 0xfaaf3f},{  602,  576, 0xfaaf40},}) == false then --农场未开
	multiColTap({{  596,  559, 0x3b933a},{  597,  569, 0x419a51},{  580,  583, 0xffa466},})--点击农场
else
	x,y = findMultiColorInRegionFuzzy( 0xb5dc43, "79|-1|0xb8de45,36|38|0xb6dd44", 99, 440, 700, 626, 1045)--查找收割绿色
	if x ~= -1 then
		tap(x,y)
	end
end]]
end

function stoneup()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfbae17, "68|1|0xfbae17,-1|67|0xfbae17,72|68|0xfbae17", 90, 14, 787, 116, 1183)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({
				{   48, 1018, 0x223042},
				{   98, 1018, 0x223042},
				{   70, 1017, 0xfdfbfe},
				{  538, 1033, 0x0099bc},
				{  655, 1039, 0x0099bc},
			})--升级珊瑚石（蓝色）
		multiColTap({
				{   48, 1018, 0x223042},
				{   98, 1018, 0x223042},
				{   70, 1017, 0xfdfbfe},
				{  522, 1042, 0xe8972d},
				{  669, 1044, 0xe8972d},
			})--升级珊瑚石（黄色）
	end
end

function stoneskill()
	if shanhushi == 0 then
		multiColTap({
				{  110,  880, 0xf9f9f9},
				{  122,  880, 0xf9f9f9},
				{  141,  881, 0xf9f9f9},
			})--火山爆发
		multiColTap({
				{  422,  893, 0x2f7496},
				{  417,  929, 0x172e3f},
				{  441,  928, 0xececec},
			})--月之歌
		multiColTap({
				{  275,  874, 0xe9566e},
				{  279,  881, 0xe9566e},
				{  295,  875, 0xdb4964},
			})--海鲜大餐
	end
end