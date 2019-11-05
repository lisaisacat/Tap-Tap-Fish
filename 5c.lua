function adtimes()
	adtime = 1
	tap(583,  769)--接收广告
	mSleep(35*1000)
	multiColTap({{  585,   45, 0xffffff},{  589,   50, 0xffffff},})--UnityAds 右上角叉叉
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "5|6|0xffffff,14|16|0xffffff,-3|16|0xffffff,14|-4|0xffffff,5|7|0xffffff", 90, 535, 9, 637, 89)--UnityAds 右上角叉叉
	if x ~= -1 then
		tap(x,y)
	end
	x,y = findMultiColorInRegionFuzzy( 0xcccbcc, "11|0|0xbababa,12|12|0xbbbaba,0|11|0xcdcccc,6|5|0xbfbfbf", 90, 5, 5, 86, 78)--ADColony 左上角叉叉
	if x ~= -1 then
		tap(x,y)
	end
	adtime = 0
end

function ads()
	x,y = findMultiColorInRegionFuzzy( 0xffffff, "-9|-1|0x5bb3b5,1|-9|0x5bb3b5,2|9|0x5bb3b5", 90, 316, 1054, 522, 1089)--菜单栏播放按钮
	if x ~= -1 then
		tap(x-20,y+15)
		mSleep(1000)
		adtimes()
	end
	if multiColor({{  707, 1220, 0xffffff},{  707, 1225, 0xffffff},{  988, 1234, 0x0099bc},{  988, 1288, 0x0099bc},}) then--顶部播放按钮
		adtimes()
	end
end


function daily()--日常弹窗检测
	multiColTap({{  197,  431, 0xdfdfdf},{  191,  659, 0xdfdfdf},{  387,  686, 0xdfdfdf},{  461,  689, 0x007aff}})--推送通知
	multiColTap({{  292,   31, 0x000000},{  298,   31, 0x000000},{   71,   38, 0x5856d6},{   30,   50, 0x5856d6}})--取消GC
	multiColTap({{  234,  458, 0xdfdfdf},{  384,  465, 0xdfdfdf},{  328,  656, 0x007aff},{  321,  666, 0xdfdfdf}})--游戏中心登录失败
	multiColTap({{  558,   91, 0xf1ecfa},{  573,   91, 0xefebfb},{  583,   98, 0xf1eefb},{  542,   94, 0xf1ecfa}})--略过教学
	multiColTap({{  542,   94, 0xf0eefd},{  558,   91, 0xf0effe},{  564,   92, 0xf1f1ff},{  574,   92, 0xf0effd},{  584,   98, 0xefeefd}})--略过教学
	multiColTap({{  307, 1039, 0x000000},{  330, 1041, 0x000000},{  318, 1039, 0xffffff},{  321, 1040, 0xffffff}})--教学：请点击按键
	multiColTap({{  299,  954, 0x99ff36},{  312,  967, 0x99ff36},{  329,  951, 0x99ff36},{  320,  960, 0x99ff36}})--教学：绿色圆圈对勾1
	multiColTap({{  299,  944, 0xf9b500},{  309,  955, 0xf9b500},{  335,  949, 0xf9b400},{  335,  959, 0xf9b400}})--教学：确定
	multiColTap({{  300,  845, 0x99ff36},{  312,  856, 0x99ff36},{  327,  842, 0x99ff36}})--教学：绿色圆圈对勾2
	multiColTap({{  299,  839, 0xf9b500},{  309,  837, 0xf9b500},{  335,  843, 0xf9b400},{  334,  848, 0xf9b400}})--教学：确定2
	multiColTap({{  139, 1004, 0xffffff},{  150, 1004, 0xffffff},{  144, 1014, 0xffffff},{  138, 1032, 0xffffff},{  147, 1036, 0xffffff},{  144, 1087, 0x6390c4}})--教学：珊瑚
	multiColTap({{  400,  743, 0xffffff},{  417,  742, 0xffffff},{  404,  753, 0xffffff},{  430,  746, 0xffffff},{  502,  758, 0xffffff},{  481,  741, 0xe8972d}})--教学：解锁珊瑚
	multiColTap({{  299,  834, 0xf9b400},{  299,  839, 0xf9b400},{  341,  834, 0xf9b500},{  341,  838, 0xf9b500}})--教学：下一步
	multiColTap({{  397,  742, 0xffffff},{  399,  753, 0xffffff},{  431,  747, 0xffffff},{  502,  759, 0xffffff},{  481,  747, 0x0099bc}})--教学：升级珊瑚
	--multiColTap({{  221, 1006, 0xffffff},{  233, 1008, 0xffffff},{  228, 1026, 0xffffff},{  227, 1038, 0xffffff},{  230, 1083, 0x6692c5}})--教学：鱼
	--multiColTap({{  396,  740, 0xffffff},{  430,  745, 0xffffff},{  499,  759, 0xffffff},{  480,  746, 0x0099bc}})--教学：买蓝色小丑鱼
	--multiColTap({{  396,  844, 0xffffff},{  432,  849, 0xffffff},{  500,  862, 0xffffff},{  480,  844, 0x0099bc}})--教学：买红色小丑鱼
	multiColTap({{  285,  527, 0xffb32c},{  285,  520, 0xffb32c},{  312,  522, 0xffb32c},{  330,  532, 0xffb32c},{  355,  524, 0xffb32c},{  334,  674, 0xaaaab0}})--创造出了新鱼
	multiColTap({{  271,  369, 0xff2c53},{  270,  374, 0xff2c53},{  275,  380, 0xff2c53},{  312,  684, 0x7e7e86}})--发现隐藏鱼
	multiColTap({{  277,  485, 0xece2ed},{  378,  437, 0x7fc140},{  385,  486, 0xece2ed},{  312,  702, 0xffffff}})--离线奖励
	multiColTap({{  290,  815, 0xff547b},{  317,  846, 0xff547b},{  350,  827, 0xff547b},{  335,  832, 0xffffff}})--签到
	multiColTap({{  376,  915, 0xffae00},{  383,  916, 0xffae00},{  421,  914, 0xfead00},{  436,  918, 0xffae00},{  224,  918, 0x686b6c}})--关闭宝箱
