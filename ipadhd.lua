function daily()
	multiColTap({{  696,  874, 0xece2ed},{  875,  785, 0x84ca48},{  881,  845, 0x85ca44},{  883,  876, 0xece2ed},{  754, 1266, 0xffffff}})--离线奖励
	multiColTap({{  338, 1303, 0xff547b},{ 1194, 1306, 0xff547b},{ 1191, 1434, 0xff547b},{  341, 1433, 0xff547b}})--签到
	multiColTap({{ 1038, 1033, 0xd1e926},{ 1048, 1041, 0xd3ea26},{ 1071, 1016, 0xcce326},{  730, 1232, 0x7d7d85},{  754, 1220, 0x808188}})--发现隐藏的鱼
	multiColTap({{  697, 1198, 0x27313e},{  827, 1200, 0x27313d},{  698, 1261, 0x27313e},{  821, 1261, 0x27313e}})--获得技能
end

function collect()
	x,y = findMultiColorInRegionFuzzy( 0xd766ac, "12|1|0xd767ac,6|5|0xd768ad", 80, 373,  334, 1110,  fh)--鱼红心泡泡
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心233")
	end
end

function festival()
	x,y = findMultiColorInRegionFuzzy( 0xf1edf1, "-3|17|0xf2edf0,5|24|0xf2edf0,-22|10|0x44c3b2", 90, 81,  109, 1480,  fh)--2017 万圣节活动
	if x ~= -1 then
		tap(x,y)
		toast("圣诞节快乐呀~")
	else
		x,y = findMultiColorInRegionFuzzy( 0x48c2b5, "2|0|0x41c3b0,16|3|0xfb6f95,24|11|0xfa6f95", 90, 81,  109, 1480,  fh)
		if x ~= -1 then
			tap(x,y)
			toast("圣诞节快乐哇～")
		else
			x,y = findMultiColorInRegionFuzzy( 0x44c3b2, "-1|-1|0x47c3b2,22|-9|0xf1ebf0,19|7|0xf2edf0", 90, 81,  109, 1480,  fh)
			if x ~= -1 then
				tap(x,y)
				toast("圣诞节快乐哦~")
			end
		end
	end
	--[[x,y = findMultiColorInRegionFuzzy( 0xff52ae, "5|0|0xff6bc6,19|-8|0xb92a80,15|-15|0xff80da", 90, 81,  109, 1480,  fh)--2017 万圣节活动
	if x ~= -1 then
		tap(x,y)
		toast("情人节快乐呀~")
	else
		x,y = findMultiColorInRegionFuzzy( 0xff4eaa, "3|-1|0xff62be,9|-7|0xff5ebb,19|-9|0xb92a80", 90, 81,  109, 1480,  fh)
		if x ~= -1 then
			tap(x,y)
			toast("情人节快乐哇～")
		else
			x,y = findMultiColorInRegionFuzzy( 0xff53af, "20|-9|0xb92a80,16|-8|0xff93e8", 90, 81,  109, 1480,  fh)
			if x ~= -1 then
				tap(x,y)
				toast("情人节快乐哦~")
			end
		end
	end--]]
end

function expand()
	if multiColor({{   65, 1097, 0xbe516a},{   84, 1147, 0xbe516a},{  100, 1161, 0xffffff},{  346, 1148, 0xbe516a},}) == false then
		tap(1433, 1966)
		if multiColor({
				{  542, 1928, 0xffffff},
				{  579, 1929, 0xffffff},
				{  581, 1966, 0xffffff},
				{  542, 1966, 0xffffff},
				}) == false then--扩张未开
			tap(581, 1966)
		end
	end
end

function stonemove()
	if shanhushi == 0 then
		if multiColor({{  112, 1928, 0xffffff},{   99, 1959, 0xffffff},{  127, 1959, 0xffffff}}) == false then--石头未开
			tap(99, 1959)
		else
			x,y = findMultiColorInRegionFuzzy( 0xfcfdfe, "0|10|0xfeffff,14|-1|0xfefefe,14|16|0xffffff", 90, 715, 1267, 808, 1314)--技能
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function menu()
	if multiColor({{   65, 1097, 0xbe516a},{   84, 1147, 0xbe516a},{  100, 1161, 0xffffff},{  346, 1148, 0xbe516a},}) == false then
		tap(1433, 1966)
	else
		stonemove()
	end	
