function daily()
	multiColTap({{  539,  942, 0xece2ed},{  746,  942, 0xece2ed},{  738,  854, 0x86cc4a},{  606, 1365, 0xffffff}})--离线奖励
	multiColTap({{   559, 1472, 0xff547b},{  679, 1475, 0xff547b},{  623, 1510, 0xff547b}})--签到
	multiColTap({{  495,  721, 0xffae00},{  551,  726, 0xffae00},{  649,  740, 0xffae00},{  606, 1315, 0x7c8189},{  653, 1321, 0x7c8189}})--新鱼闪亮登场
end

function collect()
	x,y = findMultiColorInRegionFuzzy( 0xd475b6, "8|0|0xd475b6,4|4|0xd476b7", 90, 42, 222, 1198, fh)--鱼红心泡泡
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心233")
	end
	x,y = findMultiColorInRegionFuzzy( 0xd475b6, "9|-1|0xd475b6,4|3|0xd476b7", 90, 85, 352, 1156, fh)--鱼红心泡泡
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心233")
	end
end

function festival()
	x, y = findMultiColorInRegionFuzzy(0xb43786,"8|3|0xac2f78,-5|14|0xbf3788,-2|14|0xc03788", 88, 87, 62, 1231, fh)--情人节
	if x ~= -1 then
		tap(x,y,1,"click.png")
		toast("情人节快乐呀~")
	else
		x, y = findMultiColorInRegionFuzzy(0x269aae,"-3|18|0xb8c1c8,-11|16|0x2c87a7,-21|-7|0xb53b89", 88, 87, 62, 1231, fh)
		if x ~= -1 then
			tap(x,y,1,"click.png")
			toast("情人节快乐哇～")
		else
			x, y = findMultiColorInRegionFuzzy(0xff61ab,"8|13|0xbd3e89,24|10|0xff8ed5,16|-4|0xff8ad2", 88, 87, 62, 1231, fh)
			if x ~= -1 then
				tap(x,y,1,"click.png")
				toast("情人节快乐哦~")
			end
		end
	end

	--[[x,y = findMultiColorInRegionFuzzy( 0xffffff, "0|-12|0xffffff,7|-5|0xf05091,16|-1|0x45c4ae", 90, 87, 62, 1231, fh)--秋季活动
	if x ~= -1 then
		tap(x,y)
		toast("邀请函呀~")
	else
		x,y = findMultiColorInRegionFuzzy( 0xfe5996, "3|-3|0xfc5794,2|7|0x49ddb2,-10|-12|0xffffff", 90, 87, 62, 1231, fh)
		if x ~= -1 then
			tap(x,y)
			toast("邀请函哇～")
		else
			x,y = findMultiColorInRegionFuzzy( 0xca3984, "3|-5|0xc53582,4|8|0x47ddb1,14|-4|0xffffff", 90, 87, 62, 1231, fh)
			if x ~= -1 then
				tap(x,y)
				toast("邀请函哦~")
			end
		end
	end--]]
end

if shanhushi == 0 then
	左上角红心小手 = {
	{45,1174,0xbe516a},
	{55,1175,0xbe516a},
	{46,1181,0xbe516a},
}
end

x,y = findMultiColorInRegionFuzzyByTable( 左上角红心小手, 90, 18, 1146, 200, 1270)
if x ~= -1 then
	halfmemu = true
else
	halfmenu = false
end

function expand()
	if halfmemu == false then
		tap(1139, 2122)
		if multiColor({
				{  586, 2080, 0xffffff},
				{  627, 2081, 0xffffff},
				{  624, 2118, 0xffffff},
				{  585, 2122, 0xffffff},
				}) == false then--扩张未开
			tap(624, 2118)
		end
	end
end