end

function collect()
	x,y = findMultiColorInRegionFuzzy( 0xd66db0, "-4|0|0xd66db0,1|5|0xd66db0,5|1|0xd66db0", 80, 11, 69, 625, fh)
	if x ~= -1 then
		tap(x,y)
		toast("找到一颗心哦~")
	else
		x,y = findMultiColorInRegionFuzzy( 0xd964ab, "5|0|0xd964ab,9|3|0xd964ab,3|4|0xd964ab", 80, 11, 69, 625, fh)
		if x ~= -1 then
			tap(x,y)
			toast("找到一颗心哟~")
		else
			x,y = findMultiColorInRegionFuzzy( 0xdc5ca8, "5|0|0xdc5ca8,9|1|0xdc5ca8,5|5|0xdc5ca8", 80, 11, 69, 625, fh)
			if x ~= -1 then
				tap(x,y)
				toast("找到一颗心呢~")
			end
		end
	end
end


function festival()
	x, y = findMultiColorInRegionFuzzy(0xbb408b,"2|0|0xbd418c,7|-8|0xb54086,7|-6|0xa9397c",88, 87, 62, 626,fh)--情人节活动
	if x ~= -1 then
		tap(x,y,1,"click.png")
		toast("情人节快乐呀~")
	else
		x, y = findMultiColorInRegionFuzzy(0x3f89a7,"3|-4|0x269cb1,-2|-10|0xff58a0",88, 87, 62, 626,fh)
		if x ~= -1 then
			tap(x,y,1,"click.png")
			toast("情人节快乐哇～")
		else
			x, y = findMultiColorInRegionFuzzy(0xff3e92,"-13|-6|0xff2e85,-3|-11|0xce3990,3|-12|0xb2307d",88,87, 62, 626,fh)
			if x ~= -1 then
				tap(x,y,1,"click.png")
				toast("情人节快乐哦~")
			end
		end
	end
	--[[x,y = findMultiColorInRegionFuzzy( 0xff706d, "2|3|0x54f68a,-7|-2|0xffffff,7|-2|0xffffff,5|4|0xffffff",85,  87, 278, 634, fh)--两周年活动
	if x ~= -1 then
		tap(x,y)
		toast("邀请函呀~")
	else
		x,y = findMultiColorInRegionFuzzy( 0xffffff, "8|-5|0xffffff,14|1|0xffffff,9|9|0xffffff,7|3|0xff706d",85,  87, 278, 634, fh)
		if x ~= -1 then
			tap(x,y)
			toast("邀请函哇～")
		else
			x,y = findMultiColorInRegionFuzzy( 0xffffff, "9|-3|0xffffff,13|1|0xffffff,9|6|0x54f68a",85, 87, 278, 634, fh)
			if x ~= -1 then
				tap(x,y)
				toast("邀请函~")
			end
		end
	end--]]
end

if shanhushi == 0 then
	左上角红心小手 = {
		{20,602,0xbe516a},
		{26,602,0xbe516a},
		{25,606,0xbe516a},
	}

elseif shanhushi == 1 then
	左上角红心小手 = {
		{21,599,0x6a51be},
		{23,605,0x6a51be},
		{21,636,0x6655bb},
		{28,641,0xffffff},
	}
end

x,y = findMultiColorInRegionFuzzyByTable(左上角红心小手, 90, 15, 621, 49, 658)
if x ~= -1 then
	halfmemu = true
else
	halfmenu = false
end


function expand()
	if halfmemu == false then--左上角区域红心白手套
		tap(584, 1090)
		if multiColor({
				{  302, 1071, 0xffffff},
				{  323, 1070, 0xffffff},
				{  322, 1090, 0xffffff},
				{  302, 1091, 0xffffff},
				}) == false then--扩张未开
			tap(310, 1079)
		end
	end
end