end

function shutmenu()
	if multiColor({{   65, 1097, 0xbe516a},{   84, 1147, 0xbe516a},{  100, 1161, 0xffffff},{  346, 1148, 0xbe516a},}) == true then
		tap(1422, 1955)
	end	
end

function farmmove()
	if shanhushi == 0 then
		if multiColor({{  255, 1930, 0xffffff},{  265, 1969, 0xffffff},{  263, 1955, 0xffffff},}) == false then--珊瑚未开
			tap(265, 1969)
		else
			x,y = findMultiColorInRegionFuzzy( 0x1c2935, "10|-24|0x1c2935,39|-60|0x1c2935,78|-29|0x1c2935,113|7|0x1c2935,75|8|0xffffff", 90, 36, 1270, 191, 1424)--海带农场
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function farm()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0x321651, "7|-7|0x351559,2|-8|0x331458", 90, 268, 344, 305, 377)--半屏海胆
		if x ~= -1 then
			tap(x,492)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x59b755, "-8|8|0x56ba5e,11|-9|0x5cb64f,8|7|0x429c69,10|5|0x419a66", 90, 379, 277, 423, 316)--半屏海带
		if x ~= -1 then
			tap(x,380)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdbe5f6, "5|-2|0xdbe5f6,4|10|0xfbffff,13|6|0xfbffff,13|18|0xdbe5f5,17|15|0xdbe5f5", 90, 1111, 299, 1154, 340)--半屏贝壳
		if x ~= -1 then
			tap(x,425)
			mSleep(500)
			toast("收割贝壳~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x351467, "-6|5|0x321660,3|-5|0x32175f", 90, 288, 748, 330, 783)--全屏海胆
		if x ~= -1 then
			tap(x,886)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x5cb65e, "-9|8|0x5ab763,-17|15|0x57ba6c,-2|15|0x439c78,0|13|0x419a75", 90, 394, 688, 444, 725)--全屏海带
		if x ~= -1 then
			tap(x,789)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdce5ff, "5|-1|0xdce5ff,3|11|0xfcffff,12|7|0xfcffff,11|19|0xdce5ff,15|16|0xdce5ff", 90, 1099, 701, 1134, 742)--全屏贝壳
		if x ~= -1 then
			tap(x,813)
			mSleep(500)
			toast("收割贝壳~")
		end
	end
	--[[if multiColor({{   65, 1097, 0xbe516a},{   84, 1147, 0xbe516a},{  100, 1161, 0xffffff},{  346, 1148, 0xbe516a},}) == false then
		tap(1433, 1966)
	else
		farmmove()
	end
	if multiColor({{ 1402, 1043, 0xfaaf40},{ 1467, 1037, 0xf9b145},{ 1389, 1057, 0xf9b145},}) == false then --农场未开
		multiColTap({{ 1457, 1010, 0x3b933b},{ 1457, 1047, 0x459f58},{ 1427, 1053, 0xffa466},})--点击农场
	else
		x,y = findMultiColorInRegionFuzzy( 0xb7de45, "54|4|0xb6dd44,34|74|0xb5dc43", 99, 1180, 1258, 1502, 1897)--查找收割绿色
		if x ~= -1 then
			tap(x,y)
		end
	end]]
end

function stoneup()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfbae17, "110|1|0xfbae17,-6|107|0xfbae17,115|109|0xfbae17", 90, 27, 1266, 187, 1898)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({
				{  111, 1656, 0xe2e3eb},
				{  152, 1675, 0xeeebf5},
				{ 1221, 1690, 0x0099bc},
				{ 1445, 1689, 0x0099bc},
			})--升级珊瑚石(蓝色)
		multiColTap({
				{  111, 1656, 0xe2e3eb},
				{  152, 1675, 0xeeebf5},
				{ 1213, 1674, 0xe8972d},
				{ 1458, 1667, 0xe8972d},
			})--升级珊瑚石（黄色）
	end
