--2017-07-12 自定义速度增加对安卓系统的支持
--2017-07-04 增加农场模式
require "TSLib"
local gamebid = "com.idleif.abyssrium"

function hyStrNum(str)
	if str==nil then return 40 end
	local strn = nil
	for i=1,string.len(str) do
		local num=string.sub(str,i,i)
		if tonumber(num) then
			if strn==nil then
				strn=num
			else
				strn=strn..num
			end
		end
	end
	return tonumber(strn)
end

function upgrade(... ) --升级
	if multiColTap( ... ) then
		sign_upgrade = 1
	end
end

function unlock()--防锁屏
	flag = deviceIsLock()
	if flag ~= 0 then
		sysver = getOSVer()
		sysint = tonumber(string.sub(sysver, 1, 1)..string.sub(sysver, 2, 2))--转化为数字版本号
		if sysint == 10 then
			toast("解锁！",1)
			pressHomeKey(0)
			pressHomeKey(1)
			mSleep(500)
			unlockDevice()
			mSleep(50)
			pressHomeKey(0)
			pressHomeKey(1)
			mSleep(500)
		else
			unlockDevice()
		end
	end
end

function speedup()--加速
	if getOSType() == "ios" then
		tsver = getTSVer();     --获取触动精灵引擎版本
		tsint = tonumber(string.sub(tsver, 1, 1)..string.sub(tsver, 3,3)..string.sub(tsver, 5,5));--转化为数字版本号
		if tsint >= 239 then
			changeSpeed(times)
		end
	end
end

function gamestart()
	runApp(gamebid)
	mSleep(3000)
end

w,h = getScreenSize()
if w == 640 and h == 1136 then
	require "5c"
elseif w == 768 and h == 1024 then
	require "ipad"
elseif w == 1536 and h == 2048 then
	require "ipadhd"
elseif w == 750 and h == 1334 then
	require "6s"
elseif w == 1242 and h == 2208 then
	require "6P"
elseif w == 720 and h == 1280 then
	require "720p"
elseif w == 1080 and h == 1920 then
	require "1080p"
else
	setScreenScale(true, 720, 1280)
	require "720p"
	setScreenScale(false)
end

UINew("丸子深海水族馆挂机辅助","立即运行","立即退出","shszg.dat",0,30)
UILabel("基础功能",20,"center","230,50,92")
UICheck("basic1,basic2","自动点击,自动收集","0@1")
UILabel("点击速度设置",20,"center","230,50,92")
UIRadio("step","iPhone 6+,iPhone 5 或安卓旗舰,低配千元安卓机,选这个保证不卡,自定义速度","3")
UILabel("自定义速度设置",20,"center","230,50,92")
UIEdit("speedset","每秒点击次数","30",15,"left","255,0,0","number")
UILabel("收集设置",20,"center","230,50,92")
UIRadio("bubble","日常红心,活动物品","1")
UILabel("高级功能",20,"center","230,50,92")
UIRadio("func","全屏无菜单,石头模式,农场模式","0")
UILabel("石头模式设置",20,"center","230,50,92")
UICheck("stone1,stone2","升级石头,使用技能","0@1")
UILabel("加速设置(安卓无效)",20,"center","230,50,92")
UIRadio("speed","50倍,双倍,不加速","0")
UILabel("使用须知",20,"left","230,50,92")
UILabel("1. 加速为技能冷却、广告冷却、农场产出时间加速",16,"left","230,50,92")
UILabel("2. 加速功能仅支持 iOS，添加源 apt-test.touchsprite.com 安装加速插件后方可使用",16,"left","230,50,92")
UILabel("3. 请将体积较大的鱼收起以便更容易找到红心。",16,"left","230,50,92")
UILabel("4. 每秒点击次数最好不要超过40次，否则游戏会卡死",16,"left","230,50,92")
UILabel("5. 游戏攻略、问题反馈请加群:414534539",16,"left","230,50,92")
UIShow()

if step == "iPhone 6+" then
	tapms = 15
elseif step == "iPhone 5 或安卓旗舰" then
	tapms = 23
elseif step == "低配千元安卓机" then
	tapms = 40
elseif step == "选这个保证不卡" then
	tapms = 190
elseif step == "自定义速度(安卓无效)" then
	if getOSType() =="ios" then
		tapms = hyStrNum(speedset)
		tapms = 1000/tapms-10
		if tapms < 1 then
			tapms = 30
		end
		mSleep(2000)
	else
		tapms = 30
	end
else
	tapms = 30
end

if speed == "50倍" then
	times = 50
elseif speed == "双倍" then
	times = 2
elseif speed == "不加速" then
	times = 1
end

if basic2 == "自动收集" then
	if bubble == "日常红心" then
		seconds = 5
	elseif bubble == "活动物品" then
		seconds = 2
	end
else
	seconds = 2
end

while (true) do
	speedup()
	unlock()
	if frontAppBid() == gamebid then	
		if basic1 == "自动点击" then
			local t1 = os.time()
			while (true) do
				tap(w/3,h/5,1)
				mSleep(tapms)
				if os.time() - t1 >= seconds then
					break
				end
			end
		end
		daily()--日常弹窗检测
		if basic2 == "自动收集" then
			if bubble == "日常红心" then
				collect()
			elseif bubble == "活动物品" then
				festival()
			end
		end
		if func == "石头模式" then
			menu()
			if stone1 == "升级石头" then
				stoneup()
			end
			if stone2 == "使用技能" then
				stoneskill()
			end
		elseif func == "农场模式" then
			farm()
		elseif func == "全屏无菜单" then
			shutmenu()
		end
	else
		gamestart()
	end
end