function stonemove()
	if shanhushi == 0 then
		if multiColor({{   63, 1069, 0xffffff},{   54, 1085, 0xffffff},{   70, 1086, 0xffffff}}) == false then--石头未开
			tap(54, 1085)
		else
			x,y = findMultiColorInRegionFuzzy( 0xffffff, "0|5|0xffffff,8|0|0xffffff,8|9|0xffffff", 90, 287, 700, 343, 729)--技能
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function menu()
	if halfmemu == false then--左上角区域红心白手套
		toast("面板未打开")
		tap(584, 1090)
	else
		stonemove()
	end
end

function shutmenu()
	if halfmemu == true then
		tap(574, 1082)
	end
end

function farmmove()
	if shanhushi == 0 then
		if multiColor({{  146, 1093, 0xffffff},{  146, 1085, 0xffffff},{  150, 1072, 0xffffff}}) == false then--珊瑚未开
			tap(146, 1085)
		else
			x,y = findMultiColorInRegionFuzzy( 0x1c2935, "15|-24|0x1c2935,39|-10|0x1c2935,59|13|0x1c2935,29|-3|0xffffff,54|24|0xffffff", 90, 24, 705, 105, 796)--海带农场
			if x == -1 then
				moveTo(w/2,h-400,w/2,h-200,10)
			end
		end
	end
end

function farm()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0x2b267c, "5|8|0x341f89,-3|6|0x2d237e", 90, 42, 190, 66, 212)--半屏海胆
		if x ~= -1 then
			tap(x,263)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x5ab866, "-5|5|0x58b96a,-10|10|0x55bc72,-6|13|0x45a37f,-1|9|0x419f7a,4|4|0x3b976b", 90, 92, 140, 142, 189)--半屏海带
		if x ~= -1 then
			tap(x,216)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdae6e9, "3|-1|0xdae6e9,7|-2|0xdae6e9,9|2|0xfafffd,6|4|0xfafffd,3|5|0xfafffd,1|7|0xfafffd,7|10|0xdae6e9,9|8|0xdae6e9,11|7|0xdae6e9", 90, 498, 156, 545, 203)--半瓶贝壳
		if x ~= -1 then
			tap(x,244)
			mSleep(500)
			toast("收割贝壳~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x2e2885, "5|5|0x31208e,3|8|0x341f92", 90, 53, 414, 77, 436)--全屏海胆
		if x ~= -1 then
			tap(x,487)
			mSleep(500)
			toast("收割海胆~")
		end
		x,y = findMultiColorInRegionFuzzy( 0x5ab866, "-5|5|0x58b96a,-9|10|0x55bb71,-6|14|0x45a47f,-1|9|0x419f7a,4|4|0x3b976b", 90, 94, 142, 142, 187)--全屏海带
		if x ~= -1 then
			tap(x,439)
			mSleep(500)
			toast("收割海带~")
		end
		x,y = findMultiColorInRegionFuzzy( 0xdae6e9, "3|-1|0xdae6e9,1|6|0xfafffd,4|4|0xfafffd,7|3|0xfafffd,2|7|0xfafffd,7|11|0xdae6e9,9|9|0xdae6e9", 90, 500, 157, 544, 199)--全屏贝壳
		if x ~= -1 then
			tap(x,447)
			mSleep(500)
			toast("收割贝壳~")
		end
	end
end

function stoneup()
	if shanhushi == 0 then
		x,y = findMultiColorInRegionFuzzy( 0xfbae17, "63|1|0xfbae17,-2|60|0xfbae17,63|59|0xfbae17", 90, 11, 695, 109, 1052)--获取升级奖励
		if x ~= -1 then
			tap(x,y)
		end
		multiColTap({
				{   28,  896, 0x223042},
				{   61,  910, 0xe7e8ef},
				{  465,  936, 0x0099bc},
				{  529,  957, 0x0099bc},
			})--升级珊瑚石（蓝色）
		multiColTap({
				{   28,  896, 0x223042},
				{   61,  910, 0xe7e8ef},
				{  465,  936, 0xe8972d},
				{  529,  957, 0xe8972d},
			})--升级珊瑚石（黄色）
		multiColTap({
				{  279,  365, 0xffae00},
				{  289,  365, 0xffae00},
				{  288,  373, 0xffae00},
				{  301,  373, 0xffae00},
				{  311,  684, 0xa6aab0},
			})--获得技能
	end
end

function stoneskill()
	if shanhushi == 0 then
		multiColTap({
				{   93,  782, 0xf9f9f9},
				{  109,  781, 0xf9f9f9},
				{  122,  779, 0xf9f9f9},
				{  108,  829, 0xececec},
			})--火山爆发
		multiColTap({
				{  365,  825, 0x172e3f},
				{  413,  825, 0x172f3f},
				{  388,  826, 0xececec},
				{  359,  805, 0xececec},
			})--月之歌
		multiColTap({
				{  235,  774, 0xe9566e},
				{  243,  790, 0xe9566e},
				{  244,  778, 0xe9566e},
				{  249,  828, 0xececec},
			})--海鲜大餐
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
	if shanhushi == 0 then
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
end