function daily()
	multiColTap({{  471,  818, 0xece2ed},{  647,  820, 0xece2ed},{  647,  755, 0x86cc4a},{  565, 1192, 0xffffff}})--离线奖励
	multiColTap({{  503, 1251, 0xff547b},{ 572, 1250, 0xff547b},{ 506, 1308, 0xff547b},{  567, 1304, 0xff547b}})--签到
	multiColTap({{ 1038, 1033, 0xd1e926},{ 1048, 1041, 0xd3ea26},{ 1071, 1016, 0xcce326},{  730, 1232, 0x7d7d85},{  754, 1220, 0x808188}})--发现隐藏的鱼C
	multiColTap({{  634, 1548, 0xffae00},{  647, 1548, 0xffae00},{  737, 1546, 0xffae00},{  737, 1552, 0xffae00},{  377, 1554, 0x66686a}})--关闭宝箱
end

function collect()
	x,y = findMultiColorInRegionFuzzy( 0xd965ab, "5|-1|0xd966ab,2|3|0xd964ab", 90, 192, 205, 1050, fh)--鱼红心泡泡
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心233")
	end
end

function festival()
	x, y = findMultiColorInRegionFuzzy(0xbb3e8a,"2|1|0xbb3e8a,7|-16|0xb23f88,16|-13|0xa9377b",88, 112, 269, 1061, fh)--2019 情人节活动
	if x ~= -1 then
		tap(x,y,1,"click.png")
		toast("情人节快乐呀~")
	else
		x, y = findMultiColorInRegionFuzzy(0x2c98ad,"-1|8|0x1ea4b2,-24|-3|0xbd408b", 88, 112, 269, 1061, fh)
		if x ~= -1 then
			tap(x,y,1,"click.png")
			toast("情人节快乐哇～")
		else
			x, y = findMultiColorInRegionFuzzy(0xf0428f,"4|38|0xef428e,-21|25|0xff418d", 88,112, 269, 1061, fh)
			if x ~= -1 then
				tap(x,y,1,"click.png")
				toast("情人节快乐哦~")
			end
		end
	end
	--[[x,y = findMultiColorInRegionFuzzy( 0xfff86a, "1|8|0xffff8a,-1|14|0xffff8a,12|10|0xfff86a", 85, 112, 269, 1061, fh)
	if x ~= -1 then
		tap(x,y)
		toast("捡到一个金币呀~")
	else
		x,y = findMultiColorInRegionFuzzy( 0xfff86a, "1|7|0xffff8a,-2|11|0xffff8a,-2|22|0xfffa6b", 85, 112, 269, 1061, fh)
		if x ~= -1 then
			tap(x,y)
			toast("捡到一个金币哇～")
		else
			x,y = findMultiColorInRegionFuzzy( 0xffff8a, "-6|2|0xffff8a,-4|9|0xffff8a,-1|5|0xffff8a", 85,112, 269, 1061, fh)
			if x ~= -1 then
				tap(x,y)
				toast("捡到一个金币哦~")
			end
		end
	end--]]
end

if shanhushi == 0 then--大
	左上角红心小手 = {
		{38,1021,0xbe516a},
		{47,1020,0xbe516a},
		{40,1028,0xbe516a},
	}

elseif shanhushi == 1 then--小
	左上角红心小手 = {
		{40,1016,0x6a51be},
		{45,1016,0x6a51be},
		{52,1085,0xffffff},
		{34,1076,0x6655bb},
	}

end

x,y = findMultiColorInRegionFuzzyByTable( 左上角红心小手, 90, 19, 1063, 62, 1103)
if x ~= -1 then
	halfmemu = true
else
	halfmenu = false
end

function expand()
	if halfmemu == false then
		tap(989, 1844)
		if multiColor({
				{  509, 1809, 0xffffff},
				{  544, 1810, 0xffffff},
				{  544, 1842, 0xffffff},
				{  510, 1841, 0xffffff},
				}) == false then--扩张未开
			tap(544, 1842)
		end
	end
end