function stonemove()
	if shanhushi == 0 then
		if multiColor({{   105, 2110, 0xffffff},{   136, 2110, 0xffffff},{   122, 2076, 0xffffff}}) == false then--石头未开
			tap(136, 2110)
		else
			x,y = findMultiColorInRegionFuzzy( 0xffffff, "0|9|0xffffff,16|-2|0xffffff,16|17|0xffffff", 90, 571, 1364, 655, 1417)
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function menu()
	if halfmemu == false then
		tap(1139, 2122)
	else
		stonemove()
	end
end

function shutmenu()
	if halfmemu == true then
		tap(1100, 2107)
	end
end

function farmmove()
	if shanhushi == 0 then
		if multiColor({{  259, 2094, 0xffffff},{  283, 2109, 0xffffff},{  293, 2084, 0xffffff},}) == false then--珊瑚未开
			tap(283, 2109)
		else
			x,y = findMultiColorInRegionFuzzy( 0x1c2834, "8|-23|0x1c2739,87|-34|0x1e312d,128|2|0x1c2834,81|9|0xfffcff", 90, 44, 1373, 205, 1537)--海带农场
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function farm()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0x2d247d, "9|18|0x341d8b,-3|6|0xffffff", 90, 79, 361, 130, 402)--半屏海胆
		if x ~= -1 then
			tap(x,531)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x7fc792, "-9|9|0x7cca9b,10|-9|0x83c68d,8|7|0x67aca6,5|11|0x69aeaa", 90, 199, 300, 258, 343)--半屏海带
		if x ~= -1 then
			tap(x,416)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xfff5ff, "-1|15|0xffffff,7|11|0xffffff,9|23|0xfef6ff,14|18|0xfef6ff", 90, 988, 324, 1044, 372)--半屏贝壳
		if x ~= -1 then
			tap(x,455)
			mSleep(500)
			toast("收割贝壳~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x662a98, "5|13|0x6d23aa,12|9|0x6a27a1", 90, 95, 794, 152, 851)--全屏海胆
		if x ~= -1 then
			tap(x,960)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x98c6aa, "-9|9|0x94c9b3,10|-10|0x9dc5a5,9|5|0x80a9bc,6|8|0x80abbf", 90, 220, 743, 277, 786)--全屏海带
		if x ~= -1 then
			tap(x,854)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xfff5ff, "5|-1|0xfff5ff,3|11|0xffffff,12|7|0xffffff,12|20|0xfff5ff,17|16|0xfff5ff", 90, 972, 757, 1030, 804)--全屏贝壳
		if x ~= -1 then
			tap(x,876)
			mSleep(500)
			toast("收割贝壳~")
		end
	end
end

function stoneup()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfbae17, "120|-3|0xfbae17,-4|117|0xfbae17,122|113|0xfbae17", 90, 34, 1341, 201, 2041)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({
				{  119, 1763, 0xebedf2},
				{  881, 1753, 0x0099bc},
				{  946, 1826, 0xffffff},
			})--升级珊瑚石（蓝色）
		multiColTap({
				{   119, 1763, 0xebedf2},
				{  881, 1753, 0xe8972d},
				{  877, 1819, 0xe8972d},
			})--升级珊瑚石（黄色）
	end
end

function stoneskill()
	if shanhushi == 0 then
		multiColTap({
				{  182, 1519, 0xf9f9f9},
				{  211, 1519, 0xf9f9f9},
				{  236, 1518, 0xf9f9f9},
			})--火山爆发
		multiColTap({
				{  718, 1524, 0x2f7496},
				{  705, 1607, 0x172e3f},
				{  686, 1616, 0x183851},
			})--月之歌
		multiColTap({
				{  462, 1509, 0xe9566e},
				{  469, 1526, 0xe9566e},
				{  500, 1511, 0xdb4964},
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
		x,y = findMultiColorInRegionFuzzy( 0xffb40d, "2|0|0xffb40d", 100, 105, 744, 409, 753)--三技能区域内查找倒计时黄圈
		if x == - 1 then
			x,y = findMultiColorInRegionFuzzy( 0xffb32c, "-2|8|0xffb32c,3|15|0xffb32c", 90, 507, 748, 546, 802)--闪电
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