end

function stoneskill()
	if shanhushi == 0 then
		multiColTap({
				{  359, 1413, 0xf9f9f9},
				{  411, 1409, 0xf9f9f9},
				{  387, 1491, 0xececec},
			})--火山爆发
		multiColTap({
				{  856, 1425, 0x2f7496},
				{  940, 1488, 0x172e3e},
				{  845, 1492, 0x172e3f},
			})--月之歌
		multiColTap({
				{  622, 1404, 0xe9566e},
				{  656, 1403, 0xdb4964},
				{  639, 1483, 0xececec},
			})--海鲜大餐
	end
end

function skillinit()
	local inittime = os.time() - skilltime
	local adtime = os.time()
	if inittime > 300 then
		if shanhushi == 0 then
			if multiColor({{  525,  762, 0xffb32c},{  524,  771, 0xffb32c},{  529,  777, 0xffb32c}}) == true then
				ad = 1
				toast("技能初始化")
				tap(525,  801)
				while true do
					if multiColor({{  579,   38, 0xffffff},{  583,   43, 0xffffff},{  597,   37, 0xffffff},{  595,   57, 0xffffff},{  579,   58, 0xffffff}}) == true then --右上角关闭广告
						tap(584, 52)
						break
					end	
					if os.time() - adtime > 35 then
						toast("ad = 0")
						ad = 0
					else
						toast("技能冷却中")
					end
				end
			end
		end
	end
end

function skillinit()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfcb20f, "2|0|0xfcb20f", 90, 371, 1338, 920, 1356)--三技能区域内查找倒计时黄圈
		if x == - 1 then
			x,y = findMultiColorInRegionFuzzy( 0xffb32c, "-1|12|0xffb32c,3|21|0xffb32c", 90, 1043, 1342, 1238, 1541)--闪电
			if x ~= -1 then
				ad = 1
				nLog("技能初始化")
				tap(525,  801)
			end
		end
		if a == 1 then
			x,y = findMultiColorInRegionFuzzy( 0xffffff, "5|6|0xffffff,13|15|0xffffff,16|-1|0xffffff,3|14|0xffffff,-2|18|0xffffff", 100, 567, 25, 611, 74) --右上角关闭广告
			if x ~= -1 then
				ad = 0
				nLog("技能初始化广告结束")
				tap(586,   47)
			end
		end
	end
end

function box()
	x,y = findMultiColorInRegionFuzzy( 0x504960, "14|2|0x5c5063,32|22|0x754b62", 90, 313, 284, 370, 334)--箱子
	if x ~= -1 then
		ad = 1
		tap(337,  307)
		nLog("点击宝箱")
	end
	x,y = findMultiColorInRegionFuzzy( 0xffae00, "7|-1|0xffae00,30|3|0xfead00,45|2|0xffae00,45|-7|0xffae00,60|-1|0xffae00,61|2|0xffae00", 90, 344, 884, 476, 943)--开启宝箱
	if x ~= -1 then
		ad = 1
		tap(405,  914)
		nLog("开启宝箱")
	end
	if ad == 1 then
		x,y = findMultiColorInRegionFuzzy( 0xffffff, "6|6|0xffffff,16|16|0xffffff,3|18|0xffffff,16|3|0xffffff", 100, 568, 27, 608, 70)--右上角关闭广告
		if x ~= -1 then
			ad = 0
			tap(586,   47)
			nLog("开宝箱广告结束")
		end
	end
	x,y = findMultiColorInRegionFuzzy( 0xffa300, "16|-1|0xffa300,47|3|0xffa300,87|6|0xffa300,87|-4|0xffa300,87|-6|0xffa300,87|-7|0xffa300", 90, 265, 670, 373, 702)--生命奖励
	if x ~= -1 then
		tap(344,  907)
	end
	x,y = findMultiColorInRegionFuzzy( 0x9ea0a0, "-5|-1|0x9ea0a0,-12|5|0x9e9fa0,11|9|0x9ea0a0,19|5|0x9ea0a0", 90, 288, 895, 352, 932)--确认
	if x ~= -1 then
		tap(344,  907)
	end
end