function stonemove()
	if shanhushi == 0 then
		if multiColor({{   95, 1833, 0xffffff},{  106, 1807, 0xffffff},{  119, 1836, 0xffffff}}) == false then--石头未开
			tap(106, 1807)
			nLog("打开石头")
		else
			x,y = findMultiColorInRegionFuzzy( 0xfeffff, "0|8|0xffffff,14|-2|0xffffff,13|14|0xfeffff", 90, 497, 1188, 565, 1232)--技能
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	elseif shanhushi == 1 then
		if multiColor({
				{95,1833,0xffffff},
				{106,1806,0xffffff},
				{119,1835,0xffffff},
			}
			) == false then
			tap(106,1806)
		else
			local degree = 85
			local x, y = findMultiColorInRegionFuzzy(0xfdfdfc,"-2|16|0xfdfcfb,28|19|0xfcfbfa,14|10|0xfffefe",degree,505,1149,574,1179)
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function menu()
	if halfmemu == false then
		tap(989, 1844)
	else
		stonemove()
		x,y = findMultiColorInRegionFuzzy( 0xffffff, "2|5|0xffffff,-13|5|0x55bbbb,10|16|0x55bbbb", 90, 768, 1784, 870, 1901)--活动广告
		if x ~= -1 then
			tap(x,y)
		end
		if (isColor( 821, 1814, 0xffffff, 85) or 
			isColor( 823, 1830, 0xffffff, 85) or 
			isColor( 816, 1842, 0xffffff, 85) or 
			isColor( 793, 1832, 0xffffff, 85)) then
			if multiColor({
					{   16, 1188, 0xcc4466},
					{   55, 1187, 0xcc4466},
					{   16, 1231, 0xcc4466},
					}) == false--免费广告左上角标
			then
				moveTo(w/2,h-400,w/2,h-200,10)
			else
				x,y = findMultiColorInRegionFuzzy( 0x1095b4, "10|45|0x1095b4,84|-58|0x44ccdd,86|-29|0x44ccdd,-258|-21|0xffffff", 90, 694, 1180, 1079, 1344)--接收看广告
				if x ~= -1 then
					tap(x,y)
				end
				tadsstart = os.time()
				adtime = 1
				tadend = os.time()
				if tadend - tadsstart > 20 then
					adtime = 0
				end
			end
		end
	end
end

function shutmenu()
	if halfmemu == true then
		tap(973, 1833)
	end
end

function farmmove()
	if shanhushi == 0 then
		if multiColor({{  248, 1845, 0xffffff},{  226, 1821, 0xffffff},{  247, 1833, 0xffffff},}) == false then--珊瑚未开
			tap(226, 1821)
		else
			x,y = findMultiColorInRegionFuzzy( 0x1c2935, "9|-12|0x1c2935,75|-24|0x1c2935,106|12|0x1c2935,71|10|0xffffff", 90, 31, 1188, 179, 1339)--海带农场
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function farm()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0x2c2885, "0|10|0x30228c,4|18|0x30218d", 90, 91, 699, 130, 730)--半屏海胆
		if x ~= -1 then
			tap(x,398)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x5ab866, "-9|7|0x58b96a,-15|15|0x55bb71,-10|21|0x45a37e,-3|14|0x419f7a,6|5|0x3b976b", 90, 152, 238, 244, 321)--半屏海带
		if x ~= -1 then
			tap(x,360)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdae6e8, "2|9|0xfafffd,7|7|0xfafffd,10|6|0xfafffd,5|11|0xfafffd,13|16|0xdae6e9", 90, 839, 264, 924, 339)--半屏贝壳
		if x ~= -1 then
			tap(x,398)
			mSleep(500)
			toast("收割贝壳~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x2c2885, "0|10|0x30228c,4|18|0x30218d", 90, 91, 699, 130, 730)--全屏海胆
		if x ~= -1 then
			tap(x,823)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x55bb72, "8|-7|0x58b96b,16|-14|0x5bb867,22|-10|0x3b9769,14|-2|0x409e7a,7|5|0x44a280", 90, 177, 627, 251, 698)--全屏海带
		if x ~= -1 then
			tap(x,747)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdae6e9, "-1|8|0xfafffd,5|8|0xfafffd,7|7|0xfafffd,0|12|0xfafffd,9|16|0xdae6e9", 90, 829, 643, 903, 715)--全屏贝壳
		if x ~= -1 then
			tap(x,773)
			mSleep(500)
			toast("收割贝壳~")
		end
	end
	--[[if multiColor({{   58, 1026, 0xbe516a},{   66, 1025, 0xbe516a},{   49, 1077, 0xbe516a},{   65, 1089, 0xffffff},{  227, 1078, 0xbe516a},}) == false then
	tap(989, 1844)
else
	farmmove()
end
if multiColor({{  954,  978, 0xfaaf3f},{  990, 1016, 0xfaaf3f},{ 1016,  973, 0xfaaf3f},}) == false then --农场未开
	multiColTap({{ 1002, 1004, 0xfcfcfc},{ 1022,  992, 0xffffff},{  980,  989, 0xffa466},})--点击农场
else
	x,y = findMultiColorInRegionFuzzy( 0xb5dc43, "71|-2|0xb7de45,38|61|0xb6dd44", 99, 744, 1185, 1046, 1773)--查找收割绿色
	if x ~= -1 then
		tap(x,y)
		mSleep(1500)
		toast("完成收割！",1)
	end
end]]
end

function stoneup()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfbae17, "108|0|0xfbae17,-2|101|0xfbae17,111|101|0xfbae17", 90, 33, 1179, 174, 1774)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({{93, 1538, 0xf7f1fe},{  802, 1577, 0x0099bc},{  831, 1588, 0xffffff},{  886, 1612, 0x0099bc}})--升级珊瑚石（蓝色）
		multiColTap({{93, 1538, 0xf7f1fe},{  802, 1577, 0xe8972d},{  886, 1612, 0xe8972d},{  831, 1588, 0xffffff}})--升级珊瑚石（黄色）
	elseif shanhushi == 1 then--小石头
		x,y = findMultiColorInRegionFuzzy( 0x44ccdd, "31|0|0x44ccdd,66|-65|0xffaa11,66|35|0xffaa11", 90, 13, 1444, 1063, 1612)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({
				{816,1477,0xb49510},
				{920,1479,0xb49510},
				{873,1571,0xb49510},
			}
		)--升级珊瑚石（蓝色）
		x,y = findMultiColorInRegionFuzzy( 0x1095b4, "68|93|0x1095b4,-76|96|0x1095b4,-838|76|0xd3dee0", 90, 13, 1444, 1063, 1612)--升级珊瑚石（蓝色）
		if x ~= -1 then
			tap(x,y)
		end
	end
end

function stoneskill()
	if shanhushi == 0 then
		multiColTap({
				{  155, 1322, 0xf9f9f9},
				{  180, 1322, 0xf9f9f9},
				{  208, 1322, 0xf9f9f9},
			})--火山爆发
		multiColTap({
				{  625, 1340, 0x2f7496},
				{  615, 1396, 0x172e3f},
				{  607, 1360, 0xececec},
			})--月之歌
		multiColTap({
				{  406, 1311, 0xe9566e},
				{  410, 1326, 0xe9566e},
				{  433, 1314, 0xdb4964},
			})--海鲜大餐
	elseif shanhushi == 1 then
		x,y = findMultiColorInRegionFuzzy( 0xff815a, "0|-34|0xff815a,-26|-8|0xff815a", 90, 93, 1218, 272, 1401)--盛开的珊瑚石
		if x~= -1 then
			tap(x,y)
			nLog("盛开的珊瑚石")
		end
		x,y = findMultiColorInRegionFuzzy( 0x78b259, "8|-9|0x589b4c,47|-69|0xfbe7d1,86|-11|0x33642a", 90, 334, 1222, 508, 1393)--花的祝福
		if x~= -1 then
			tap(x,y)
			nLog("花的祝福")
		end
		x,y = findMultiColorInRegionFuzzy( 0x2f7496, "47|-11|0x144d6d,38|0|0xfcf2c3,88|33|0x27607f", 90, 565, 1222, 747, 1396)--萤火的祝福
		if x~= -1 then
			tap(x,y)
			nLog("萤火的祝福")
		end
	end

end