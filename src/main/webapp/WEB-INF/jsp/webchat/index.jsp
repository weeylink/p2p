<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>财客钱包-玩赚新奇生活</title>
		<meta http-equiv="keywords" content="财客,财客钱包,财客理财,投资理财,投资理财产品,投资理财公司">
		<meta http-equiv="description" content="财客是互联网金融理财服务平台,为投资理财用户提供多样化的理财模式，财客钱包定位为年轻人的财富管理社区,财客致力于打造稳健、个性化和场景化的一站式理财平台。">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="imagetoolbar" content="no">
		<meta http-equiv="cache-control" content="no-siteapp">
		
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
		<meta name="format-detection" content="telephone=no">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<link rel="stylesheet" href="${ctx }/static/css/caikr.min.css">
		<!-- 
		<script src="${ctx }/static/js/hm.js"></script>
		 -->
		<script src="${ctx }/static/js/caikr-jquery.js"></script>
		<script src="${ctx }/static/js/caikr-template.js"></script>
		<script src="${ctx }/static/js/jweixin-1.0.0.js"></script>
		<script type="text/javascript">
			var webContext = "/webchat";
			var openId = "";
			var userId = "";
			var invite_code = "";
			var wx_server_openid = "";
			//设置左分隔符为 <!
			baidu.template.LEFT_DELIMITER='<!';
		
			//设置右分隔符为 <!  
			baidu.template.RIGHT_DELIMITER='!>';
			//分销商
			var distributed_type_global = "";
			var reqSourceParam = "";
			var localReqSource = localStorage.getItem("reqSource");
			var localVersion = localStorage.getItem("appVersion");
			//手机唯一标识
			var mobile_imei = "";
			var flag = false;
			if(null != localReqSource && "" != localReqSource){
				flag = true;
				distributed_type_global = localStorage.getItem("distributed_type");
				if(localReqSource.indexOf("ios") != -1){
					mobile_imei = localStorage.getItem("IDFA");
				}else if(localReqSource.indexOf("android") != -1){
					mobile_imei = localStorage.getItem("mobile_imei");
				}
				if(null != localVersion && "" != localVersion){
					localReqSource += localVersion;
				}
				reqSourceParam = "?app=" + localReqSource;
			}
			if(typeof(distributed_type_global) != "undefined" && null != distributed_type_global && "" != distributed_type_global){
				if(flag){
				  distributed_type_global = "&distributed_type=" + distributed_type_global;
				}else{
					distributed_type_global = "?distributed_type=" + distributed_type_global;
				}
			}
			if(typeof(mobile_imei) != "undefined" && null != mobile_imei && "" != mobile_imei){
				if(flag){
					mobile_imei = "&IMEI=" + mobile_imei;
				}else{
					mobile_imei = "?IMEI=" + mobile_imei;
				}
			}
		    wx.config({
			    debug: false, // 本地开发为true，上线后改为false
			    appId: "wx46243440ff8f7af0",
			    timestamp: "1459483752",
			    nonceStr: "dc6494ce-5c47-4fb9-b917-53bf05732113",
			    signature: "910e7b8cfe235f3b820b83f64b18f76e68f50c5a",
			    jsApiList: [
			        'checkJsApi',
			        'onMenuShareTimeline',
			        'onMenuShareAppMessage',
			        'onMenuShareQQ',
			        'onMenuShareWeibo',
			        'hideMenuItems',
			        'showMenuItems',
			        'hideAllNonBaseMenuItem',
			        'showAllNonBaseMenuItem',
			        'translateVoice',
			        'startRecord',
			        'stopRecord',
			        'onRecordEnd',
			        'playVoice',
			        'pauseVoice',
			        'stopVoice',
			        'uploadVoice',
			        'downloadVoice',
			        'chooseImage',
			        'previewImage',
			        'uploadImage',
			        'downloadImage',
			        'getNetworkType',
			        'openLocation',
			        'getLocation',
			        'hideOptionMenu',
			        'showOptionMenu',
			        'closeWindow',
			        'scanQRCode',
			        'chooseWXPay',
			        'openProductSpecificView',
			        'addCard',
			        'chooseCard',
			        'openCard'
			    ]
			});
		    /*
			* 请求来源android or ios
			*/
			var $reqSource = localStorage.getItem("reqSource");
			if(typeof($reqSource) == "undefined" || $reqSource == null || $reqSource == ""){
				localStorage.setItem("reqSource", '');
			}
			//App版本号
			var $appVersion = localStorage.getItem("appVersion");
			if(typeof($appVersion) == "undefined" || $appVersion == null || $appVersion == ""){
				localStorage.setItem("appVersion", '');
			}
			//ios手机唯一标识
			var $IDFA = localStorage.getItem("IDFA");
			if(typeof($IDFA) == "undefined" || $IDFA == null || $IDFA == ""){
				localStorage.setItem("IDFA", '');
			}
			//android手机唯一标识
			var $mobile_imei = localStorage.getItem("mobile_imei");
			if(typeof($mobile_imei) == "undefined" || $mobile_imei == null || $mobile_imei == ""){
				localStorage.setItem("mobile_imei", '');
			}
			//分销商
			var $distributed_type = localStorage.getItem("distributed_type");
			if(typeof($distributed_type) == "undefined" || $distributed_type == null || $distributed_type == ""){
				localStorage.setItem("distributed_type", '');
			}
		</script>
	    <script src="${ctx }/static/js/caikr-common.js"></script>
 		<!-- 
		<script id="indexJs" data-src="/webchat/2.0/js/caikr.min.js?2016031801" src="./财客钱包-玩赚新奇生活_files/caikr.min.js"></script>
		 -->
		 <script id="indexJs" src="${ctx }/static/js/caikr.min.js"></script>
	</head>
	<body>
		<input type="hidden" value="" id="error_code">
		<input type="hidden" value="" id="reqSource">
		<input type="hidden" value="" id="appVersion">
		<input type="hidden" value="" id="type_company_pay">
        <!-- 红包口令  -->
        <article class="award_password">
        	<span class="award_help"></span>
        	<span class="award_close"></span>
        	<section class="award_scroll">
        		<section class="award_pic">
        			<input type="text" placeholder="输入口令，赢取话费红包" id="exchange_code" name="exchange_code">
        			<but id="exchangeBtn">点击<br>兑换</but>
        		</section>
        		<input id="recharge_rowNumId" name="recharge_rowNumId" type="hidden" value="0">
				<input id="recharge_hasNext" name="recharge_hasNext" type="hidden" value="true">
        		<ul class="redPacket_main award_list" id="rechargeList">
        		</ul>
        	</section>
        </article>
		<article class="content_tag" id="contentTag" style="transform: translateX(0vw);">
			<!-- 生活：lv1  -->
			<section class="life_page" id="lifePageBox">
				<!--新布局-->
				<section class="home_more">
					<header>
						<li id="creditCard"><i></i><n>信用卡还款</n>免费领还款券</li>
						<li id="grab_plate"><i></i><n>抢车牌</n>京津广深杭</li>
						<li id="awardTit"><i></i><n>口令红包</n>输入口令 领话费红包</li>
					</header>
					<header>
						<li ontouchend="window.location.href=&#39;/webchat/indoorsman/index&#39;"><i></i><n>宅男险</n>摆脱无趣 嗨出去</li>
						<li ontouchend="window.location.href=&#39;/webchat/overtime/index&#39;"><i></i><n>加班险</n>解救加班"汪"</li>
						<li id="snakeAward"><i></i><n>摇红包</n>摇金币</li>
					</header>
					<aside ontouchend="window.location.href=&#39;#treasure&#39;"></aside>
					<!-- 图片尺寸 360*226 -->
					<section class="carouselimg">
						<section id="activPicture" class="active6-27">
							<article>
								<ul id="newActivity">
									
										<li>
											
											<a href="http://www.caikr.com/caikr-active-web/notice/popIndex/jxgg"><img src="${ctx }/static/images/1457927804711.jpg"></a>
										</li>
									
										<li>
											
											<a href="http://www.caikr.com/caikr-active-web/notice/popIndex/jxhb"><img src="${ctx }/static/images/1459478343734.jpg"></a>
										</li>
									
										<li>
											
											<a href="http://www.caikr.com/caikr-active-web/notice/changan"><img src="${ctx }/static/images/1453086470567.jpg"></a>
										</li>
									
								</ul>
								<ul class="circle"><li class="select"></li><li></li><li></li></ul>
							</article>
						</section>
					</section>
				</section>
				<!-- 内容部分 -->
				<content id="webchatCon">
					<article class="recharge_box" id="headerTag">
							<form id="mobileRechargeFrom" action="https://www.caikr.com/webchat/recharge.html" method="post">
						<!-- 话费充值：lv2 -->
						<section id="rechargeTouch_0" class="recharge bounceOutUp" style="z-index: 0; display: none;">
							<section class="clickBlank"></section>
							<section id="rechargeContent" class="recharge_content">
							<input name="rechargeAmount" id="rechargeAmount" type="hidden" value="100">
							<input name="discountPrice" id="discountPrice" type="hidden">
							<input name="inPrice" id="inPrice" type="hidden">
							<input name="itemId" id="itemId" type="hidden">
							<input name="operator" id="operator" type="hidden">
							<input name="province" id="province" type="hidden">
							<input name="redId" id="redId" type="hidden">
							<input name="redAmount" id="redAmount" type="hidden">
							<input name="tokenValue" id="tokenValue" type="hidden">
								<span class="icon-arr"></span>
								<!-- <img src="/webchat/2.0/images/pic01.jpg" alt=""> -->
								<ul id="telNumber" class="tel_number">
										<li>30</li>
										<li>50</li>
										<li class="selected">100</li>
										<li>200</li>
										<li>500</li>
								</ul>
								<input readonly="" id="telCode" name="mobileNo" style="background:#f5f5f5;color:#999" class="telephone" type="tel" placeholder="手机号码" maxlength="11">
								<h2>可用红包：</h2>
								<select class="tel_award" id="telAwardList">
								</select>
								<section class="ipnut_money">
									<p>新用户完成<span>充值认证</span>首充<span>9</span>折&nbsp;&nbsp;&nbsp;优惠限额<span>10</span>元&nbsp;&nbsp;&nbsp;充值分享再得<span>10</span>元</p>
									<h2><span>支付金额</span><money><i>￥</i><pay id="payMoney">0<pay></pay></pay></money></h2>
								</section>
								<section class="input_but">
									<but id="reMoney">确认充值</but>
								</section>
								<h4 class="close">
									<span class="icon-close"></span>
								</h4>
							</section>
							<!-- 充值支付密码：lv3 -->
							<section id="reEnter" class="recharge_enter" style="display: none;">
								<span class="icon-arr"></span>
								<section id="rePassword" class="rechage_password">
									<h2><span></span>请输入支付密码</h2>
									<input id="paymentPassword" name="payPassword" type="password" placeholder="支付密码" maxlength="20" minlength="6">
									<p></p>
									<section class="re_button">
										<a id="cancel" href="javascript:void(0)">取消</a>
										<a id="confirm" href="javascript:void(0)">确认</a>
									</section>
								</section>
								<!-- 充值成功：lv4 -->
								<section id="reRight" class="rechage_right" style="display: none;">
									<span class="icon_right"></span>
									<h5>您的充值已成功提交</h5>
									<p>预计10分钟内到账</p>
									<p>每月首次分享到朋友圈，立得<b>10</b>元抵用券。</p>
									<section class="re_button">
										<a href="javascript:void(0)" id="rechageButton" style=" background: #f15c24;">　确认　</a>
										<a href="javascript:void(0)" id="queryTradeDetail">交易明细</a>
									</section>
								</section>
								<!-- 充值失败：lv4 -->
								<section id="reError" class="rechage_right rechage_error" style="display: none;">
									<span class="icon_error"></span>
									<h5 id="rechargeErrMsg">充值失败</h5>
									<section class="re_button">
										<a style="display:none"></a>
										<a id="cancel_0" href="javascript:void(0)">确认</a>
									</section>
								</section>
								<h4 class="close offbeat">
									<span class="icon-close"></span>
								</h4>
							</section>
							
						</section></form>
						<!-- 信用卡：lv2 -->
						<section id="rechargeTouch_1" class="recharge bounceOutUp" style="z-index: 0; display: none;">
							<section class="clickBlank"></section>
							<section class="credit_box">
							<form id="creditFrom" action="https://www.caikr.com/webchat/credit.html" method="post">
								<ul id="creditContent" class="credit_content">
									<!-- 还款申请 -->
									<li class="credit_tag01" id="credit_Index"></li>
									<!-- 还款记录 -->
									<li id="creditTagTouch_00" class="credit_tag02"></li>
									<!-- 管理信用卡 -->
									<li id="creditTagTouch_01" class="credit_tag03"></li>
								</ul>
								</form>
							</section>
							<ul id="creditNav" class="credit_nav">
								<li class="selected">还款<br>申请</li>
								<li>还款<br>记录</li>
								<li>管理<br>信用卡</li>
							</ul>
							<h4 class="close">
								<span class="icon-close"></span>
							</h4>
						</section>
					</article>
				</content>
				<!-- 活期宝：lv1_w -->
				<section class="treasure" style="transform: translateX(0px);">
					<section class="iosbug">
						<section class="demandTreasureBlank"></section>
						<!-- 活期宝-首页： lv2_w -->
						<article id="lifeTreasure" class="total_profit bounceOutUp">
							<section class="dm_banner">
								<i></i>
								<span><n>活期宝</n>年化收益率5.5%</span>
							</section>
							<section class="dm_treasure">
								<ul>
									<n></n>
									<li id="hqb_index_1"></li>
									<li id="hqb_index_2"></li>
									<p>余额自动转入<span id="moneyIntoPage">设置&gt;&gt;</span></p>
									<li>
										<a id="moneyOut" href="javascript:void(0)">转出</a>
										<a id="moneyInto" class="can_do" href="javascript:void(0)">转入</a>
									</li>
									<em>首次存50以上 随机送1~10元现金  第2个工作日发放</em>
								</ul>
							</section>
							<span id="closeDetailTre" class="arrow_button"></span>
						</article>
						<!-- 活期宝-转出： lv3_w-->
						<article id="turnOutBox" class="turn_success" style="display: none;">
							<span class="timeclose"></span>
							<section class="in_rollout">
								<n>转出到余额</n>
								<p><b>金 额</b><input id="strOutAmount" type="text" placeholder=""></p>
								<span>*到账时间：实时到账</span>
<!-- 								<i><input id="strOutPayPwd" type="password" class="" placeholder="支付密码"></i> -->
								<but id="moneyOutBtn">确认转出</but>
							</section>
						</article>
						<!-- 活期宝-转入： lv3_w -->
						<article id="turnInBox" class="turn_success" style="display: none;">
							<span class="timeclose"></span>
							<section class="in_rollout">
								<h2>可用余额<money id="hqb_index_balance"></money></h2>
								<h3 id="into_recharge"><a>点击充值</a></h3>
								<p><b>金 额</b><input id="strIntoAmount" type="text" placeholder="建议转入50元以上金额"></p>
								<span>*16:00前转入，当日计息<n>转入金额上限100000元</n></span>
<!-- 								<i><input id="strIntoPayPwd" type="password" class="" placeholder="支付密码"></i> -->
								<but class="change_into" id="moneyIntoBtn">确认转入</but>
							</section>
							<article class="ted_protocol">确认转入意味着您同意<i id="aProtocol">相关协议</i></article>
						</article>
						<!-- 活期宝-明细： lv3_w -->
						<article class="total_profit" id="totalRevenue" style="display:none">
							<section class="turn_into">
								<span>转入</span>
								<span>转出</span>
							</section>
							<span class="back_button"></span>
							<!--交易明细-->
							<section class="transaction"></section>
							<!--空空如也-->
							<section class="time_mpty" style="display:none;">
								<i><n>空</n><n>空</n><n>如</n><n>也</n></i>
								<i></i>
							</section>
						</article>
						<!-- 活期宝-转入-结果详情： lv3_w -->
						<article class="total_profit" id="resultsIncome" style="display:none;">
							<h2 class="resultcomplete">结果详情<a>完成</a></h2>
							<span id="totalShutDown" class="downclose"></span>
							<span class="line"></span>
							<!-- 结果详情 -->
							<section class="d_results"></section>
						</article>
						<!-- 活期宝-转出/入 成功-失败： lv3_w -->
						<article id="turn_result" class="turn_success" style="display:-webkit-block;">
							<span class="timeclose" id="wantToClose"></span>
							<!--转出成功-->
							<section class="roll_out">
								<span></span>
								<p>转出成功</p>
								<h3>成功转出<b></b>元至可用余额</h3>
								<but>确定</but>
							</section>
							<!--转出失败-->
							<section class="roll_out" style="display:none;">
								<span class="turnfailure"></span>
								<p>转出失败</p>
								<h3>余额不足</h3>
								<but>确定</but>
							</section>
							<!--转入成功-->
							<section class="roll_out" style="display:none;">
								<span></span>
								<p>成功转入<b>10000.00</b>元</p>
								<h3></h3>
								<but>确定</but>
							</section>
						</article>
						<!-- 活期宝累计收益： lv3_w -->
						<article class="total_profit" id="totalRevenueList" style="display:none">
							<h1>累计收益 <i>￥</i><span>90.87</span></h1>
							<span id="revenueListClose" class="list_close"></span>
							<section class="time_axis"></section>
							<!--空空如也-->
							<section class="time_mpty" style="display:none;">
								<i><n>空</n><n>空</n><n>如</n><n>也</n></i>
								<i></i>
							</section>
						</article>
						<!-- 活期宝余额自动转入设置： lv3_y -->
						<article class="total_profit moneyInto" style="display:none;">
							<section>
								<span class="text">余额自动转入</span>
								<span class="button"><p>on</p><p>off</p><i></i></span>
							</section>
							<aside>
								<span><b>保留金额　￥</b><input type="tel" id="reservedMoney" maxlength="10"><em class="delete"></em></span>
								<p>*超出<em id="huoqiMoney" style="color: #F15C24; word-wrap: break-word;  text-align: left;">0</em>元的金额将于每日23：00转入活期宝</p>
								<but id="autoIntoBtnSure">确&nbsp;&nbsp;定</but>
							</aside>
							<p>*开启后可设置余额保留金额</p>
							<article class="prompt_loading" style="display: none;">
								<span></span>
								<p>加载中</p>
							</article>
							<article class="prompt_success" style="display: none;">
								<span></span>
								<p>保存成功</p>
							</article>
							<article class="prompt_error" style="display: none;">
								<span></span>
								<p>保存失败</p>
							</article>
							<span class="back_button"></span>
						</article>
					</section>
				</section>
			</section>
			<!-- 理财：lv1_y -->
			<section class="financing_page" id="financingPage">
				<article class="manage_box">
					<section class="manage_top">
						<ul id="productList">
							<li id="-1">
								<span>在售</span>
								<span class="number">7.5%</span>
								<span>年化收益率</span>
								<span class="time"></span>
								<span class="icon01"></span>
								<section>3个月</section>
							</li>
							<li id="-1">
								<span>在售</span>
								<span class="number">8.8%</span>
								<span>年化收益率</span>
								<span class="time"></span>
								<span class="icon01"></span>
								<section>6个月</section>
							</li>
							<li id="-1">
								<span>在售</span>
								<span class="number">9.5%</span>
								<span>年化收益率</span>
								<span class="time"></span>
								<span class="icon01"></span>
								<section>12个月</section>
							</li>
							<li id="0">
								<span class="activity"></span>
								<span class="number">5.5%</span>
								<span>年化收益率</span>
								<span>随存随取</span>
								<section>活期宝</section>
							</li>
						</ul>
					</section>
					<section id="manageMain" class="manage_main">
						<p>已有<span></span>名用户加入财客&gt;&gt;</p>
					</section>
					<section class="manage_bottom">
						<ul>
							<li id="goDetails">
								理财产品由华海保险全额承保<br>
								查看详情&gt;&gt;
							</li>
							<li>
								99起投 | 全程无手续费 | 当日计息
							</li>
							<li>
								每月付息 | 到期还本
							</li>
						</ul>
					</section>
				</article>
				<!-- 产品详情：lv3_w -->
				<article class="product" style="display:none">
					<article id="productDetail" class="adding_financial">
						<input type="hidden" id="detail_dp_id" value="">
						 <input type="hidden" id="mini_investment" value="99">
						 <input type="hidden" id="surplus_money" value="0">
						 
						<span class="arrow_button left"></span>
						<ul class="adding_confirm">
							<li class="name"><b></b><h2 id="product_names"></h2></li>
							<li class="money">
								<span>金额</span>
								<input type="tel" name="" id="buy_money" value="" maxlength="6" placeholder="最低99元起，可投金额 50,000.00元">
							</li>
							<li class="number">
								<span>
									<strong>预期收益</strong>
								</span>
								<span>￥<em id="my_product_revenue">0.00</em></span>
							</li>
							<li class="select">
								<select class="tel_award" id="award_voucher">
									<option value="">选择红包</option>
								</select>
							</li>
							<li><p style="text-indent:.5rem;color:#f15c24;font-size:.75rem;margin-top:.5rem;margin-bottom:-1rem">使用红包后 返现金额即刻返到账户余额</p></li>
							<li class="number">
								<span>
									<strong>实际支付金额</strong>
								</span>
								<input type="hidden" id="re_p_id">
								<span>￥<em id="pay_money">0.00</em></span>
							</li>
							<li class="button">
								<btn id="sureBuy" class="gray">确认买入</btn>
								<p style="margin-top: .75rem;">项目投资方向为汽车租赁等 | 华海保险全额承保本息安全</p>
								<p>确认买入意味着您同意<a href="javascript:void(0);" style="margin-left: 0.5rem;" id="toProtocolLink">相关协议&gt;&gt;</a></p>
							</li>
						</ul>
					</article>
				</article>
				<!-- 确认购入：lv3_y -->
				
			</section>
			<!-- 摇红包：lv1_y -->
			<section class="shake_award" id="shakeAward">
				
				<article class="rock_box">
					<span ontouchend="window.location.href=&#39;#&#39;" class="back_button"></span>
					<!-- <section id="goldBox" class="rock_top">
						<span></span>
						<h3>金币兑换</h3>
					</section> -->
					<section class="rock_content">
						<span id="shakeAw"></span>
						<span class="moneytype05" style="display:none"></span><!-- 金币 -->
						<span class="payment_coupons" style="display:none"></span><!-- 信用卡 -->
						<p class="type02">
							<em>请摇一摇</em>
						</p>
						<p class="type03" style="display: none;">
							<em>恭喜您摇到了</em>
							<em><strong><label id="opNumLabel">0</label>个金币</strong></em>
                            <em>分享到朋友圈金币变更多</em>
                            <em id="appShareEm" style="display: none;"><a href="javascript:void(0);" id="shareGoldCoinBtn">分 享</a></em>
						</p>
						<p class="type04" style="display: none;">
							<em><label id="coinShowLabel">真遗憾，一无所获</label></em>
						</p>
						<p class="type06" style="display: none;">
							<em>恭喜您摇到了</em>
							<em><strong><label id="redNumLabel">0</label>元信用卡还款券</strong></em>
                            <em>独乐乐不如众乐乐，分享好友有惊喜</em>
                            <em id="redAppShareEm" style="display: none;"><a href="javascript:void(0);" id="redShareGoldCoinBtn">分 享</a></em>
						</p>
						<p class="type05" style="display:none;">
							<em>请晃动手机</em>
						</p>
						<ul class="rock_btn" style="display: none;">
							<li>改天再说</li>
							<li>再摇一次</li>
						</ul>
					</section>
				</article>
				<article class="gold_box">
					<section class="redPacket_main gold_main">
						<article class="gold_top">
							<span></span>
							<span>
								<h3>我的金币</h3>
								<p><label id="coinNumLabel">0</label></p>
							</span>
						</article>
							<ul id="goldList"></ul>
					</section>
					<span id="returnAward" class="arrow_button"></span>
				</article>
	
			</section>	
		</article>
		
		<!-- 账户：lv1 -->
		<section class="account_page" id="accountPageBox">
			<!-- 账户详情 -->
			<section class="account_content" id="accoutContent">
				<!-- 新版账户页 -->
				<article class="account">
					<section>
						<ul>
							<li>
								<p>
									<la>
										<b>
											
											  
											  
											    
											  
											
										</b>
									</la>
									<la><i class="cue" id="amountFrozenInfo"></i></la>
									<la id="totalAssets"><n id="summaryAmount"></n>资产总额(元)&gt;&gt;</la>
								</p>
								<!-- <p class="float-bg"></p> -->
								<p id="accInter"><em></em></p>
								<message class="i-message"></message>
							</li>
							<li>
								<p class="float-bg">昨日收益&gt;&gt;<n id="yesterdayInterest"></n></p>
								<p class="float-bg">定期资产&gt;&gt;<n id="investingAmount"></n></p>
								<p class="treasure-bg">活期资产&gt;&gt;<n id="nonFixedAmount"></n></p>
							</li>
						</ul>
						<aside>
							<p>可用余额(元)</p>
							<p id="avaliableAmount"></p>
						</aside>
						<span>
							<a id="accRecharge" href="javascript:void(0)">充 值</a>
							<a id="accWithdrawals" href="javascript:void(0)">提 现</a>
						</span>
						<dl id="accountNavList">
							<dt>
								<p><i></i>我的理财</p>
								<p><i></i>我的保险</p>
							</dt>
							<dt>
								<p><i></i>交易明细</p>
								<p><i></i>我的红包</p>
							</dt>
						</dl>
					</section>
				</article>
				<ul id="accountNav">
					<!-- 我的保险：lv3_w -->
					<li>
						<h2><span></span>我的保险<icon style="display: none;"></icon></h2>
						<section class="integration" id="myInsurance">
						</section>
					</li>
					<!-- 我的理财：lv3_y -->
					<li>
						<h2><span></span><tit id="investmentTit">我的理财</tit><icon style="display: none;"></icon></h2>
						<section id="touchScroll">
							<article class="manageMoney_box" id="money_box_list"></article>
							<!-- 分页查询状态，状态值区分查询有效数据还是历史数据 -->
							<input type="hidden" id="getType" name="getType">
							<!-- 存储返回的最小记录ID,用于请求分页数据 -->
							<input type="hidden" id="minLrd">
							<ul class="agreement_list" style="display: none;"></ul>
						</section>
					</li>
					<!-- 我的明细：lv3_w -->
					<li>
						<h2><span></span>我的明细<icon style="display: none;"></icon></h2>
						<section class="my_finacing" id="touchScroll_my">
							<section class="acc_deta">
								<span class="acc_line"></span>
								<ul class="thisred"></ul>
								<p id="moreTradeFundClik" style="text-align: center;">点击加载更多</p>
							</section>
						</section>
					</li>
					<!-- 我的红包：lv3_y -->
					<li>
						<h2><span></span>我的红包<icon style="display: none;"></icon></h2>
						<section class="redPacket_main">
							<ul id="red_rule_main">
								<h1 class="use_rule">使用规则</h1>
								<li class="input_text">
									<span class="redPacket_left">
										<input id="red_code" name="red_code" type="text" placeholder="输入红包兑换码 " class="redPacket_input">
									</span>
									<span class="redPacket_btn">
										<b class="icon-right"></b>点击兑换
										</span>
								</li>
								<input id="red_rowNumId" name="red_rowNumId" type="hidden" value="0">
								<input id="red_hasNext" name="red_hasNext" type="hidden" value="true">
							</ul>
							<ul id="redPacket">
							</ul>
							<article class="redPacket_success">
								<h1 class="use_rule">使用规则</h1>
								<section>
									<span></span>
									<p id="code_msg">兑换成功</p>
								</section>
								<section class="su_button">
									<a id="code_but">确定</a>
								</section>
							</article>
						</section>
						<!-- 使用规则 -->
						<aside class="rule_main">
							<i class="icon-question"></i>
							<h1 class="use_rule">红包使用规则：</h1>
							<ul class="question">	
								<li>
									<h2>现金红包：</h2>
									<span>
										<p>1.什么是现金红包？</p>
									    <p>现金红包是财客钱包为用户提供的现金奖励，性质等同于现金，可用于购买财客钱包所有产品或直接提现。</p>
									</span>
									<span>
										<p>2.如何使用现金红包？</p>
										<p>用户在“我的红包”页面直接点击现金红包，红包自动消失即视为使用成功。红包金额自动增加至账户的可用余额中。现金红包额度及有效期已在券面注明。</p>
									</span>
									<span>
										<p>3.在什么条件下可以使用现金红包？</p>
										<p>用户账户中的现金红包有效期内即可使用。</p>
									</span>
									<span>
										<p>4.可能导致现金红包不能使用的原因和解决办法是什么？</p>
										<p>1）用户不符合现金红包使用规则中列明的可以使用现金红包的条件，用户应仔细阅读并保证符合上述使用条件。</p>
										<p>2）用户在使用现金红包时网络中断或不稳定，用户可以稍后在网络稳定后再进行使用。</p>
									</span>
									<span>
										<p>5.如何获得现金红包？</p>
										<p>请关注微信服务号【财客钱包】或财客钱包新浪微博官方账号@财客钱包，财客钱包会不定期在官方渠道发布关于获得现金红包的活动。</p>
									</span>
								</li>
								<li>
									<h2>返现红包：</h2>
									<span>
										<p>1.什么是返现红包？</p>
										<p>返现红包是财客钱包为用户提供的投资返现奖励，购买财客钱包定期宝产品时可以使用。</p>
									</span>
									<span>
										<p>2.如何使用返现红包？</p>
										<p>用户在“我的红包”页面点击返现红包后自动进入理财页面，选择对应的定期宝产品并输入投资金额后，在“选择红包”中选择目标返现红包后点击“确认买入”，即可成功使用。返现红包额度、有效期及使用条件均已在券面注明。</p>
									</span>
									<span>
										<p>3.在什么条件下可以使用返现红包？</p>
										<p>用户使用返现红包应同时满足以下条件：</p>
										<p>1）用户在财客钱包购买3、6、12月定期宝产品；</p>
										<p>2）用户账户可用余额大于等于购买定期宝产品金额；</p>
										<p>3）用户账户中有可用的返现红包；</p>
										<p>4）用户的定期宝产品购买订单符合返现红包券面注明的使用条件。</p>
									</span>
								    <span>
										<p>4.单次购买定期宝产品时，最多能够使用几个返现红包？</p>
										<p>1个。</p>
									</span>
								    <span>
										<p>5.返现红包可以找零或兑换成现金吗？</p>
										<p>不可以。</p>
									</span>
								    <span>
										<p>6.购买定期宝时没有成功使用（忘记选/没选中等）返现红包，如何解决？</p>
										<p>建议下次购买定期宝时再次使用。</p>
									</span>
									<span>
										<p>7.可能导致返现红包不能使用的原因和解决办法是什么？</p>
										<p>1）用户不符合返现红包使用规则中列明的可以使用返现红包的条件，用户应仔细阅读并保证符合上述使用条件；</p>
										<p>2）用户在使用返现红包时网络中断或不稳定，建议网络稳定后再进行使用。</p>
									</span>
									<span>
										<p>8.如何获得返现红包？</p>
										<p>请关注微信服务号【财客钱包】或财客钱包新浪微博官方账号@财客钱包，财客钱包会不定期在官方渠道发布关于获得返现红包的活动。</p>
									</span>
								</li>
								<li>
									<h2>信用卡还款券：</h2>
									<span>
										<p>1.什么是信用卡还款券？</p>
										<p>信用卡还款券是财客钱包为用户提供的信用卡还款服务券，向用户自己名下的信用卡还款时可以使用。</p>
									</span>
									<span>
										<p>2.如何使用信用卡还款券？</p>
										<p>用户在“我的红包”页面点击信用卡还款券后自动进入信用卡还款页面，填写信用卡信息并输入还款金额后，在“选择红包”中选择信用卡还款券后点击“确认还款”，即可成功使用。信用卡还款券额度与使用条件均已在券面注明。</p>
									</span>
									<span>
										<p>3.在什么条件下可以使用信用卡还款券？</p>
										<p>用户使用信用卡还款券应同时满足以下条件：</p>
										<p>1）用户账户中有可用的信用卡还款券；</p>
										<p>2）用户名下有正在合法使用的信用卡；</p>
										<p>3）用户账户可用余额大于等于信用卡还款金额，并大于信用卡还款券券面金额。</p>
									</span>
									<span>
										<p>4.向信用卡还款时没有成功使用（忘记选/没选中等）信用卡还款券，如何解决？</p>
										<p>建议下次向信用卡还款时再次使用。</p>
									</span>
									<span>
										<p>5.可能导致信用卡还款券不能使用的原因和解决办法是什么？</p>
										<p>1）用户不符合信用卡还款券使用规则中列明的可以使用信用卡还款券的条件，用户应仔细阅读并保证符合上述使用条件。</p>
										<p>2）用户在使用信用卡还款券时网络中断或不稳定或银行系统忙碌，建议网络稳定后再进行使用；</p>
										<p>3）用户信用卡发卡行尚未开通财客钱包信用卡还款服务。</p>
									</span>
									<span>
										<p>6.如何获得信用卡还款券？</p>
										<p>每月可使用摇红包功能摇取信用卡还款券1张，该福利目前仅限财客栈用户享受（财客栈加入方法详见【常见问题】-【福利方法】）。</p>
									</span>
									<span>
										<p>7.信用卡还款券面值如何确定？</p>
										<p>上月理财产品（活期收益+定期收益）*5%，面值上限为50元。</p>
									</span>
									<span>
										<p>8.信用卡还款券有效期为多久？</p>
										<p>30天。</p>
									</span>
								</li>
								<li>
									<h2>话费充值券：</h2>
									<span>
										<p>1.什么是话费充值券？</p>
										<p>话费充值券是财客钱包为用户提供的话费充值服务券，向财客钱包注册手机号充值话费时可以使用。</p>
									</span>
									<span>
										<p>2.如何使用话费充值券？</p>
										<p>用户在“我的红包”页面直接点击话费充值券，券自动消失并出现“预计十分钟到账”字样即视为使用成功，话费直充入注册手机号中。话费充值券额度已在券面注明。</p>
									</span>
									<span>
										<p>3.在什么条件下可以使用话费充值券？</p>
										<p>用户使用话费充值券应同时满足以下条件：</p>
										<p>1）用户账户中有可用的话费充值券；</p>
										<p>2）用户已通过银行卡充值成功绑定财客钱包；</p>
									</span>
									<span>
										<p>4.可能导致话费充值券不能使用的原因和解决办法是什么？</p>
										<p>1）用户不符合话费充值券使用规则中列明的可以使用话费充值券的条件，用户应仔细阅读并保证符合上述使用条件。</p>
										<p>2）用户在使用话费充值券时网络中断或不稳定或运营商系统忙碌，建议网络稳定后再进行使用；</p>
										<p>3）用户所属运营商尚未开通财客钱包话费充值服务，如广东联通、170号段号码。</p>
									</span>
									<span>
										<p>5.如何获得话费充值券？</p>
										<p>请关注微信服务号【财客钱包】或财客钱包新浪微博官方账号@财客钱包，财客钱包会不定期在官方渠道发布关于获得话费充值券的活动。</p>
									</span>
								</li>
								<li>
									<h2>理赔红包：</h2>
									<span>
										<p>1.什么是理赔红包？</p>
										<p>理赔红包是财客钱包为用户提供的保险服务券，性质等同于现金，可用于购买财客钱包所有产品或直接提现。</p>
									</span>
									<span>
										<p>2.如何使用理赔红包？</p>
										<p>用户在“我的红包”页面直接点击理赔红包，红包自动消失即视为使用成功。红包金额自动增加至账户的可用余额中。理赔红包额度已在券面注明。</p>
									</span>
									<span>
										<p>3.在什么条件下可以使用理赔红包？</p>
										<p>用户账户中的理赔红包有效期内即可使用。</p>
									</span>
									<span>
										<p>4.可能导致理赔红包不能使用的原因和解决办法是什么？</p>
										<p>1) 用户不符合理赔红包使用规则中列明的可以使用理赔红包的条件，用户应仔细阅读并保证符合上述使用条件。</p>
										<p>2) 用户在使用理赔红包时网络中断或不稳定，建议网络稳定后再进行使用。</p>
									</span>
									<span>
										<p>5.如何获得理赔红包？</p>
										<p>请购买并使用财客钱包提供的保险服务，满足保险理赔条件后可获得理赔红包。</p>
									</span>
								</li>	
							</ul>
							<i class="icon-close"></i>
						</aside>
					</li>
					<!-- 我的消息：lv3 -->
					<li>
						<h2><span></span>我的消息<icon style="display: none;"></icon></h2>
						<input type="hidden" id="messageId">
						<section class="message-list" id="message_list">
							
						</section>
						<!-- 消息详情 -->
						<div class="message-details" style="display: none;">
							<section>
								<hgroup id="notice_title"></hgroup>
								<time id="notice_time"></time>
								<div>
									<p id="notice_content"></p>
								</div>
							</section>
							<span class="close_card"></span>
						</div>
					</li>
				</ul>
			</section>
			<!-- 账户浮层  -->
			<article class="float_bg" style="display:none;">
				<section class="account_float">
					<h2>资产总额</h2>
					<p>账户余额+活期资产+定期资产+银行待确认冻结金额</p>
					<h2>昨日收益</h2>
					<p>活期昨日收益+定期昨日收益</p>
					<h2>定期资产</h2>
					<p>定期在投本金+定期待收利息</p>
					<ul>
						<li>
							<span>
								<h3>定期在投本金</h3>
								<p id="summaryInvesting"></p>
							</span>
							<span>
								<h3>定期待收利息</h3>
								<p id="unReceivedInterest"></p>
							</span>
						</li>
						<li>
							<span>
								<h3>定期已收本金</h3>
								<p id="receivedPrincipal" style="color: #6c6c6c;"></p>
							</span>
							<span>
								<h3>定期已收利息</h3>
								<p id="cumulative" style="color: #6c6c6c;"></p>
							</span>
						</li>
					</ul>
				</section>
			</article>
		</section>
		<!-- 设置：lv4 -->
		<article id="accInterBox" class="account_box">
			<!-- 设置总览：lv4 -->
			<section class="details00">
			    <span id="interClose" class="icon-close"></span>
				<section class="account_person" id="lender_basic_info">
					<dl>
						<dt>
							<span id="user_name"></span>
							<span id="atc_status"><!-- <em>实名认证</em><em class="content orange">充值后即完成认证</em> --></span>
							<span id="user_phone"><label><em>手机号</em><em class="phone"></em></label></span>
						</dt>
						<dd>
						   <label>
								<but></but>
		               			<img src="${ctx }/static/images/nologin_2.jpg" onerror="this.src=&#39;/webchat/2.0/images/nologin_2.jpg&#39;">
							</label>
			              <!--  <p id="updateUserHeadButton">
			               	</p> -->
			            </dd>
					</dl>
				</section>
				<section id="accountOperation" class="account_main">
					<dl class="accountOperation0">
						<dt></dt>
						<dd>消息设置</dd>
					</dl>
					<dl class="accountOperation1">
						<dt></dt>
						<dd>邀请好友</dd>
					</dl>
					<dl class="accountOperation2">
						<dt></dt>
						<dd>客服</dd>
					</dl>
					<dl class="accountOperation3">
						<dt></dt>
						<dd>登录密码</dd>
					</dl>
					<dl class="accountOperation4">
						<dt></dt>
						<dd>支付密码</dd>
					</dl>
					<dl class="accountOperation5">
						<dt></dt>
						<dd>财客栈</dd>
					</dl>
					<dl class="accountOperation6">
						<dt></dt>
						<dd>反馈</dd>
					</dl>
					<dl class="accountOperation7">
						<dt></dt>
						<dd>常见问题</dd>
					</dl>
					<dl class="accountOperation8">
						<dt></dt>
						<dd>关于</dd>
					</dl>
					<article class="sign_out accountOperationBtn" id="logout">退出登录</article>
				</section>
				<section class="version" id="version"></section>
			</section>
			<!-- 设置详情：lv5_y -->
			<section class="details01">
				<i class="icon-back"></i>
				<form id="informationForm" name="informationForm" action="https://www.caikr.com/webchat/user/updateInformation">
					<ul id="messageInter"></ul>
					<input type="hidden" id="openId" name="openId">
				</form>
			</section>
			<section class="details02">
				<i class="icon-back"></i>
				<article id="toHide">
                    <em>我的邀请</em>
					<i class="accountDetails02"></i>
                    <h3>邀请码<b></b></h3>
					<span class="erweima"><img id="qrcodeImg" src=""></span>
					<p style="padding: 0 5rem;text-align: center;"><!-- <n style="font-size:16px">邀请奖励</n> --><br>注册即送200元大礼包</p>
					<span>有朋自远方来</span>
				</article>
                 <!--邀请好友列表-我的邀请-->
                <section class="invite-friends" style="display:none;">
                    <span class="friendsimg"></span>
                    <em></em>
					<span class="income_head">
						<p>好友</p>
						<p>注册时间</p>
						<p>我的奖励</p>
					</span>
                    <ul id="income">
                    </ul> 
                </section>
			</section>
			<section class="details03">
				<i class="icon-back"></i>
                <section class="callimg">
                	<!-- <i>联</i>
                	<a id="telCall" href="tel://400-961-8088"></a>
                	<a href="tel://400-961-8088"><span>拨打客服:400-011-2575</span></a>
                	<a id="textCall" href="http://www.sobot.com/chat/h5/index.html?sysNum=b89d7b72bbdb440984d1376d24982ddb"></a>
                	<a href="http://www.sobot.com/chat/h5/index.html?sysNum=b89d7b72bbdb440984d1376d24982ddb"><span>在线咨询</span></a> -->
                    <span>400-961-8088</span>
                    <a id="telCall" href="tel://400-961-8088"></a>
                    <span>点击图标拨打电话</span>
                    <i>联</i>
                </section>
			</section>
			<section class="details04" id="forgetAndResetPassword"></section>
			<section class="details04 details05">
				<i class="icon-back"></i>
				<article>
					<form action="https://www.caikr.com/webchat/user/resetPaypassword" id="resetPaypasswordForm" method="post">
						<ul id="ul_resetPaypassword" style="display:none;">
						    <li>
								修改/找回支付密码
							</li>
							<li>
								<input type="text" name="IDNumber" id="pIDNumber" placeholder="身份证号码" maxlength="18" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="tel" name="telNumber" id="ptelNumber" placeholder="手机号" maxlength="11" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="text" name="messageCode" id="pcodeInput" placeholder="请输入短信验证码" maxlength="6" style="ime-mode: disabled;">
								<input type="button" name="" id="psendCodeBtn" value="获取验证码" opttype="retrievePwd" fieldid="telNumber" vermobileid="ptelNumber" versmstype="pay_pwd">
							</li>
							<li>
								<input type="password" name="payPassword" id="pnewPw" placeholder="新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="password" name="payPassworde" id="pnewPwe" placeholder="确认新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li><but id="resetPaymentPassword">确定</but></li>
						</ul>
					</form>
					<form action="https://www.caikr.com/webchat/user/setPaypassword" id="setPaypasswordForm" method="post">
						<ul id="ul_setPaypassword" style="display:none;">
						    <li>
						                      设置支付密码
						    </li>
							<li>
								<input type="password" name="payPassword" id="pPassword" placeholder="支付密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="password" name="payPassworde" id="pPassworde" placeholder="确认支付密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li><but id="setPaymentPassword">确定</but></li>
						</ul>
					</form>
				</article>

			</section>
			<section class="details11">
				<i class="icon-back"></i>
				<h2></h2>
				<h3>财客栈</h3>
				<!--Vip显示的文案-->
				<ul class="allowedSlide">
					<p>1、财客栈是什么？</p>
					<p>财客栈是对财客钱包VIP用户虚拟聚集地的称呼。</p>
					<p>2、如何成为财客栈成员？</p>
					<p>在财客钱包注册并实名认证已满1个月，累计投资额度满3万元（不含活期宝），系统将会在48小时内自动审核资质，审核通过财客栈成员标识被点亮，则视为成功加入财客栈。</p>
					<p>3、加入财客栈有什么好处？</p>
					<p>a.财客钱包新功能上线优先试用（有红包奖励）。</p>
					<p>b.不定期发红包回馈。</p>
					<p>c.免费参加娱乐活动（爬山、滑雪、采摘、温泉等）。</p>
					<p>d.邀好友除享有普通用户所得奖励外，还有现金红包奖励：</p>
					<p>自2015年3月16日开始 ，财客栈用户邀请好友除享有正常活动奖励外，还可获得好友自注册日起30天内，首次投资额一定比例的现金红包奖励。奖励计算：投资额 x 1% ÷ 12 x 投资期限。【举例：被邀请人买了10000元的6个月产品，邀请人可获得 = 10000元 x 1% ÷ 12 x 6 = 50元】 注：当红包数额低于10元时，奖励按照10元发放。</p>
					
				</ul>
			</section>
			<section class="details06">
				<i class="icon-back">
					<svg viewBox="0 0 42.8 42.8">
						<use xlink:href="${ctx }/static/css/caikr-icons.svg#arr"></use>
					</svg>
				</i>
				<i class="accountDetails06"></i>
				<article>
					<section class="text">
						<span>
							<p>假字假字假字</p>
							<p>假字假字假字</p>
						</span>
						<i></i>
					</section>
					<dl>
						<dt>
							<img src="${ctx }/static/images/accountDetails06-1.png">
							<p>6225 **** **** 8359</p>
						</dt>
						<dd>
							<input type="button" name="" id="" value="解绑">
							<input type="button" name="" id="" value="更换" class="orange">
						</dd>
					</dl>
				</article>
			</section>
			<section class="details07">
				<i class="icon-back"></i>
				<article>
					<i class="accountDetails07"></i>
					<section class="text">
						<i>谏</i>
						<span>
							<p>让你的心声浇灌我的成长</p>
						</span>
					</section>
					<section class="textarea">
						<h3 id="mobile_phone" name="mobile_phone"></h3>
						<textarea id="feedback_content" name="feedback_content" placeholder="你提我改"></textarea>
						<btn id="submitFeedback">提交</btn>
					</section>
				</article>
			</section>
			<section class="details08">
				<i class="icon-back"></i>
				<article>
					<i class="accountDetails08"></i>
					<section class="text">
						<i>问</i>
					</section>
					<ul id="details08Ul" class="details08Ul">
						<li>
							<h3>账户相关</h3>
							<section>
								<h4>Q：如何注册【财客钱包】？</h4>
								<article>
									A：输入手机号并设置密码，即可完成注册【财客钱包】。同一手机号仅可注册一次。
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】是否需要实名认证？</h4>
								<article>
									A：需要。为了高度保障您的账户资金安全、保证您合法享受产品权益，【财客钱包】需要您通过手机绑定、银行卡绑定以及支付密码设置完成实名认证。【财客钱包】对所有个人资料均实行严格的保密措施。
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】支持绑定哪些银行的银行卡？</h4>
								<article>
									A：【财客钱包】目前已支持的银行有：工商银行、农业银行、中国银行、建设银行、招商银行、浦发银行、光大银行、平安银行、华夏银行、中信银行、兴业银行、民生银行、广发银行、邮储银行。
								</article>
							</section>
							<section>
								<h4>Q：我的【财客钱包】账户可以绑定几张银行卡？</h4>
								<article>
									A：为了进一步增强账户资金安全，目前您的【财客钱包】仅可绑定1张借记卡（储蓄卡），资金同卡进出。不支持信用卡绑定。如果您希望更换银行卡，请致电客服处理：400-961-8088（工作时间：工作日9:00-18:00，通话费用按当地市话收费标准收取）。
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】可以为我提供哪些服务？</h4>
								<article>
									A：目前【财客钱包】产品主要分为“惠生活”、“趣理财”“享保险”三大类，现已推出话费充值、信用卡还款、活期宝（随存随取，5.5%年化利率）、定期宝、账户安全险等多项服务，您可即刻享受。抢车牌、宅男险、加班险、重疾险等更多服务不定期开放，欢迎关注。
								</article>
							</section>
							<section>
								<h4>Q：使用【财客钱包】的服务，是否需要先向我的【财客钱包】账户充值？</h4>
								<article>
									A：需要。
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】最少可以存入多少元？</h4>
								<article>
									A：【财客钱包】起存金额0.01元。
								</article>
							</section>
							<!-- <section>
								<h4>Q：【财客钱包】最多可以存入多少元？</h4>
								<article>
									A：【财客钱包】无存款上限。<br />
									银行卡单笔、单日、单月支付限额说明<br />
									<ul>
										<li>
											<span>银行</span>
											<span>单笔限额/单日限额/单月限额</span>
										</li>
										<li>
											<span>中国银行</span>
											<span>5万/20万/50万</span>
										</li>
										<li>
											<span>农业银行</span>
											<span>2万/2万/50万</span>
										</li>
										<li>
											<span>工商银行</span>
											<span>5万/5万/50万</span>
										</li>
										<li>
											<span>建设银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>招商银行</span>
											<span>5000/5000/5万</span>
										</li>
										<li>
											<span>邮储银行</span>
											<span>5000/5000/15万</span>
										</li>
										<li>
											<span>平安银行</span>
											<span>5万/5万/50万</span>
										</li>
										<li>
											<span>广发银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>民生银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>光大银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>中信银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>华夏银行</span>
											<span>20万/20万/50万</span>
										</li>
										<li>
											<span>浦发银行</span>
											<span>5000/5000/15万</span>
										</li>
										<li>
											<span>兴业银行</span>
											<span>5万/5万/50万</span>
										</li>
									</ul>
								</article>
							</section> -->
							<section>
								<h4>Q：向我的【财客钱包】账户充值多久到账？</h4>
								<article>
									A：实时到账。
								</article>
							</section>
							<section>
								<h4>Q：我的【财客钱包】账户中的资金是否可以提现到卡中？多久到达？</h4>
								<article>
									A：可以。您发起资金提现申请后，该笔资金最迟将于下个工作日内到达绑定卡中。提现申请提交后将无法撤回。
								</article>
							</section>
							<section>
								<h4>Q：使用【财客钱包】的服务，是否有服务费？例如充值手续费、提现手续费等？</h4>
								<article>
									A：使用【财客钱包】无任何服务费，您可以放心享受。
								</article>
							</section>
							<section>
								<h4>Q：我和我的亲人（爱人、朋友等）都有【财客钱包】账户，是否可以互相转账？</h4>
								<article>
									A：【财客钱包】目前暂未开通该功能。
								</article>
							</section>
						</li>
						<li>
							<h3>服务相关</h3>
							<section>
								<h4>Q：话费充值功能如何使用？</h4>
								<article>
									A：目前话费充值功能主要通过话费券使用，话费券可通过2种方式得到：<br>
									①参与财客钱包活动；<br>
									②使用“摇红包”得到的金币兑换。<br>
								</article>
							</section>
							<section>
								<h4>Q：话费充值支持哪些运营商号码？充值多久到账？  </h4>
								<article>
									A：话费充值支持全国各省三大运营商（即中国电信、中国移动、中国联通），暂不支持广东联通及虚拟运营商号码（即170开头号段）。充值10分钟内到账。
								</article>
							</section>
							<section>
								<h4>Q：为什么用不了信用卡还款功能？  </h4>
								<article>
									A：目前信用卡还款功能仅针对财客栈用户开放（财客栈加入方法详见【福利相关】），请确认是否已成为财客栈用户。确认方法：点击财客钱包首页右下角的姓名→点击右上角的“设置”→请确认用户名后的V字标识，财客栈用户该标识为橙色，普通用户该标识为灰色。
								</article>
							</section>
							<section>
								<h4>Q：信用卡还款支持多少家银行？</h4>
								<article>
									A：【财客钱包】支持向全国13家主流信用卡发卡行还款：建设银行、中国银行、工商银行、农业银行、邮储银行、招商银行、交通银行、民生银行、光大银行、兴业银行、广发银行、华夏银行、北京银行。
								</article>
							</section>
							<section>
								<h4>Q：信用卡还款是否有还款次数、还款额限制？</h4>
								<article>
									A：单月仅可还款3次，单笔最高还款金额为10000元。
								</article>
							</section>
							<section>
								<h4>Q：使用【财客钱包】向信用卡还款，是否需要该信用卡签约业务？</h4>
								<article>
									A：毋需签约任何业务。
								</article>
							</section>
							<section>
								<h4>Q：使用【财客钱包】向信用卡还款什么时候到账？</h4>
								<article>
									<ul>
										<li>00:00-21:30还款当天到账</li>
										<li>21:30-24:00还款次日到账</li>
									</ul>
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】是否支持向多张信用卡还款？</h4>
								<article>
									A：支持。您持有的信用卡在【财客钱包】的13家发卡行名单中即可。
								</article>
							</section>
							<section>
								<h4>Q：【财客钱包】是否支持向他人的信用卡还款？</h4>
								<article>
									A：不支持。您还款的信用卡需要与您的【财客钱包】实名账户信息保持一致。
								</article>
							</section>
							<section>
								<h4>Q：如何得到信用卡还款券？</h4>
								<article>
									A：每月可使用摇红包功能摇取信用卡还款券1张，该福利目前仅限财客栈用户享受（财客栈加入方法详见【福利方法】）。
								</article>
							</section>
							<section>
								<h4>Q：信用卡还款券的面值如何确定？</h4>
								<article>
									A：上月理财产品（活期收益+定期收益）*5%，面值上限为50元。
								</article>
							</section>
							<section>
								<h4>Q：宅男险、加班险等保险产品是什么、如何体验？</h4>
								<article>
									A：该类保险服务为财客钱包与华海保险共同出品，旨在为年轻人提供新奇好玩的保险理财服务，不定期推出，页面内会详细说明体验方法，欢迎关注。
								</article>
							</section>
							<!-- <section>
								<h4>Q：账户安全险是什么？</h4>
								<article>
									A：该保险由阳光保险提供，旨在全面保障【财客钱包】用户进行线上各类操作时的账户资金安全，提供全额赔付服务。
								</article>
							</section>
							<section>
								<h4>Q：账户安全险有效期是多久？</h4>
								<article>
									A：账户安全险永久保护您的【财客钱包】账户安全。
								</article>
							</section>
							<section>
								<h4>Q：车险团购是什么？ </h4>
								<article>
									A：车险团购是【财客钱包】旗下即将推出的一款针对驾驶行为良好的特定年轻群体的“特”实惠车险团购服务。正在筹备中，敬请期待。
								</article>
							</section> -->
							<section>
								<h4>Q：活期宝是什么？</h4>
								<article>
									A：活期宝是【财客钱包】旗下面向年轻用户开放的有稳定收益的活期产品。资金用于对汽车金融、房屋贷款、个人小微信贷的混合型分散投资，固定5.5%年化收益率，随存随取，无手续费。
								</article>
							</section>
							<section>
								<h4>Q：购买活期宝后，【财客钱包】将如何保障我的权益？</h4>
								<article>
									A:【财客钱包】为您提供了多重保障：<br>
									①承诺全额回购：资产合作方承诺发生逾期后进行全额回购，确保投资者100%本息安全。<br>
									②风险保障金：【财客钱包】会准备每笔投资额3%的保障金存入银行专管账户，以备先行垫付。<br>
									③优选资产：12道严格风控，遵循小额标准且充分分散。
								</article>
							</section>
							<section>
								<h4>Q：活期宝的5.5%收益率是否固定？有收益计算公式吗？</h4>
								<article>
									A：目前活期宝产品收益率是固定的5.5%年化收益率。活期宝收益=活期宝余额×5.5%×持有天数/365天
								</article>
							</section>
							<section>
								<h4>Q：活期宝最少可以存入多少元？</h4>
								<article>
									A：活期宝无起存金额限制，起息金额50元（即活期宝账户余额大于等于50元时开始计息）
								</article>
							</section>
							<section>
								<h4>Q：活期宝最多可以存入多少元？</h4>
								<article>
									A：活期宝为限量产品，目前每个实名用户限额100000元（即活期宝账户中本金最多为100000元），继续投资请选择定期宝。
								</article>
							</section>
							<section>
								<h4>Q：我什么时候可以看到我的活期宝收益？</h4>
								<article>
									A：当日16:00前转入活期宝的金额，当日即可产生收益，收益会在次日00:15左右计入您的活期宝账户中。若次日00:00之前有转出操作，则该笔转出本金不会产生收益。当日16:00之后转入活期宝的金额，收益会在次日产生。
								</article>
							</section>
							<section>
								<h4>Q：活期宝资金转入、转出、获得收益是否会受周末、节假日影响？</h4>
								<article>
									A：活期宝不受周末、节假日影响，您可照常进行资金转入、转出、获取收益。
								</article>
							</section>
							<section>
								<h4>Q：我的活期宝本金+利息已经大于100000元了，新增收益如何计算？</h4>
								<article>
									A：新增收益按照活期宝账户实际金额计算，收益累计至您的活期宝账户中。
								</article>
							</section>
							<section>
								<h4>Q：假设我上午11:00先转出活期宝1000元，然后14:00又向活期宝转入了1000元，收益如何计算？</h4>
								<article>
									A：收益计算以您当日16:00时活期宝账户余额为准。
								</article>
							</section>
							<section>
								<h4>Q：活期宝资金转入、转出多久到账？</h4>
								<article>
									A：活期宝资金转入、转出至【财客钱包】账户实时到账。提现至银行卡最迟将于下个工作日内到账。
								</article>
							</section>
							<section>
								<h4>Q：定期宝是什么？</h4>
								<article>
									A：定期宝是【财客钱包】旗下面向年轻用户开放的有稳定收益的定期产品。资金用于对汽车金融、房屋贷款、个人小微信贷的混合型分散投资，固定为3月期、6月期、12月期产品，无手续费。
								</article>
							</section>
							<section>
								<h4>Q：购买定期宝后，【财客钱包】将如何保障我的权益？</h4>
								<article>
									A:【财客钱包】为您提供了多重保障：<br>
									①全额本息保障：资产本息由华海保险全额承保；<br>
									②承诺全额回购：资产合作方承诺发生逾期后进行全额回购，确保投资者100%本息安全；<br>
									③风险保障金：【财客钱包】会准备每笔投资额3%的保障金存入银行专管账户，以备先行垫付；<br>
									④优选资产：12道严格风控，遵循小额标准且充分分散。
								</article>
							</section>
							<section>
								<h4>Q：定期宝提供哪几种定期产品？</h4>
								<article>
									A：定期宝目前提供三种定期产品：3月期（年化收益率7.5%）、6月期（年化收益率8.8%）、12月期（年化收益率9.5%）。均为固定年化收益率。
								</article>
							</section>
							<section>
								<h4>Q：定期宝最少可以存入多少元？</h4>
								<article>
									A：定期宝起存金额99元。
								</article>
							</section>
							<section>
								<h4>Q：定期宝最多可以存入多少元？</h4>
								<article>
									A：定期宝无存款上限。
								</article>
							</section>
							<section>
								<h4>Q：我什么时候可以看到我的定期宝收益？</h4>
								<article>
									A：定期宝投资当日即产生收益，每月最后1日（如遇周末、节假日则提前至每月最后1个工作日）付息到您的【财客钱包】账户，到期还本到您的【财客钱包】账户。具体可到【我的理财】页面，查看目标产品的【还款计划】。
								</article>
							</section>
							<section>
								<h4>Q：定期宝资金转入、获得收益是否会受周末、节假日影响？</h4>
								<article>
									A：定期宝不受周末、节假日影响，您可照常进行资金转入、获取收益。
								</article>
							</section>
							<section>
								<h4>Q：我想了解华海保险为定期宝承保的保险条款，去哪里看？</h4>
								<article>
									A：合作方华海保险及其承保条款已在电脑端财客钱包官网上展示，欢迎使用电脑打开www.caikr.com查看。
								</article>
							</section>
							<section>
								<h4>Q：“摇红包”是什么？</h4>
								<article>
									A：摇红包是【财客钱包】推出的一项功能，趣味、福利尽在这里。您可每日登录【财客钱包】使用“摇红包”摇取金币，该金币可用于兑换各种红包并使用。<br>
									财客栈用户每月可使用摇红包功能摇取信用卡还款券1张（财客栈加入方法详见【福利方法】）。
								</article>
							</section>
						</li>
						<li>
							<h3>福利相关</h3>
							<section>
								<h4>Q：如何才能获取【财客钱包】红包？</h4>
								<article>
									A：目前获取【财客钱包】红包主要有4种方式：：<br>
									①成为财客栈用户；<br>
									②使用“摇红包”功能；<br>
									③参与【财客钱包】活动；<br>
									④【财客钱包】系统不定期发放<br>
									欢迎您随时关注。
								</article>
							</section>
							<section>
								<h4>Q：成为财客栈用户我有什么好处？</h4>
								<article>
									A：①网站新功能上线优先试用（有红包奖励）。<br>
									②不定期发红包回馈。<br>
									③每月免费领取1张信用卡还款券；<br>
									④免费参加娱乐活动（爬山、滑雪、采摘、温泉等）；<br>
									⑤邀好友除享有普通用户所得奖励外，还有现金红包奖励：<br>
									自2015年3月16日开始 ，财客栈用户邀请好友除享有正常活动奖励外，还可获得好友自注册日起30天内，首次投资额一定比例的现金红包奖励。奖励计算：投资额×1%÷12×投资期限。【举例：被邀请人买了10000元的6个月产品，邀请人可获得 = 10000元×1%÷12×6 = 50元】<br>
									注：当红包数额低于10元时，奖励按照10元发放。
								</article>
							</section>
							<section>
								<h4>Q：如何成为财客栈用户？</h4>
								<article>
									A：您在【财客钱包】定期宝投资总金额累计达到30000元，且财客钱包实名认证已满1个月，系统将会在48小时内自动审核资质，审核通过后，账户标识自动点亮为橙色，即成为财客栈用户。
								</article>
							</section>
							<section>
								<h4>Q：我想最快了解【财客钱包】的一切动态，有什么好方法吗？</h4>
								<article>
									A：打开微信搜索“财客”完成关注，绑定微信即可实时收取。
								</article>
							</section>
							<section>
								<h4>Q：我希望结识其他使用【财客钱包】的用户，去哪里？</h4>
								<article>
									A：您可以选择以下几种途径：<br>
									【财客钱包】用户交流QQ群：432027373 433030554<br>
									【财客钱包】官方微博：http://weibo.com/caikrcom<br>
									【财客钱包】官方贴吧：http://tieba.baidu.com/f?kw=%B2%C6%BF%CD&amp;fr=ala0&amp;qq-pf-to=pcqq.discussion
								</article>
							</section>
							<section>
								<h4>Q：上面的内容没有解决我的问题，怎么办？</h4>
								<article>
									A：请您致电【财客钱包】客服处理：400-961-8088（工作时间：工作日9:00-18:00，通话费用按当地市话收费标准收取）。您还可以向service@caikr.com邮箱发送邮件，帮助我们更好地改进“常见问题”，如您的建议被采纳，我们将赠送现金红包。
								</article>
							</section>
						</li>
					</ul>
				</article>
			</section>
			<section class="details09">
				<i class="icon-back"></i>
				<section class="aboutus">
					<article>
						<dl>
							<span>北京财客金融信息服务有限公司</span>
							<span>50,000,000</span>
							<span>2014年10月成立<i>注册资金</i></span>
						</dl>
						<h2>持续的服务创新，总有新奇</h2>
						<p>
							<span>口令红包</span>
							<span>信用卡还款</span>
							<span>趣味保险</span>
						</p>
						<p>
							<span><i>活期宝</i><i>随存随取</i>5.5%</span>
							<span><i>定期宝</i>9.5%</span>
							<span>摇红包</span>
						</p>
						<h2>我们的合作伙伴，只为稳健动心</h2>
						<p>
							<span><i>华海保险</i><i>100%</i>保本保息</span>
							<span><i>连连支付</i><i>第三方</i><i>支付和</i>资金存管</span>
							<span><i>长安保险</i>战略入股</span>
						</p>
						<h3>我</h3>
					</article>
				</section>
			</section>
			<section class="details10">
				<i class="icon-back"></i>
				<article>
					<section class="text">
						<i></i>
					</section>
					<form action="https://www.caikr.com/webchat/user/changeMobileNum" id="changePhoneNumForm" method="post">
						<ul>
							<li id="old_mobile_num_li">
							</li>
							<li>
								<input type="hidden" name="strOldMobileNum" id="old_mobile_num" value="">
								<input type="tel" name="strOldMobileCode" maxlength="6" id="old_mobile_numcode" value="" placeholder="请输入短信验证码">
								<input type="button" id="ver_btn_old_mobile" value="获取验证码" vermobileid="old_mobile_num" versmstype="old_mobile_num">
							</li>
							<li>
								<input type="tel" name="strNewMobileNum" maxlength="11" id="new_mobile_num" value="" placeholder="请输入新手机号：">
							</li>
							<li>
								<input type="tel" name="strNewMobileCode" maxlength="6" id="new_mobile_numcode" value="" placeholder="请输入短信验证码">
								<input type="button" id="ver_btn_new_mobile" value="获取验证码" vermobileid="new_mobile_num" versmstype="new_mobile_num">
							</li>
							<li><but id="change_mobile_submit_btn">确定</but></li>
						</ul>
					</form>
					<ul class="success">
						<li class="success">您的手机号已更改为：<span>13800000000</span></li>
						<li><but>确定</but></li>
					</ul>
				</article>
			</section>
		</article>
		<!-- 首次充值：lv3_w -->
		<section id="accountRecharge_00" class="box_recharge">
			<section>
				<h3><i>充</i>是时候给零用钱"跳个槽"了</h3>
				<form action="https://www.caikr.com/webchat/user/wapCharge" method="POST">
					<ul>
						<li><span class="text"><em>真实姓名</em><input type="text" name="acct_name" id="acct_name"></span></li>
						<li><span class="text"><em>身份证号</em><input type="text" name="id_no" id="id_no" maxlength="18"></span></li>
						<li><span class="text"><em>银行卡号</em><input type="tel" name="card_no" id="card_no" maxlength="19"></span></li>
						<li style="display:none;"><span class="text"><em>手机号码</em><input type="tel" name="bank_reserved_mobile" id="bank_reserved_mobile" placeholder="请输入银行预留手机号" maxlength="11"></span></li>
						<li><span class="text"><em>充值金额</em><input type="number" placeholder="最低充值1元" name="amount" id="amount" maxlength="12"></span></li>
						<li><but>下一步</but></li>
						<li><input type="hidden" name="appSource"></li>
					</ul>
				</form>
				<p class="tagging" id="tagg_recharge_first"></p>
				<h5>特别说明：</h5>
				<span class="guarantee" id="jyt_first_tip" style="display:none;">
				 * 为保证账户安全，只可绑定1张银行卡，充值提现，同卡进出，请添加常用银行卡。<br>
				 * 中国邮政储蓄银行20:30至24:00不接受交易。<br>
				 * 广发银行23:00-08:00之间不接受交易。</span>
				<span class="guarantee" id="xf_first_tip">
				 * 为保证账户安全，只可绑定1张银行卡，充值提现，同卡进出，请添加常用银行卡。<br>
				</span>
				<span class="guarantee" name="ll_first_tip" style="display:none;">
				* 为保障账户安全，目前只支持绑定一张银行卡，充值提现同卡进出，请添加常用的银行卡。<br>
				* 工商银行、邮储银行、浦发银行、中国银行、农业银行用户请开通银联在线支付业务后继续完成充值，如有疑问请联系4009618088。
				</span>
				 <h5 name="bank_limit_title">银行限额：</h5>
				<aside class="thelist" id="bank_limit_first"></aside>
			</section>
			<h4 class="re_close"></h4>
		</section>
		<!-- 再次充值：lv3_w -->
		<section id="accountRecharge_01" class="box_recharge">
			<section>
				<h3><i>充</i>是时候给零用钱"跳个槽"了</h3>
				<form action="https://www.caikr.com/webchat/user/wapCharge" method="POST">
					<ul>
						<li class="card_number" id="card_number">
							<img id="recharge_img" src="">
							<span></span>
						</li>
						<input type="hidden" placeholder="真实姓名" name="acct_name" id="old_acct_name">
						<input type="hidden" placeholder="身份证号" name="id_no" id="old_id_no">
						<input type="hidden" placeholder="银行卡号" name="card_no" id="old_card_no">
						<input type="hidden" name="bank_reserved_mobile" id="old_bank_reserved_mobile">
						<li id="bankLimit" style="padding:.25rem 0 .15rem"></li>
						<li><span class="text"><em>充值金额：</em><input type="number" placeholder="最低充值1元" name="amount" id="old_amount" maxlength="12"></span></li>
						<li><but>下一步</but></li>
						<li><input type="hidden" name="appSource"></li>
					</ul>
				</form>
				<p class="tagging" id="tagg_recharge_again"></p>
				<h5 name="second_tip" style="height: 1.5rem;line-height: 1.8rem;">特别说明：</h5>
				<span class="guarantee" id="jyt_second_tip" style="display:none;">
				 * 中国邮政储蓄银行20:30至24:00不接受交易。<br>
				 * 广发银行23:00-08:00之间不接受交易。</span>
				 <span class="guarantee" name="ll_second_tip">工商银行、邮储银行、浦发银行、中国银行、农业银行用户请开通银联在线支付业务后继续完成充值，如有疑问请联系4009618088</span>
				 <h5 name="bank_limit_title">银行限额：</h5>
				<aside class="thelist" id="bank_limit_again"></aside> 
			</section>
			<h4 class="re_close"></h4>
		</section>
		<!-- 充值验证手机验证码：lv3_y -->
		<section class="box_recharge" id="reserved_mobile_section">
			<section>
				<h3><i>充</i>是时候给零用钱"跳个槽"了</h3>
				<form action="https://www.caikr.com/webchat/user/pay" method="POST">
				    <input type="hidden" value="" id="recharge_atc_status" name="atc_status">
				    <input type="hidden" value="" id="order_id" name="order_id">
				    <input type="hidden" value="" id="recharge_mobile" name="mobile">
					<ul>
						<li>
							<span class="payMoney">充值金额:￥<em id="recharge_amount"></em></span>
							<p>收款公司：北京财客金融信息服务有限公司</p>
						</li>
						<li class="verification">
							<input type="tel" id="verify_code" name="verify_code" maxlength="6" placeholder="请输入短信验证码" autocomplete="off" style="ime-mode: disabled;">
							<input type="button" value="获取验证码" id="ver_btn_reserved_mobile" vermobileid="recharge_mobile" versmstype="recharge">
						</li>
						<li><but>下一步</but></li>
					</ul>
				</form>
				<p class="promptText">验证码已发送至您的银行预留手机号<em id="reserved_mobile_txt"></em></p>
			</section>
			<article class="prompt_loading" style="display: none;">
				<span></span>
				<p id="loadingTxt">充值中..</p>
			</article>
			<article class="password_pop" id="reserved_mask_pop" style="display: none;">
				<text id="mask_pop_icon"></text>
				<h4 class="single_line"><a style="background: rgb(241, 92, 36);" id="sure_mask_pop">确定</a></h4>
			</article>
			<h4 class="re_close"></h4>
		</section>
		<!-- 提现：lv3_w -->
		<section id="accountRecharge_02" class="box_recharge rawals">
		  	<section>
			  	<h3><i>提</i>"取之不尽"的是信任</h3>
	  		 	<ul style=" width: 100%;"> 
		  		 	<form id="withDrawalFrom" name="withDrawalFrom" action="https://www.caikr.com/webchat/user/withDrawal/enchashment" method="post">
						<input id="with_card_no" name="card_no" type="hidden">
						<input id="with_acct_name" name="acct_name" type="hidden">
						<input id="with_id_no" name="id_no" type="hidden">
						<input id="with_bank_id" name="bank_id" type="hidden">
						<input id="pay_password" name="pay_password" type="hidden">
						<input name="pay_type" id="with_Pay_type" type="hidden">
						<input name="dynamic_pwd" id="with_Dynamic_pwd" type="hidden">
		  		 		<li>可用余额(元)<p id="with_mount">￥0,00</p></li>
		                <li><span class="text"><em>提现金额</em><input id="with_amount" name="amount" type="number"></span></li>
		                <li>
		                 <select name="xf_bank_name" id="xf_bank_name">
		                  <option value="">请选择银行名称</option>
		                  <option value="BOC">中国银行</option>
		                  <option value="ABC">中国农业银行</option>
		                  <option value="ICBC">中国工商银行</option>
		                  <option value="CCB">中国建设银行</option>
		                  <option value="PSBC">中国邮政储蓄银行</option>
		                  <option value="CEB">中国光大银行</option>
		                  <option value="BOCOM">交通银行</option>
		                  <option value="CIB">兴业银行</option>
		                  <option value="CMBC">民生银行</option>
		                  <option value="CNCB">中信银行</option>
		                  <option value="PAB">平安银行</option>
		                  <option value="CMB">招商银行</option>
		                 </select>
		                </li>
		                <li id="N_LianLianBank"><span><img name="with_img" src="${ctx }/static/images/bank_null.png"></span><span style="-webkit-box-flex: 1;"><em name="with_bankCard"></em><h4>持卡人：<em name="with_realName"></em></h4></span></li>
		               
		                <!--  连连-->
		                <li class="lianlianBank"><span><img name="with_img" src="${ctx }/static/images/bank_null.png"></span><span style="-webkit-box-flex: 1;"><em name="with_bankCard"></em></span></li>
		                <div class="lianlianBank" style="padding: .5625rem;color:#ffffff;"><h4>持卡人：<em name="with_realName"></em></h4></div>
		                <!--  连连-->
		               
		                <li>
		                	<p>到账时间：</p>
		                	<p>工作日14：00前提现，当日到账；</p>
		                	<p>工作日14：00后提现，第二个工作日到账。</p>
		                </li>
		                <li>
		                	<select id="with_province" name="province"></select>
		                	<select id="with_city" name="city">
		                        <option>请选择城市</option>
							</select>
		                </li>
		                <li><span class="text"><input id="with_openedBranchName" name="openedBranchName" type="text" placeholder="请输入开户行名称"></span></li>
		                <li><but>确认提现</but></li>
		            </form>
	  		 	</ul>
	  		 	<p class="tagging" id="tagg_tx" style="width:100%;"></p>
  		 	</section>
		  	<h4 class="re_close"></h4>
        </section>
        <!-- 忘记支付密码 -->
        <section id="payPassword" class="various">
			<section class="password_pop">
				<h3>支付密码<a>忘记支付密码？</a></h3>
				<input id="pay_pd" name="pay_pd" type="password" placeholder="支付密码" maxlength="20" minlength="6">
				<span id="pay_msg"></span>
				<!-- <n style=" display: block; margin-bottom: -1rem;">工作日<em style="color: #f15c24; font-style: normal;">8:30~21:30</em>还款<em style=" color: #f15c24; font-style: normal;">2</em>小时到账<br>其他时间顺延至下个工作日</n> -->
				<n></n>
				<h4><a id="pay_center">取消</a><a id="pay_but">确定</a></h4>
			</section>
		</section>
		<!-- 支付密码锁定 _w-->
		<section class="various">
			<section class="password_pop">
				<p><i></i>支付密码已被锁定，<br>请明日再试。</p>
				<h4><a>取消</a><a>找回密码</a></h4>
			</section>
		</section>
		<!-- 恭喜您支付成功 _w-->
		<section class="various">
			<section class="password_pop">
				<p><i class="successful"></i>恭喜您，支付成功</p>
				<h4><a>取消</a><a>确定</a></h4>
			</section>
		</section>
		<!-- 余额不足 _w-->
		<section class="various">
			<section class="password_pop">
				<p><i></i>可用余额不足</p>
				<h4><a>取消</a><a>确定</a></h4>
			</section>
		</section>
		<!-- 单行提示框 _w-->
		<section id="com_msg" class="various">
        	<section class="password_pop">
            	<p><i id="msg_flag"></i><b id="msg"></b></p>
                <h4 class="single_line"><a id="mas_but">确定</a></h4>
            </section>
        </section>
        <!-- 上传文件提示框 -->		
        <section id="upload_head_image" class="various">
        	<section class="password_pop">
                
                <div id="wrapper">
			        <div class="uploader-container">
			            <div id="filePicker">选择文件</div>
			        </div>
			        <!-- Croper container -->
			        <div class="cropper-wraper webuploader-element-invisible">
			            <div class="img-container">
			                <img src="" alt="">
			            </div>
			
			            <div class="upload-btn">上传所选区域</div>
			
			            <div class="img-preview"></div>
			        </div>
			    </div>
				
            </section>
        </section>
        
		<!-- 风控信息 w-->
		<section class="text_introduce" id="controlInformation" style="display:none;">
			<span class="text_close" id="closeAgain"></span>
			<section class="starttext">
				<h3>风控信息</h3>
				<ul>
					<section id="theSliding">
						<p class="duction_magr">风险保障</p>
						<p>全程保险保障</p>
						<p class="duction_magr">账户资金安全由阳光保险全额承保。</p>
						<p>承诺全额回购</p>
						<p class="duction_magr">资产合作方承诺发生逾期后进行全额回购，确保投资者100%本息安全。</p>
						<p>风险保障金</p>
						<p class="duction_magr">每笔投资抽取3%的保障金存入银行专管账户，以备先行垫付。</p>
						<p>优选债权投资</p>
						<p class="duction_magr">优选借款人，12道严格风控，遵循小额借款标准且充分分散。</p>
						<p>资金操作安全</p>
						<p class="duction_magr">专业级网络安全，资金同卡进出，银行预留手机号验证。</p>
						<p>资金存管</p>
						<p class="duction_magr">您的资金全额存管在第三方支付公司账户中，保障资金安全。</p>
						<p>法律保护</p>
						<p class="duction_magr">由君泽君律师事务所为投资者提供全程法律保护。</p>
					</section>
				</ul>
			</section>
		</section>
		
		<!-- 项目详情 w-->
		<section class="text_introduce" id="article_details" style="display:none;">
			<span class="text_close" id="closeDetails"></span>
			<section class="starttext">
				<h3>项目详情</h3>
				<ul>
					<section id="theSliding">
						<p>项目描述</p>
						<p class="duction_magr">本项目是由财客钱包推出的，自动对资产合作方推荐的汽车金融、房屋贷款及个人小微信贷等项目进行分散化混合投资的理财计划，投资的项目平均单笔金额在5万以下，并且遵循区域分散、用途分散、人群分散的原则，充分分散和降低风险。</p>
						<p>资产合作方介绍</p>
						<p class="duction_magr">捷越信贷：国内领先的小额信贷服务提供商，由上海证大集团和德润天恒投资发展（北京）有限公司共同出资成立，总部位于北京。截至2015年3月，公司已经在全国100多个城市建立门店158家，利用强大的全国协同服务网络为客户提供全方位、个性化的普惠金融服务。</p>
						<p class="duction_magr">捷翊租赁：面向个人消费者的汽车融资租赁、以租代售等金融服务提供商，已在全国20个一、二线城市开展业务。</p>
					</section>
				</ul>
			</section>
		</section>
		<!-- 口令红包说明 -->
		<section class="text_introduce" style="display:none" id="award_reader">
			<span class="text_close" id="award_close"></span>
			<section class="starttext">
				<h3>说明</h3>
				<ul>
					<section id="theSliding">
						<p class="duction_magr">口令红包：是财客钱包和各合作商家联合发放的一串口令字符，在活动页输入口令就可兑换特定红包。</p>
						<p class="duction_magr">如何获得口令：通过合作商家或财客钱包官方活动可获得口令。</p>
					</section>
				</ul>
			</section>
		</section>
		<!-- 信用卡还款协议 -->
		<section class="text_introduce" style="display:none;" id="credit_agreement_info">
			<span class="text_close" id="close_credit_agreement_info"></span>
			<section class="relevantAgreement">
				<h3 class="p_agreement">信用卡还款协议</h3>
				<ul>
					<section id="theSliding">
						<p class="maDistance">第一条 总则</p>
						<p>本协议是您与北京财客金融信息服务有限公司（以下简称“本公司”）就信用卡还款服务等相关事项所订立的合约。请您仔细阅读本协议<b>（特别是以粗体下划线标注的内容）</b>，如果您对本协议的条款有疑问，请通过本公司客服渠道进行询问，本公司将向您解释条款内容。如果您不同意本协议的任意内容，或者无法准确理解本公司对条款的解释，请不要进行后续操作。您通过相关页面点击确认或以其他方式选择接受本协议，即表示您同意接受本协议的全部内容。</p>
						<p class="maDistance">第二条 您的权利、义务</p>
						<p>一、您自愿申请使用本公司信用卡还款服务。</p>
						<p>二、您对本公司信用卡还款服务如有疑问、建议或意见时，可拨打本公司客服电话【400-961-8088】或登录本公司网站【http://www.caikr.com】进行咨询和投诉。</p>
						<p>三、您办理信用卡还款业务时，须同时遵守拟还款的信用卡发卡银行的相关业务规则；您使用信用卡还款服务时，同时应遵守本公司其他业务规定或规则。</p>
						<p>四、您办理本公司信用卡还款业务，【应登录本公司的网站或客户端，或以本公司特别告知的其他方式链接登录】，因您操作不当造成的损失由您自行承担。</p>
						<p>五、您应对您使用信用卡还款服务的行为负责，您在本公司信用卡还款页面点击确认还款后，即表示您不可撤销地授权本公司按照您的指令完成信用卡还款。您理解并同意，本公司只是您信用卡还款指令的执行者，除非本公司没有依照您的指令进行操作，或操作指令错误，否则本公司不对您使用信用卡还款服务产生的损失负责，该等损失由您自行承担。</p>
						<p>六、您应对您使用信用卡还款服务过程中填写的信息（包括但不限于信用卡号、持卡人姓名、还款金额等）的真实性、完整性、准确性、有效性负责。如您利用光学扫描识别、语音识别等便利技术的识别功能提供前述信息的，您应尽等同于自行填写方式下的审慎核实义务。<b>无论该等识别功能是由本公司提供或是第三人提供，您均不应降低审慎核实程度。因您未尽前述义务而导致资金损失的，由您自行承担。</b>您必须妥善保管本人信用卡卡片相关信息和在本公司处预留的信息，除在本公司办理业务时使用外，不向任何其他人、其他网站、电话或短信的问询提供上述信息内容。</p>
						<p>七、您理解并同意，您通过信用卡还款服务查询到的账单信息，如无特别说明，则仅指人民币账单信息，不包含外币账单信息；如您通过信用卡还款服务查询到外币账单的，该外币账单仅供参考，如需查询准确的信用卡外币账单信息的，您可联系发卡银行进行查询。</p>
						<p>八、您在使用信用卡还款服务时遵守国家法律、法规和本公司的相关规定，且不违背社会公共利益和公共道德。若您从事非法活动或不正当交易等所产生的一切责任，由您独立承担。</p>
						<p>九、您不得以与第三方发生纠纷为理由拒绝支付使用本服务的应付款项。</p>
						<p>十、<b>若您发现有第三人冒用或盗用您的账户及密码，或其他任何未经合法授权的情形，应立即以有效方式通知本公司，要求本公司暂停相关服务，否则由此产生的一切责任由您自行承担。</b>同时，您应理解本公司对该等请求采取行动需要合理期限，在此之前，本公司对第三人使用该服务所导致的损失不承担任何责任。</p>
						<p class="maDistance">第三条 本公司的权利、义务</p>
						<p>一、本公司有权自行判断是否受理您的信用卡还款业务，如您的注册资料或其他信息不符合本公司要求的，本公司有权拒绝向您提供信用卡还款服务，且无须提前通知您。</p>
						<p>其他信息不符合本公司要求的，本公司有权拒绝向您提供信用卡还款服务，且无须提前通知您。</p>
						<p>二、本公司提供的信用卡还款服务仅支持人民币还款，不支持外币还款。如您通过本公司渠道以人民币方式偿还信用卡外币账单的，您须按照发卡银行的要求进行相应操作后方可最终完成还款。</p>
						<p>三、本公司有权根据自身业务发展增加、减少支持信用卡还款的银行类型，调整信用卡还款服务的内容；本公司有权对信用卡还款功能进行升级、改造等。</p>
						<p>四、在下述任一情况下，本公司有权中止或终止向您提供信用卡还款服务而不承担任何赔偿责任：</p>
						<p>1、您利用本公司从事非法交易或不正当活动的；</p>
						<p>2、本公司判断您已经违反本协议相关约定；</p>
						<p>3、本公司发现您注册资料或交易行为存在虚假、异常或可能违反相关法律法规规定的。</p>
						<p>五、本公司有义务在技术上确保信用卡还款服务的安全、有效、正常运行，保证您的正常使用，但本公司不承担因通讯、停电故障、黑客攻击、银行问题、不可抗力等非本公司原因所引起服务中断、服务错误等责任。</p>
						<p>六、本公司有权基于向您更好地提供信用卡还款服务或提供其他本公司服务之目的，保留并使用您在使用信用卡还款服务中填写的资料以及您使用信用卡还款服务的相关记录。</p>
						<p>七、本公司对您在注册中提供的相关身份资料及在使用信用卡还款服务时所填写或产生的信息负有保密义务，但有权根据法律法规规定，或获得您授权，或为完成交易指令的需要，向有权机构或第三方提供。</p>
						<p>八、本公司有权向您收取合理的交易服务费，并可根据业务发展需要对服务费进行调整。本公司应向您明示交易服务费用标准（含调整后的标准）。如您不接受相关费用标准，则不应继续使用信用卡还款服务。若您继续使用信用卡还款服务的，则视为接受本公司的相关费用标准。</p>
						<p>九、无论本协议因任何原因终止\中止的，本公司均不退回您基于使用信用卡还款服务而支付给本公司的服务费用，但信用卡还款页面另有约定的除外。</p>
						<p>十、本公司负责向您提供信用卡还款业务咨询服务，并在本公司网站公布功能介绍、交易规则等内容。</p>
						<p class="maDistance">第四条 协议修改</p>
						<p>一、本公司将可能不定期更改和升级信用卡还款服务并修改本协议，一旦内容发生变动，本公司将会通过网站公告方式告知您。</p>
						<p>二、如果您不同意本公司对相关条款所做的修改，您应停止使用本协议约定的服务。一旦您在30天内仍继续使用本协议约定服务的，视为您理解并接受修改后的协议条款。</p>
						<p class="maDistance">第五条 差错和争议的解决</p>
						<p>一、您自身未按本协议或本公司信用卡还款页面的规定操作，或由于自身其他原因造成信用卡还款指令未执行、未适当执行、延迟执行的，本公司不承担责任，您应及时通过拨打本公司客服电话【400-961-8088】通知本公司。本公司应积极调查并告知您调查结果。</p>
						<p>二、您在通过本公司平台进行信用卡还款时，仍应遵守还款来源银行对其单笔转账最高金额和每日累计转账最高金额的限制。因该限制导致的还款失败，本公司不承担责任。</p>
						<p>三、双方在履行本协议的过程中，如发生争议，应协商解决。<b>协商不成的，任何一方均可向本公司所在地人民法院提起诉讼。</b></p>
						<p>四、如您在本服务页面设置了还款提醒，但该提醒仅作为还款时间、还款金额等的参考，而非您是否应该还款及何时还款的依据；即使本公司未及时向您发送还款提醒，您仍应根据您和信用卡发卡行的约定进行还款。</p>
						<p class="maDistance">第六条 违约责任</p>
						<p>本协议任何一方违反本协议规定的内容，给另一方造成损害的，应当承担违约责任，赔偿另一方因此而造成的损失，包括财产损失、名誉损失等。</p>
						<p class="maDistance">第七条 法律适用及管辖</p>
						<p>一、本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律，没有相关法律规定的，参照通用国际商业惯例和（或）行业惯例。因本协议产生之争议，均应依照中华人民共和国法律予以处理，并由被告住所地人民法院管辖。</p>
						<p>二、本协议未约定事宜，均以本公司网站所不时公布的《服务协议》及相关附属规则为补充；本协议与《服务协议》及相关附属规则不一致的地方，以本协议为准。</p>
					</section>
				</ul>
			</section>
		</section>
		
		<!-- 理财-理财详情页-投资协议 w-->
		<section class="text_introduce" style="display:none;">
			<span class="text_close"></span>
			<section class="starttext">
				<h3>风控信息</h3>
				<ul>
					<section>
						这世界上从未有过绝对的安全，任何安全也都是有风险量化后的最小计量数值。金融的美，就美在你可以预测这风险，你可以度量这风险，你可以把握这风险。
					</section>
				</ul>
			</section>
		</section>
		<!-- 活期宝-介绍页： lv3_w -->
		<section class="text_introduce" id="currentTreasure" style="display:none;">
			<span class="text_close"></span>
			<section class="starttext">
				<h3><i></i>活期宝<p>稳定收益的活期产品</p></h3>
				<ul>
					<section id="theSliding">
						<p class="duction_magr">1.活期宝，是财客钱包旗下面向年轻用户开放的有稳定收益的活期产品。</p>
                        <p>2.活期产品，定期收益。</p>
                        <p>活期宝平台上转入的资金，用于对汽车金融，房屋贷款，个人小微信贷的混合型分散投资，固定5.5%收益率，随存随取。</p>
                        <p class="duction_magr">起息金额：50元。</p>
                        <p>3.活期宝产品收益展现时间：</p>
                        <p class="duction_magr">16:00前转入活期宝的金额，当天即可产生收益，并且会在第二天00:15左右计入您的账户中，若在第二天00:00之前有赎回操作，则赎回的本金不会产生收益。</p>
                        <p>产品收益计算公式：</p>
                        <p>昨日收益=活期宝余额×5.5%/365</p>
                        <p class="duction_magr">节假日照常计息。</p>
                        <p>转入限额：</p>
                        <p class="duction_magr">活期宝为限量产品，目前每个实名用户限额100000元，继续投资请选择定期宝。</p>
                        <p class="duction_magr">当活期宝本金+利息大于100000元时，除了不能继续向活期宝账户转入金额以外，每日收益仍按照活期宝账户实际金额计算，收益累计至您的活期宝账户中。</p>
                        <p class="duction_magr">转入转出时间：实时</p>
                        <p class="duction_magr">全程0手续费</p>
                    </section>
				</ul>
			</section>
		</section>
		<!-- 陌生人活期宝介绍 -->
		<section class="stranger_treasure" style="display:none;">
			<span class="d_treasure"></span>
			<section class="stranger_page">
                <aside>
                    <img src="${ctx }/static/images/img01_23.jpg">
                    <p>活期宝</p>
                </aside>
                <article>
                    <p>稳定收益的活期产品</p>
                    <p>
                        <span><i>5.5%</i>收益率</span>
                        <span><i>100000元</i>限额</span>
                        <span><i>50元</i>起息金额</span>
                    </p>
                    <p>
                        <span>随存随取</span>
                        <span><i>全程0元</i>手续费</span>
                        <span><i>实时</i>转入转出</span>
                    </p>
                    <h2><span>*</span>当日16：00前转入金额即可产生收益，次日00:15计入账户</h2>
                    <h3>次日00：00之前有转出操作，转出本金不会产生收益</h3>
                    <h2><span>*</span>当活期宝本金+利息大于100000元时，除了不能继续向活期宝账户转入金额以外，每日收益仍按照活期宝账户实际金额计算，收益累计至您的活期宝账户中。</h2>
                    <but class="hqb_join_us">立即加入</but>
                </article>
            </section>
		</section>
		<!-- 公共的按钮提示框-->
		<section id="commonButtonTips" class="various">
			<section class="password_pop">
				<p><i></i></p>
				<h4 class="single_line"></h4>
			</section>
		</section>
		<!-- 提现成功成功 _w-->
		<section id="withMsg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>恭喜您，提现申请成功<span style="padding:0;">您的资金预计1个工作日后到账</span></p>
				<h4><a id="withMsgCenter">取消</a><a id="withBut">确定</a></h4>
			</section>
		</section>		 
		<!-- 修改支付密码成功 _w-->
		<section id="resetPwdMsg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>恭喜您，修改支付密码成功</p>
				<h4 class="single_line"><a id="repwdBut">确定</a></h4>
			</section>
		</section>		
		<!-- 设置支付密码成功 _w-->
		<section id="pwdMsg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>恭喜您，设置支付密码成功</p>
				<h4 class="single_line"><a id="pwdBut">确定</a></h4>
			</section>
		</section>
		<!-- 信用卡还款成功页面 -->
		<section id="creditResult" class="various">
			<section class="password_pop">
				<p><i id="credit_li"></i><msg id="creditMsg"></msg></p>
				<h4 class="single_line"><a id="creditBut">确定</a></h4>
			</section>
		</section>
		<!-- 修改用户成功 _w-->
		<section id="resetforgetPwdMsg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>恭喜您，修改密码成功</p>
				<h4><a id="resetforgetMsgCenter">取消</a><a id="resetforgetPwdBut">确定</a></h4>
			</section>
		</section>
		<!-- 点击兑换操作提示是否兑换 -->
		<section id="exchangeGoodsOperatorMsg" class="various" style="display: none;">
			<section class="password_pop">
				<p><i class="successful"></i>本次兑换将花费您<label id="exchangeGoodsHintLabel">0</label>金币</p>
				<h4><a id="exchangeGoodsCancel">让我想想</a><a id="exchangeGoodsOk">我要兑换</a></h4>
			</section>
		</section>
		<!-- 兑换成功Or失败提示-->
		<section id="exchangeGoodsResutlMsg" class="various" style="display: none;">
			<section class="password_pop">
				<p><i class="successful"></i><label id="exchangeGoodsResutlLabel">恭喜您，兑换成功</label></p>
				<h4><a id="goRedPackage">去看看</a><a id="exchangeResultOk">确定</a></h4>
			</section>
		</section>
		<!-- 删除信用卡-->
		<section id="deleteCredit" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>你确定要删除该信用卡吗</p>
				<h4><a id="deleteCancel">取消</a><a id="deleteEnter">确定</a></h4>
			</section>
		</section>
		<!-- 用户反馈成功 -->
		<section id="feedBackMsg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>感谢您为财客钱包提出宝贵的意见，我们将尽快处理您的反馈信息</p>
				<h4 class="single_line"><a id="feedBackBut">确定</a></h4>
			</section>
		</section>
		<!-- 修改后话费充值成功提示-->
		<section id="mobile_recharge_Msg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>充值成功<span style="padding:0;">预计10分钟内到账</span></p>
				<h4 class="single_line"><a id="rechargeEnter">确定</a></h4>
			</section>
		</section>	
		<!-- 摇车牌提示信息 -->
		<section id="prizeActivityMsg" class="various">
			<section class="password_pop">
				<p><i class="mark"></i><label id="prizeActivityPtext">请登录！！！</label></p>
				<h4><a id="prizeActivityCancel">取消</a><a id="prizeActivityOk">确定</a></h4>
			</section>
		</section>	
		<!-- 兑换码兑换成功提示-->
		<section id="exchange_recharge_Msg" class="various">
			<section class="password_pop">
				<p><i class="successful"></i>兑换成功</p>
				<h4 class="single_line"><a id="exchangeEnter">确定</a></h4>
			</section>
		</section>		
		<!-- 加载数据遮罩 _w-->
		<section class="mask">
        	<span></span>
        </section>
        <!-- 设置单独调用页 -->
		<article id="accInterBoxIndependent" class="account_box" style="none">
			<!-- 设置详情：lv5_y -->
			<section class="details04 details05" style="display: -webkit-box;">
				<i class="icon-back" style="-webkit-transform: rotate(-90deg);"></i>
				<article>
					<form action="https://www.caikr.com/wx/user/resetPaypassword" id="IresetPaypasswordForm" method="post">
						<ul id="Iul_resetPaypassword" style="">
							<li>
								<input type="text" name="IDNumber" id="IpIDNumber" placeholder="身份证号码" maxlength="18" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="tel" name="telNumber" id="IptelNumber" placeholder="手机号" maxlength="11" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="text" name="messageCode" id="IpcodeInput" placeholder="请输入短信验证码" maxlength="6" style="ime-mode: disabled;">
								<input type="button" name="" id="IpsendCodeBtn" value="获取验证码" opttype="retrievePwd" fieldid="telNumber" vermobileid="IptelNumber" versmstype="pay_pwd">
							</li>
							<li>
								<input type="password" name="payPassword" id="IpnewPw" placeholder="新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="password" name="payPassworde" id="IpnewPwe" placeholder="确认新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li><but id="IresetPaymentPassword">确定</but></li>
						</ul>
					</form>
					<form action="https://www.caikr.com/wx/user/setPaypassword" id="IsetPaypasswordForm" method="post">
						<ul id="Iul_setPaypassword" style="display: none;">
							<li>
								设置支付密码  <!-- 修改/找回支付密码 -->
							</li>
							<li>
								<input type="password" name="payPassword" id="IpPassword" placeholder="支付密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li>
								<input type="password" name="payPassworde" id="IpPassworde" placeholder="确认支付密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
							</li>
							<li><but id="IsetPaymentPassword">确定</but></li>
						</ul>
					</form>
				</article>
			</section>
		</article>
		<!-- 账户安全险 w-->
		<section class="safety_risk" style="display:none;" id="introduceSection">
			<span class="fetclose"></span>
			<section class="group_juxian">
				<h2></h2>
				<h3>免费抢车牌</h3>
				<p>本产品由财客钱包与捷翊汽车租赁联合推出，</p>
				<p>京 津 广 深 杭未摇号和摇号不中的用户免费领取，</p>
				<p>只需关注财客微信号[财客]或下载财客钱包app，</p>
				<p>并在活动页输入摇号时登记的手机号，</p>
				<p>摇号结果公布1天后，对未中签的用户进行抽奖，</p>
				<p>一等奖为您所在城市的车牌3年免费使用权，</p>
				<p>同时还有大量现金红包奖品，100%中奖。</p>
				<article>
					<span>一等奖</span>
					<span>1名</span>
					<span><i>1块车牌</i><em>3年免费使用权</em></span>
				</article>
				<article>
					<span>二等奖</span>
					<span>100名</span>
					<span><i>免费乘坐</i>滴滴专车1个月</span>
				</article>
				<article>
					<span>三等奖</span>
					<span>1000名</span>
					<span><i>获得财客钱包</i>30元红包</span>
				</article>
				<article>
					<span>参与奖</span>
					<span>10000名</span>
					<span>获得10元现金</span>
				</article>
				<h4></h4>
			</section>
		</section>
		<!-- 团购车险 w-->
		<section class="a_insurance" style="display:none;">
			<span class="fetclose"></span>
			<ul>
				<p>团购车险</p>
				<p>针对驾驶行为良好的</p>
				<p>特定年轻群体的“特”实惠车险团购服务，</p>
				<p>即将开放预约，敬请期待。</p>
			</ul>
		</section>
		<!-- 相关协议 -->
		<section class="text_introduce" id="relatedAgreements" style="display:none">
			<span class="text_close"></span>
			<section class="relevantAgreement">
				<h3>活期宝服务协议</h3>
				<ul>
					<section id="theSliding">
						<p class="maDistance">第一条总则</p>
						<p>本协议是您（投资者）在充分了解并清楚知晓活期宝理财服务的投资风险和自身风险承受能力的前提下，与北京财客金融信息服务有限公司（以下简称“本公司”）本着平等互利的原则，就本公司活期宝理财服务相关事宜订立的合约。请您仔细阅读本协议<b>（特别是以粗体下划线标注的内容）</b>。如果您不同意本协议的任意内容，或者无法准确理解本公司对条款的解释，请不要进行后续操作。</p>
						<p class="maDistance">第二条释义</p>
						<p>在本协议中，除非另有解释，下列词语具有如下含义：</p>
						<p><b>一、活期宝：指本公司为投资者提供的可以通过本公司系统进行操作和购买的收益权和债权的混合投资理财产品，收益权/债权转让人将特定债权授权本公司通过活期宝平台转让给若干理财用户，投资人通过交易收益权/债权的实现获得本公司承诺的收益；</b></p>
						<p>二、投资人：指参考本公司的推荐，并于本公司平台上自行选择购买他人收益权/债权的自然人；</p>
						<p>三、收益率：指通过综合考虑资产受让折价、正常偿付本息等因素后，投资人有可能实现的投资本金按年度计算的增值率。</p>
						<p>四、资产权益：指投资人拥有的全部权益（包含全部收益权、债权等），以人民币计价；</p>
						<p>五、工作日：指中华人民共和国法律规定的工作日（法定工作日）；</p>
						<p class="maDistance">第三条您的权利与义务</p>
						<p>一、您自愿投入累计不超过10万元人民币，申请使用本公司活期宝服务，经本公司审查同意后，您有权要求使用本公司提供的相应服务。</p>
						<p>二、您享有正常的投资收益，并对所投资金随存随取。经合理测算，本公司确定您的投资收益率为5.5%。</p>
						<p>三、您有权定期查看本公司提供的资产情况报告。</p>
						<p>四、您对本公司活期宝服务如有疑问、建议或意见时，可拨打本公司客服电话 【400-961-8088】 或登录本公司网站【http://www.caikr.com】进行咨询和投诉。</p>
						<p>五、您使用本公司活期宝业务，需要通过电子方式签署本协议；同时应遵守本公司其他业务规定和规则。</p>
						<p>六、您在本公司活期宝平台上使用的银行卡，必须为本人个人储蓄卡，并具有网上支付功能；您须保证所用于投资的资金来源合法，您是该资金的合法所有人，如果第三人对资金归属、合法性问题发生争议，由您自行解决。本公司执行通过安全程序的交易指令后，您不得要求变更或撤销该指令。</p>
						<p>七、您使用本公司活期宝业务，【应登录本公司的网站或客户端，或以本公司特别告知的其他方式链接登录】，因您操作不当造成的损失由您自行承担；您须保证提供的资料真实、准确、完整、有效，对于因您提供信息不真实或不完整所造成的损失由您自行承担。</p>
						<p>八、您有义务对借款人的信用信息及本公司的业务内容保密。对于本公司基于推荐投资的需要提供给您的借款人的个人证件及其他相关信用信息，您确保仅用于投资参考，不向任何第三人透露。如果您擅自、不恰当地向他人透露借款人的信用信息或本公司的商业秘密，由此对借款人或本公司造成的损失，由您承担全部责任。</p>
						<p>九、您变更账户信息、通讯地址、电话等相关重要信息，须及时通知本公司。因您未及时通知本公司而导致自身受到损失的，由您自行承担责任。</p>
						<p class="maDistance">第四条本公司的权利和义务</p>
						<p>一、本公司有权根据您资信情况或交易记录，决定是否受理您的活期宝业务。本公司可以根据注册信息等相关要素对您从事交易的权限和身份进行核实。</p>
						<p>二、本公司可以在法律法规许可和您授权的范围内使用您的资料和交易记录。 本公司有权对您的注册资料及交易行为进行查阅，在对您注册资料或交易行为存疑，或认为存在安全隐患可能时，本公司有权采取限制您的账户交易权限、冻结您的账户、要求您提供必要的凭证等措施，您应予配合，且不得因此向本公司主张任何权利。</p>
						<p>三、本公司应当按照本协议的规定，为您进行服务，必须恪尽职守，履行诚实、信用、谨慎、有效的居间方服务。</p>
						<p>四、本公司有义务在技术上确保整个网络交易平台的安全、有效、正常运行，保证您顺利使用本协议约定服务，并向您提供交易记录、交易资金状态、账户状态等查询的服务。但不承担因通讯、停电故障、黑客攻击、银行问题、不可抗力等非本公司原因所引起交易中断、交易错误引起的责任。</p>
						<p>五、本公司的所有服务均免费。</p>
						<p>六、本公司将对用户需求信息进行相应的匹配，并保证借款人已经过本公司的信用资质审核。</p>
						<p><b>七、【本公司将采取各种方式尽可能使得该等信息真实、准确，但本公司并不能对所有用户发出的信息内容的准确性、完整性和真实性作出保证。如果您对上述信息存在怀疑的，则您可以选择终止相应的行为，此种情形下，您应向有关协议相对方追究由此造成的损失。】</b></p>
						<p>八、本公司有义务及时报告您投资资金收益变化情况。</p>
						<p>九、本公司对您在注册中提供的相关身份资料及在交易中产生的交易记录负有保密义务，但有权利根据法律法规规定向有权查询的法定机构，或为完成交易指令的需要向第三方提供。</p>
						<p>十、本公司承诺不会以任何其他形式占有或挪用您投资活期宝业务的资金。</p>
						<p class="maDistance">第五条协议修改</p>
						<p><b>一、本公司将可能不定期更改和升级活期宝业务并修改本协议，一旦内容发生变动，本公司将会通过网站公告方式告知您。</b></p>
						<p>二、如果您不同意本公司对相关条款所做的修改，您应停止使用本协议约定的服务。一旦您在30天内仍继续使用本协议约定服务的，视为您理解并接受修改后的协议条款。</p>
						<p class="maDistance">第六条差错和争议的解决</p>
						<p>一、您若发现自身未按规定操作，或由于自身其他原因造成缴费指令未执行、未适当执行、延迟执行的，应及时通过拨打客服电话【400-961-8088】通知本公司。本公司应积极调查并告知您调查结果。</p>
						<p>二、双方在履行本协议的过程中，如发生争议，应协商解决。<b>协商不成的，任何一方均可向本公司所在地人民法院提起诉讼。</b></p>
						<p class="maDistance">第七条协议的中止和终止</p>
						<p>一、您可以主动向本公司提出终止服务，由本公司注销您账户，您即解除与本公司的服务协议关系。但注销后，本公司仍保留下列权利及义务：</p>
						<p>1、保留和合理使用您的注册资料及以前的交易行为记录；</p>
						<p>2、如您在注销前在本公司平台上存在违法行为或违反本协议的行为，或因您注销前发生的交易在注销后引发争议的，本公司仍可行使追究的权利。</p>
						<p>二、您同意，本公司不对因下述任一情况而发生的服务中断或终止而承担任何赔偿责任：</p>
						<p>1、本公司基于单方判断，认为您已经违反本服务条款的规定，将中断或终止向您提供本公司部分或全部服务功能，并将您用户资料加以删除；</p>
						<p>2、本公司在发现您注册资料虚假、异常交易或有疑义或有违法嫌疑时，不经通知有权先行中断或终止您的账户、密码，并拒绝您使用本公司部分或全部服务功能。</p>
						<p class="maDistance">第八条违约责任</p>
						<p>本协议任何一方违反本协议规定的内容，给另一方造成损害的，应当承担违约责任，赔偿另一方因此而造成的直接损失。</p>
						<p class="maDistance">第九条协议的解释</p>
						<p>本协议的成立、生效、履行和解释，均适用中华人民共和国法律；法律无明文规定的，应适用本公司制定的业务规定和通行的金融惯例。</p>
						<p class="chapter">北京财客金融信息服务有限公司<i></i></p>
					</section>
				</ul>
			</section>
		</section>
		<!--理财页面进入的投资协议 -->
		<section class="text_introduce" id="service_agreement" style="display:none">
			<span class="text_close"></span>
			<section class="relevantAgreement">
				<h3>投资服务协议</h3>
				<ul>
					<section id="theSliding">
						<!-- <p class="maDistance">第一条总则</p> -->
						<p>投资方（以下或称甲方、投资人）：</p>
						<p>证件类型：身份证</p>
						<p>证件号码：</p>
						<p>财客用户名：</p>
						<p>租赁资产对象（以下或称乙方）：</p>
						<aside>
							<table style="width:838px" cellpadding="5" cellspacing="5">
								<tbody><tr>
									<td colspan="7">资产基本信息 </td>
								</tr>
								<tr>
									<td width="126">合同编号 </td>
									<td width="82">承租人姓名 </td>
									<td width="125">身份证号 </td>
									<td width="114">租赁金额（元） </td>
									<td width="114">用途 </td>
									<td width="177">本次转让资产价值（元） </td>
									<td width="100">备注 </td>
								</tr>
							</tbody></table>
						</aside>
						<p>丙方（资产合作方）：北京捷众汽车租赁有限公司</p>
						<p>丁方（投资者服务方）：北京财客金融信息服务有限公司</p>
						<p>现经各方协商一致，为保证本业务的顺利进行，各方约定如下：</p>
						<p class="maDistance">第一条业务描述</p>
						<p>1.1 甲方拥有富余资金拟以汽车租赁资产投资的方式以获取投资收益，丁方掌握丰富的汽车租赁资源信息并拥有专业的信用评价和信息管理服务平台；</p>
						<p>1.2 根据丙方代表人与乙方签署的汽车租赁合同（以下称基础合同）并已建立汽车租赁关系，由此发生的该项合同原始汽车租赁资产为人民币【  <span id="dp_money_temp"></span> 】元（以下称目标资产）；乙方及丙方通过丁方的互联网平台服务向甲方转让目标资产一定数量的目标汽车租赁权利份额；</p>
						<p>1.3甲方已成为财客钱包注册用户，愿意接受丁方基于财客钱包平台提供的投资者服务（详见附录《投资者详细服务条款》），由丁方提供可供汽车租赁资产投资信息，并由丁方提供与购买汽车租赁资产协议的履行有关的其他服务，甲方自行确定是否投资。</p>
						<p class="maDistance">第二条甲方的权利与义务</p>
						<p>2.1甲方按照财客钱包的规则及财客钱包投资服务协议，通过对丙方推荐的拟转让目标汽车租赁资产经点击“投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。</p>
						<p>2.2甲方按照财客钱包的规则及财客投资服务协议，即不可撤销地授权丁方，委托其合作的第三方支付机构等，从在第三方支付中甲方名下账户（“甲方财客钱包账户”）中，将转让价款划转至丙方指定的名下账户（“丙方财客钱包账户”）中。</p>
						<p>2.3甲方应当以其自有合法资金参与本次交易。</p>
						<p>2.4未经丁方同意，不得向第三方转让本合同项下的全部或部分权利。</p>
						<p class="maDistance">第三条乙方的权利与义务</p>
						<p>3.1具有履行本合同项下权利和义务的能力。</p>
						<p>3.2提供给平台及投资人的所有资料都是真实、准确、完整而没有任何隐瞒。</p>
						<p>3.3目标汽车租赁资产所对应的汽车租赁资产承租人关系真实、合法、有效，没有争议。</p>
						<p class="maDistance">第四条丙方的权利与义务</p>
						<p>4.1提供给平台的所有资料都是真实、准确、完整而没有任何隐瞒，不存在任何未向丁方披露的重大承租人或或有承租人。</p>
						<p>4.2就原承租人发生偿还租金风险时，配合投资人及丁方履行一切必要的维权行动。</p>
						<p class="maDistance">第五条丁方的权利与义务</p>
						<p>5.1应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台信息服务。</p>
						<p>5.2对各方提供的信息、资产及其它基于本合同提供的资料依法保密。</p>
						<p>5.3有义务对各方主体资格和汽车租赁资产的情况进行形式审查，保证在平台上注册的各方主体真实存在并签署相关合同。</p>
						<p class="maDistance">第六条风险提示</p>
						<p>6.1 不可抗力由于战争、动乱、自然灾害等不可抗力会导致本合同全部或部分无法履行。</p>
						<p>6.2信用风险如发生资金状况、经营状况的风险，投资人可能无法按时获得目标汽车租赁资产下款项。届时可能需经过司法程序，才能收回投资。如各方合法财产清偿完毕仍不足以偿还损失的，投资人可能无法获得目标汽车租赁资产之全部款项。</p>
						<p class="maDistance">第七条税务处理</p>
						<p>在转让过程中产生的相关税费由各方自行向税务机关申报、缴纳。</p>
						<p class="maDistance">第八条违约责任</p>
						<p>任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。</p>
						<p class="maDistance">第九条保密条款</p>
						<p>9.1任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。</p>
						<p>9.2该保密条款在本合同终止或到期后继续有效。</p>
						<p class="maDistance">第十条合同的生效、变更和解除</p>
						<p>10.1 本合同采用电子文本形式，并保存在平台服务器上，各方均认可本合同的效力。</p>
						<p>10.2甲方点击“【立即投资】”按钮构成本合同的签署，待转让款向丙方指定的账户划出视为合同生效。</p>
						<p>10.3投资者详细服务条款为本协议附件，对本协议各方具有同等的法律效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力。</p>
						<p>10.4本合同任何条款的无效或不执行，均不影响其它条款的有效性和可执行性，亦不影响本合同的效力。</p>
						<p class="maDistance">第十一条法律适用与争议解决</p>
						<p>11.1本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律（不包括香港特别行政区、澳门特别行政区及台湾地区）。</p>
						<p>11.2就本合同所涉及的一切争议，各方应通过协商解决，如果协商不成，任何一方均可向丁方住所地人民法院提起诉讼。</p>
						<p>11.3本合同一式肆份，各方各执壹份，每份具有同等法律效力。</p>
						<aside>
							<table cellpadding="5" cellspacing="5" style="width:600px; position: relative;">
								<tbody><tr>
									<td width="630">甲方：</td>
									<td width="630">乙方：&nbsp;李**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;卢**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;于**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;蔡**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李**&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;李**&nbsp;&nbsp;&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td width="630">&nbsp;</td>
									<td width="630">（为保护借款人隐私，暂隐去部分信息，效力等同）</td>
								</tr>
								<tr>
									<td width="630">日期：&nbsp;&nbsp;</td>
									<td width="630">日期：&nbsp;&nbsp;</td>
								</tr>
								<tr>
									<td width="630">&nbsp;
									  丙方（盖章）：北京捷众汽车租赁有限公司<em class="more_agile"></em></td>
									<td width="630">&nbsp;<em></em>
									  丁方（盖章）：北京财客金融息服务有限公司</td>
								</tr>
								<tr>
									<td width="630">日期：&nbsp;&nbsp;</td>
									<td width="630">日期：&nbsp;&nbsp;</td>
								</tr>
							</tbody></table>
						</aside>
						<p class="maDistance">附录 投资者详细服务条款</p>
						<p class="maDistance">一、丁方提供的投资咨询服务</p>
						<p>1.1 信息采集及提供</p>
						<p>丁方在财客钱包向甲方提供汽车租赁资产投资咨询服务，双方同意，丁方向甲方提供的投资咨询服务应按如下范围和规则进行：</p>
						<p>(1) 在适用法律和技术手段允许和合理的范围内，丁方应对在财客钱包上展示的各项转让人及原始承租人基本息进行合理的书面查验，以供甲方在决定是否做汽车租赁资产投资时参考。</p>
						<p>(2) 向甲方提供其自行收集或从其他第三方合作机构获得的除原始承租人联络息之外的其他原始承租人息，如原始承租人的工作情况、借款用途等，以供甲方在自行决定是否做汽车租赁资产投资时参考。甲方获取该等息后，应自行判断该等息的真实性、准确性和完整性，且不能用于非法目的。</p>
						<p>(3) 丁方将根据内部制定的评级规则对原始承租人及其各笔特定购买汽车租赁资产需求等进行用评级，并以适当方式在财客钱包上公示，以供甲方参考。丁方有权根据其进一步获知的原始承租人相关息和/或内部评级规则的调整而调整对原始承租人及各笔特定购买汽车租赁资产需求的信用评级。但丁方的该等评级并不构成丁方对原始承租人及其偿还能力的进一步保证。</p>
						<p>(4) 在甲方与原始承租人之间汽车租赁资产承租人关系尚未完全清偿前，丁方如获知其提供的原始承租人联络信息存在不真实、不准确的情形，并可能危及承租人履行时，应及时以电子邮件（以甲方在财客钱包注册时或者注册后变更用户信息时向财客钱包提供的电子邮箱为准）或其他方式通知甲方。</p>
						<p>1.2 信息用途</p>
						<p>双方进一步同意并确认，</p>
						<p>(1) 丁方获取的原始承租人信息涉及个人信息时，在未发生原始承租人的重大违约事项时，丁方有权选择不公开，且丁方并不能保证收集的该等信息的真实性。</p>
						<p>(2) 丁方提供的所有投资咨询服务仅供甲方决定是否出借资金时予以参考，无论甲方通过财客钱包形成的收益权转让关系是否存在第三方担保或其他的对于甲方的本金及/收益作出保证的，在任何情况下均为原始承租人的个别的且单独的行为，不应视为丁方对原始承租人偿还能力及购买汽车租赁资产协议的履行作出了任何明示或默示的担保，亦不应视为丁方对甲方的本金和/或收益作出了明示或默示的担保或保证。</p>
						<p>(3) 甲方应自行判断相关信息的真实性、准确性、及时性，自主决定是否出借资金，并承担由此而导致的一切损失或责任，除非丁方故意主动的编造相关信息，否则在任何情况下均不视为丁方对原始承租人信息的真实、准确、及时和完整性做出任何保证或承诺。</p>
						<p class="maDistance">二、 投资及其回收的方式</p>
						<p>2.1甲方可以选择以下任意一种方式实现个人资金投资：</p>
						<p>(1) 对丁方在财客钱包展示的汽车租赁资产投资需求进行自由选择，自行决定是否受让该汽车租赁资产（“汽车租赁资产投资”）；</p>
						<p>(2) 受让其他既有投资人因在丁方平台上投资而形成的待转让的汽车租赁资产（“汽车租赁资产转让”）。</p>
						<p>2.2甲方的信贷资产投资，适用以下规则：</p>
						<p>(1) 甲方须按照财客钱包的规则，通过对某一特定的待投资汽车租赁资产点击“投资”，即表示同意与各方订立《投资服务协议》以受让该既有汽车租赁资产；</p>
						<p>(2) 《投资服务协议》经甲方点击“立即投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。就此，甲方授权丁方在《投资服务协议》生效后，立即委托其合作的第三方支付机构等从保管账户中甲方财客钱包账户下划扣汽车租赁资产转让价款，并划转至既有汽车租赁资产转让方的指定账户。</p>
						<p>2.3为便利、统一地回收本息，甲方委托丁方代为收取原始承租人每期偿还的本息，在原始承租人将当期偿还的本息支付至保管账户后一个工作日内，丁方应将其分配至甲方财客钱包账户名下。</p>
						<p>2.4 甲方有权根据其或既有汽车租赁资产转让方与原始承租人签署的基础协议，要求原始承租人按照购买汽车租赁资产协议的约定按期还本付息。在原始承租人违反其在购买汽车租赁资产协议项下按期清偿购买汽车租赁资产本息的义务时，在中国法律允许的范围内，丁方应向甲方提供其所知晓的原始承租人联络信息，并尽合理的努力采取中国法律所允许的措施协助甲方进行及时的催收和追讨。</p>
						<p>2.5若甲方出借的该笔购买汽车租赁资产的原始承租人未按时足额履行还款义务，且担保人也未按时足额履行其担保义务，则在此种情况下，甲方可授权丁方全权代表其处置该笔汽车租赁资产，处置的方式包括但不限于：</p>
						<p>（1）通过法律途径向原始承租人及/或担保人进行追偿（包括但不限于代为委托律师提起诉讼或仲裁）；</p>
						<p>（2）委托第三方专业机构进行催收；</p>
						<p>（3）将该笔汽车租赁资产出售予第三方资产管理公司等机构；</p>
						<p>（4）丁方认为最符合甲方利益最大化的其他处置方式。</p>
						<p class="maDistance">三、服务费</p>
						<p>除国家另有强制规定外，丁方为甲方提供本协议项下规定的其他信用咨询及租后管理等服务，不向甲方收取任何服务费。</p>
						<p class="maDistance">四、丁方的陈述和保证</p>
						<p>4.1丁方应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台居间信息服务。</p>
						<p>4.2丁方对各方提供的信息、资产及其他基于本合同提供的资料依法保密。</p>
						<p>4.3丁方有义务对投资人所涉交易的相关信息进行形式审查。</p>
						<p>4.4除根据本协议在甲方汽车租赁资产转让过程中展示乙方的个人信息外，丁方须根据中国法律的规定对乙方个人信息、资产情况和相关资料予以保密。</p>
						<p>4.5丁方应妥善保存与甲方资产相关的全部资料以备查阅，保存期限为本协议存续期间及本协议终止之日起5年。</p>
						<p class="maDistance">五、甲方的陈述和保证</p>
						<p>5.1甲方保证其所用于投资的资金系合法的自有资金，如果因第三人对甲方用于出借的资金的来源合法性或归属问题提出异议，由甲方自行解决并承担由此而导致的全部损失和责任。</p>
						<p>5.2对于甲方在丁方提供投资服务过程中了解到的丁方的商业秘密，包括但不限于业务运营情况等，甲方不得向任何第三人披露。</p>
						<p>5.3对于丁方向甲方提供的各项原始承租人信息，包括但不限于原始承租人联络信息、购买汽车租赁资产需求、担保情况（如有）、丁方对原始承租人的评级情况、丁方提供的其他相关信息等，甲方应保证仅用于出借参考，不得向任何第三人披露。</p>
						<p class="maDistance">六、双方的其他权利义务</p>
						<p>6.1在原始承租人已经违反购买汽车租赁资产协议的约定、未按期还本付息时，甲方有权使用原始承租人联络信息向原始承租人进行催收或根据本协议2.5自行催收，如甲方已经根据中国法律的规定向有管辖权的人民法院提起起诉的情形下，甲方还可以进一步向司法机关披露其获得的原始承租人信息。</p>
						<p>6.2甲方应自行承担在资金投资、汽车租赁资产转让过程产生的相关税收的纳税义务，并根据中国法律的规定自行向其主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，甲方违反上述规定导致丁方遭受任何损失应由甲方负责全额赔偿。</p>
						<p>6.3甲方变更账户信息、通讯地址、电话等相关重要信息，须及时通知丁方。因甲方未及时通知丁方而导致的一切损失，由甲方自行承担或进行赔偿。</p>
						<p>6.4如果甲方出现投资资金的继承或赠与，必须由主张权利的继承人或受赠人向丁方出示经国家行政或司法机关确认的继承或赠与权利归属证明文件，丁方确认后方予协助进行资产的转移，由此而产生的相应税费，由继承人或受赠人根据中国法律的规定自行向相关主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，继承人或受赠人违反上述规定导致丁方遭受的任何损失，由甲方全额赔偿。</p>
						<p class="maDistance">七、违约责任</p>
						<p>任何一方违反本协议的约定给对方造成损失，均应承担违约责任，并赔偿对方因此遭受的损失（包括由此产生的诉讼费和律师费）；如双方违约，则根据实际情况各自承担相应的责任。违约方应赔偿因其违约而给守约方造成的损失，包括本协议履行后可以获得的利益，但不得超过违约方订立本协议时可以预见或应当预见的因违反本协议可能造成的损失。</p>
						<p class="maDistance">八、争议解决</p>
						<p>在本协议履行过程中，如发生任何争执或纠纷，双方应友好协商解决，协商不成的，任何一方有权向丁方住所地有管辖权的人民法院提起诉讼。</p>
						<p class="maDistance">九、甲方的特别声明</p>
						<p>甲方确认在签署本协议之前已阅读以下与本协议及购买汽车租赁资产协议的订立及履行有关的风险提示，并对该等风险有充分理解和预期，甲方自愿承担该等风险可能给甲方带来的一切损失和责任。</p>
						<p>(1) 政策风险：国家因宏观政策、财政政策、货币政策、行业政策、地区发展政策等因素引起的系统风险。</p>
						<p>(2) 原始承租人及担保人信用风险：当原始承租人及担保人（如有）短期或者长期丧失还款能力（包括但不限于原始承租人收入情况、财产状况发生变化、人身出现意外、发生疾病、死亡等情况），或者原始承租人及担保人（如有）的还款意愿发生变化时，甲方的出借资金及利息可能无法按时回收甚至无法回收。</p>
						<p>(3) 资金流动性风险：甲方按照约定将购买汽车租赁资产给原始承租人使用，在原始承租人不主动提前还款的情况下，原始承租人将按照约定的期限偿还甲方的本金并支付利息，因此资金回收可能需要一定的周期。同时，甲方也可能无法在一定时间内将汽车租赁资产转让给第三方。</p>
						<p>(4) 不可抗力：由于丁方及相关第三方的设备、系统故障或缺陷、病毒、黑客攻击、网络故障、网络中断、地震、台风、水灾、海啸、雷电、火灾、瘟疫、流行病、战争、恐怖主义、敌对行为、暴动、罢工、交通中断、停止供应主要服务、电力中断、经济形势严重恶化或其它类似事件导致的风险。
甲方确认在同意订立本协议前已仔细阅读了本协议的所有条款，对本协议的所有条款及内容已经阅悉，均无异议，并对双方的合作关系、有关权利、义务和责任条款的法律含义达成充分的理解，甲方自愿承受自主出借行为可能所产生的全部风险。</p>
						<p class="maDistance">十、其他</p>
						<p>本协议自双方以电子合同的形式订立之时起生效，即甲方首次投资时在财客钱包勾选位于页面下方的“我同意投资服务协议”选项之时生效，至甲方不再使用丁方所提供之服务或甲方在财客钱包注销账户且双方已将所有的权利义务关系履行完毕时止。</p>
						<p>本协议中的任何条款因违反中国法律而无效的，不影响本协议其他条款的效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力</p>
					</section>
				</ul>
			</section>
		</section>
		<!-- 账户页我的理财进入的投资协议 -->
		<section class="text_introduce" name="financialAgreement_new" style="display:none">
			<span class="text_close"></span>
			<section class="relevantAgreement">
				<h3>投资服务协议</h3>
				<ul>
					<section id="theSliding">
						<!-- <p class="maDistance">第一条总则</p> -->
						<p>投资方（以下或称甲方、投资人）：<span name="lenderRealName_1_new"></span></p>
						<p>证件类型：身份证</p>
						<p>证件号码：<span name="lender_Card_No_new"></span></p>
						<p>财客用户名：<span name="lender_User_Id_new"></span></p>
						<p>租赁资产对象（以下或称乙方）：</p>
						<aside name="deptPackageDetailed_list_new"></aside>
						<p>丙方（资产合作方）：北京捷众汽车租赁有限公司</p>
						<p>丁方（投资者服务方）：北京财客金融信息服务有限公司</p>
						<p>现经各方协商一致，为保证本业务的顺利进行，各方约定如下：</p>
						<p class="maDistance">第一条业务描述</p>
						<p>1.1 甲方拥有富余资金拟以汽车租赁资产投资的方式以获取投资收益，丁方掌握丰富的汽车租赁资源信息并拥有专业的信用评价和信息管理服务平台；</p>
						<p>1.2 根据丙方代表人与乙方签署的汽车租赁合同（以下称基础合同）并已建立汽车租赁关系，由此发生的该项合同原始汽车租赁资产为人民币【  <span name="dp_money_new"></span> 】元（以下称目标资产）；乙方及丙方通过丁方的互联网平台服务向甲方转让目标资产一定数量的目标汽车租赁权利份额；</p>
						<p>1.3甲方已成为财客钱包注册用户，愿意接受丁方基于财客钱包平台提供的投资者服务（详见附录《投资者详细服务条款》），由丁方提供可供汽车租赁资产投资信息，并由丁方提供与购买汽车租赁资产协议的履行有关的其他服务，甲方自行确定是否投资。</p>
						<p class="maDistance">第二条甲方的权利与义务</p>
						<p>2.1甲方按照财客钱包的规则及财客钱包投资服务协议，通过对丙方推荐的拟转让目标汽车租赁资产经点击“投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。</p>
						<p>2.2甲方按照财客钱包的规则及财客投资服务协议，即不可撤销地授权丁方，委托其合作的第三方支付机构等，从在第三方支付中甲方名下账户（“甲方财客钱包账户”）中，将转让价款划转至丙方指定的名下账户（“丙方财客钱包账户”）中。</p>
						<p>2.3甲方应当以其自有合法资金参与本次交易。</p>
						<p>2.4未经丁方同意，不得向第三方转让本合同项下的全部或部分权利。</p>
						<p class="maDistance">第三条乙方的权利与义务</p>
						<p>3.1具有履行本合同项下权利和义务的能力。</p>
						<p>3.2提供给平台及投资人的所有资料都是真实、准确、完整而没有任何隐瞒。</p>
						<p>3.3目标汽车租赁资产所对应的汽车租赁资产承租人关系真实、合法、有效，没有争议。</p>
						<p class="maDistance">第四条丙方的权利与义务</p>
						<p>4.1提供给平台的所有资料都是真实、准确、完整而没有任何隐瞒，不存在任何未向丁方披露的重大承租人或或有承租人。</p>
						<p>4.2就原承租人发生偿还租金风险时，配合投资人及丁方履行一切必要的维权行动。</p>
						<p class="maDistance">第五条丁方的权利与义务</p>
						<p>5.1应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台信息服务。</p>
						<p>5.2对各方提供的信息、资产及其它基于本合同提供的资料依法保密。</p>
						<p>5.3有义务对各方主体资格和汽车租赁资产的情况进行形式审查，保证在平台上注册的各方主体真实存在并签署相关合同。</p>
						<p class="maDistance">第六条风险提示</p>
						<p>6.1 不可抗力由于战争、动乱、自然灾害等不可抗力会导致本合同全部或部分无法履行。</p>
						<p>6.2信用风险如发生资金状况、经营状况的风险，投资人可能无法按时获得目标汽车租赁资产下款项。届时可能需经过司法程序，才能收回投资。如各方合法财产清偿完毕仍不足以偿还损失的，投资人可能无法获得目标汽车租赁资产之全部款项。</p>
						<p class="maDistance">第七条税务处理</p>
						<p>在转让过程中产生的相关税费由各方自行向税务机关申报、缴纳。</p>
						<p class="maDistance">第八条违约责任</p>
						<p>任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。</p>
						<p class="maDistance">第九条保密条款</p>
						<p>9.1任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。</p>
						<p>9.2该保密条款在本合同终止或到期后继续有效。</p>
						<p class="maDistance">第十条合同的生效、变更和解除</p>
						<p>10.1 本合同采用电子文本形式，并保存在平台服务器上，各方均认可本合同的效力。</p>
						<p>10.2甲方点击“【立即投资】”按钮构成本合同的签署，待转让款向丙方指定的账户划出视为合同生效。</p>
						<p>10.3投资者详细服务条款为本协议附件，对本协议各方具有同等的法律效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力。</p>
						<p>10.4本合同任何条款的无效或不执行，均不影响其它条款的有效性和可执行性，亦不影响本合同的效力。</p>
						<p class="maDistance">第十一条法律适用与争议解决</p>
						<p>11.1本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律（不包括香港特别行政区、澳门特别行政区及台湾地区）。</p>
						<p>11.2就本合同所涉及的一切争议，各方应通过协商解决，如果协商不成，任何一方均可向丁方住所地人民法院提起诉讼。</p>
						<p>11.3本合同一式肆份，各方各执壹份，每份具有同等法律效力。</p>
						<aside>
							<table cellpadding="5" cellspacing="5" style="width:600px; position: relative;">
								<tbody><tr>
									<td width="630">甲方：<span name="lenderRealName_2_new"></span></td>
									<td width="630">乙方：<span name="borrow_usernames_new"></span></td>
								</tr>
								<tr>
									<td width="630">&nbsp;</td>
									<td width="630">（为保护借款人隐私，暂隐去部分信息，效力等同）</td>
								</tr>
								<tr>
									<td width="630">日期：<span name="dp_down_time_1_new"></span></td>
									<td width="630">日期：<span name="dp_down_time_2_new"></span></td>
								</tr>
								<tr>
									<td width="630">&nbsp;
									  丙方（盖章）：北京捷众汽车租赁有限公司<em class="more_agile"></em></td>
									<td width="630">&nbsp;<em></em>
									  丁方（盖章）：北京财客金融息服务有限公司</td>
								</tr>
								<tr>
									<td width="630">日期：<span name="dp_down_time_3_new"></span></td>
									<td width="630">日期：<span name="dp_down_time_4_new"></span></td>
								</tr>
							</tbody></table>
						</aside>
						<p class="maDistance">附录 投资者详细服务条款</p>
						<p class="maDistance">一、丁方提供的投资咨询服务</p>
						<p>1.1 信息采集及提供</p>
						<p>丁方在财客钱包向甲方提供汽车租赁资产投资咨询服务，双方同意，丁方向甲方提供的投资咨询服务应按如下范围和规则进行：</p>
						<p>(1) 在适用法律和技术手段允许和合理的范围内，丁方应对在财客钱包上展示的各项转让人及原始承租人基本息进行合理的书面查验，以供甲方在决定是否做汽车租赁资产投资时参考。</p>
						<p>(2) 向甲方提供其自行收集或从其他第三方合作机构获得的除原始承租人联络息之外的其他原始承租人息，如原始承租人的工作情况、借款用途等，以供甲方在自行决定是否做汽车租赁资产投资时参考。甲方获取该等息后，应自行判断该等息的真实性、准确性和完整性，且不能用于非法目的。</p>
						<p>(3) 丁方将根据内部制定的评级规则对原始承租人及其各笔特定购买汽车租赁资产需求等进行用评级，并以适当方式在财客钱包上公示，以供甲方参考。丁方有权根据其进一步获知的原始承租人相关息和/或内部评级规则的调整而调整对原始承租人及各笔特定购买汽车租赁资产需求的信用评级。但丁方的该等评级并不构成丁方对原始承租人及其偿还能力的进一步保证。</p>
						<p>(4) 在甲方与原始承租人之间汽车租赁资产承租人关系尚未完全清偿前，丁方如获知其提供的原始承租人联络信息存在不真实、不准确的情形，并可能危及承租人履行时，应及时以电子邮件（以甲方在财客钱包注册时或者注册后变更用户信息时向财客钱包提供的电子邮箱为准）或其他方式通知甲方。</p>
						<p>1.2 信息用途</p>
						<p>双方进一步同意并确认，</p>
						<p>(1) 丁方获取的原始承租人信息涉及个人信息时，在未发生原始承租人的重大违约事项时，丁方有权选择不公开，且丁方并不能保证收集的该等信息的真实性。</p>
						<p>(2) 丁方提供的所有投资咨询服务仅供甲方决定是否出借资金时予以参考，无论甲方通过财客钱包形成的收益权转让关系是否存在第三方担保或其他的对于甲方的本金及/收益作出保证的，在任何情况下均为原始承租人的个别的且单独的行为，不应视为丁方对原始承租人偿还能力及购买汽车租赁资产协议的履行作出了任何明示或默示的担保，亦不应视为丁方对甲方的本金和/或收益作出了明示或默示的担保或保证。</p>
						<p>(3) 甲方应自行判断相关信息的真实性、准确性、及时性，自主决定是否出借资金，并承担由此而导致的一切损失或责任，除非丁方故意主动的编造相关信息，否则在任何情况下均不视为丁方对原始承租人信息的真实、准确、及时和完整性做出任何保证或承诺。</p>
						<p class="maDistance">二、 投资及其回收的方式</p>
						<p>2.1甲方可以选择以下任意一种方式实现个人资金投资：</p>
						<p>(1) 对丁方在财客钱包展示的汽车租赁资产投资需求进行自由选择，自行决定是否受让该汽车租赁资产（“汽车租赁资产投资”）；</p>
						<p>(2) 受让其他既有投资人因在丁方平台上投资而形成的待转让的汽车租赁资产（“汽车租赁资产转让”）。</p>
						<p>2.2甲方的信贷资产投资，适用以下规则：</p>
						<p>(1) 甲方须按照财客钱包的规则，通过对某一特定的待投资汽车租赁资产点击“投资”，即表示同意与各方订立《投资服务协议》以受让该既有汽车租赁资产；</p>
						<p>(2) 《投资服务协议》经甲方点击“立即投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。就此，甲方授权丁方在《投资服务协议》生效后，立即委托其合作的第三方支付机构等从保管账户中甲方财客钱包账户下划扣汽车租赁资产转让价款，并划转至既有汽车租赁资产转让方的指定账户。</p>
						<p>2.3为便利、统一地回收本息，甲方委托丁方代为收取原始承租人每期偿还的本息，在原始承租人将当期偿还的本息支付至保管账户后一个工作日内，丁方应将其分配至甲方财客钱包账户名下。</p>
						<p>2.4 甲方有权根据其或既有汽车租赁资产转让方与原始承租人签署的基础协议，要求原始承租人按照购买汽车租赁资产协议的约定按期还本付息。在原始承租人违反其在购买汽车租赁资产协议项下按期清偿购买汽车租赁资产本息的义务时，在中国法律允许的范围内，丁方应向甲方提供其所知晓的原始承租人联络信息，并尽合理的努力采取中国法律所允许的措施协助甲方进行及时的催收和追讨。</p>
						<p>2.5若甲方出借的该笔购买汽车租赁资产的原始承租人未按时足额履行还款义务，且担保人也未按时足额履行其担保义务，则在此种情况下，甲方可授权丁方全权代表其处置该笔汽车租赁资产，处置的方式包括但不限于：</p>
						<p>（1）通过法律途径向原始承租人及/或担保人进行追偿（包括但不限于代为委托律师提起诉讼或仲裁）；</p>
						<p>（2）委托第三方专业机构进行催收；</p>
						<p>（3）将该笔汽车租赁资产出售予第三方资产管理公司等机构；</p>
						<p>（4）丁方认为最符合甲方利益最大化的其他处置方式。</p>
						<p class="maDistance">三、服务费</p>
						<p>除国家另有强制规定外，丁方为甲方提供本协议项下规定的其他信用咨询及租后管理等服务，不向甲方收取任何服务费。</p>
						<p class="maDistance">四、丁方的陈述和保证</p>
						<p>4.1丁方应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台居间信息服务。</p>
						<p>4.2丁方对各方提供的信息、资产及其他基于本合同提供的资料依法保密。</p>
						<p>4.3丁方有义务对投资人所涉交易的相关信息进行形式审查。</p>
						<p>4.4除根据本协议在甲方汽车租赁资产转让过程中展示乙方的个人信息外，丁方须根据中国法律的规定对乙方个人信息、资产情况和相关资料予以保密。</p>
						<p>4.5丁方应妥善保存与甲方资产相关的全部资料以备查阅，保存期限为本协议存续期间及本协议终止之日起5年。</p>
						<p class="maDistance">五、甲方的陈述和保证</p>
						<p>5.1甲方保证其所用于投资的资金系合法的自有资金，如果因第三人对甲方用于出借的资金的来源合法性或归属问题提出异议，由甲方自行解决并承担由此而导致的全部损失和责任。</p>
						<p>5.2对于甲方在丁方提供投资服务过程中了解到的丁方的商业秘密，包括但不限于业务运营情况等，甲方不得向任何第三人披露。</p>
						<p>5.3对于丁方向甲方提供的各项原始承租人信息，包括但不限于原始承租人联络信息、购买汽车租赁资产需求、担保情况（如有）、丁方对原始承租人的评级情况、丁方提供的其他相关信息等，甲方应保证仅用于出借参考，不得向任何第三人披露。</p>
						<p class="maDistance">六、双方的其他权利义务</p>
						<p>6.1在原始承租人已经违反购买汽车租赁资产协议的约定、未按期还本付息时，甲方有权使用原始承租人联络信息向原始承租人进行催收或根据本协议2.5自行催收，如甲方已经根据中国法律的规定向有管辖权的人民法院提起起诉的情形下，甲方还可以进一步向司法机关披露其获得的原始承租人信息。</p>
						<p>6.2甲方应自行承担在资金投资、汽车租赁资产转让过程产生的相关税收的纳税义务，并根据中国法律的规定自行向其主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，甲方违反上述规定导致丁方遭受任何损失应由甲方负责全额赔偿。</p>
						<p>6.3甲方变更账户信息、通讯地址、电话等相关重要信息，须及时通知丁方。因甲方未及时通知丁方而导致的一切损失，由甲方自行承担或进行赔偿。</p>
						<p>6.4如果甲方出现投资资金的继承或赠与，必须由主张权利的继承人或受赠人向丁方出示经国家行政或司法机关确认的继承或赠与权利归属证明文件，丁方确认后方予协助进行资产的转移，由此而产生的相应税费，由继承人或受赠人根据中国法律的规定自行向相关主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，继承人或受赠人违反上述规定导致丁方遭受的任何损失，由甲方全额赔偿。</p>
						<p class="maDistance">七、违约责任</p>
						<p>任何一方违反本协议的约定给对方造成损失，均应承担违约责任，并赔偿对方因此遭受的损失（包括由此产生的诉讼费和律师费）；如双方违约，则根据实际情况各自承担相应的责任。违约方应赔偿因其违约而给守约方造成的损失，包括本协议履行后可以获得的利益，但不得超过违约方订立本协议时可以预见或应当预见的因违反本协议可能造成的损失。</p>
						<p class="maDistance">八、争议解决</p>
						<p>在本协议履行过程中，如发生任何争执或纠纷，双方应友好协商解决，协商不成的，任何一方有权向丁方住所地有管辖权的人民法院提起诉讼。</p>
						<p class="maDistance">九、甲方的特别声明</p>
						<p>甲方确认在签署本协议之前已阅读以下与本协议及购买汽车租赁资产协议的订立及履行有关的风险提示，并对该等风险有充分理解和预期，甲方自愿承担该等风险可能给甲方带来的一切损失和责任。</p>
						<p>(1) 政策风险：国家因宏观政策、财政政策、货币政策、行业政策、地区发展政策等因素引起的系统风险。</p>
						<p>(2) 原始承租人及担保人信用风险：当原始承租人及担保人（如有）短期或者长期丧失还款能力（包括但不限于原始承租人收入情况、财产状况发生变化、人身出现意外、发生疾病、死亡等情况），或者原始承租人及担保人（如有）的还款意愿发生变化时，甲方的出借资金及利息可能无法按时回收甚至无法回收。</p>
						<p>(3) 资金流动性风险：甲方按照约定将购买汽车租赁资产给原始承租人使用，在原始承租人不主动提前还款的情况下，原始承租人将按照约定的期限偿还甲方的本金并支付利息，因此资金回收可能需要一定的周期。同时，甲方也可能无法在一定时间内将汽车租赁资产转让给第三方。</p>
						<p>(4) 不可抗力：由于丁方及相关第三方的设备、系统故障或缺陷、病毒、黑客攻击、网络故障、网络中断、地震、台风、水灾、海啸、雷电、火灾、瘟疫、流行病、战争、恐怖主义、敌对行为、暴动、罢工、交通中断、停止供应主要服务、电力中断、经济形势严重恶化或其它类似事件导致的风险。
甲方确认在同意订立本协议前已仔细阅读了本协议的所有条款，对本协议的所有条款及内容已经阅悉，均无异议，并对双方的合作关系、有关权利、义务和责任条款的法律含义达成充分的理解，甲方自愿承受自主出借行为可能所产生的全部风险。</p>
						<p class="maDistance">十、其他</p>
						<p>本协议自双方以电子合同的形式订立之时起生效，即甲方首次投资时在财客钱包勾选位于页面下方的“我同意投资服务协议”选项之时生效，至甲方不再使用丁方所提供之服务或甲方在财客钱包注销账户且双方已将所有的权利义务关系履行完毕时止。</p>
						<p>本协议中的任何条款因违反中国法律而无效的，不影响本协议其他条款的效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力</p>
					</section>
				</ul>
			</section>
		</section>
		<section class="text_introduce" name="financialAgreement_old" style="display:none">
			<span class="text_close"></span>
			<section class="relevantAgreement">
				<h3>投资服务协议</h3>
				<ul>
					<section id="theSliding">
						<p class="maDistance">第一条总则</p>
						<p>投资方（以下或称甲方、投资人）：<span name="lenderRealName_1_old"></span></p>
						<p>证件类型：身份证</p>
						<p>证件号码：<span name="lender_Card_No_old"></span></p>
						<p>财客用户名：<span name="lender_User_Id_old"></span></p>
						<p>信贷资产对象（以下或称乙方）：</p>
						<aside name="deptPackageDetailed_list_old"></aside>
						<p>丙方（资产合作方）：北京捷越联合信息咨询有限公司</p>
						<p>丁方（投资者服务方）：北京财客金融信息服务有限公司</p>
						<p>现经各方协商一致，为保证本业务的顺利进行，各方约定如下：</p>
						<p class="maDistance">第一条业务描述</p>
						<p>1.1 甲方拥有富余资金拟以信贷资产投资的方式以获取投资收益，丁方掌握丰富的信贷资源信息并拥有专业的信用评价和信息管理服务平台；</p>
						<p>1.2 根据丙方代表人与乙方签署的信贷合同（以下称基础合同）并已建立信贷关系，由此发生的该项合同原始信贷资产为人民币【 <span name="dp_money_old"></span> 】元（以下称目标资产）；乙方及丙方通过丁方的互联网平台服务向甲方转让目标资产一定数量的目标信贷权利份额；</p>
						<p>1.3甲方已成为财客钱包注册用户，愿意接受丁方基于财客钱包平台提供的投资者服务（详见附录《投资者详细服务条款》），由丁方提供可供信贷资产投资信息，并由丁方提供与购买信贷资产协议的履行有关的其他服务，甲方自行确定是否投资。</p>
						<p class="maDistance">第二条甲方的权利与义务</p>
						<p>2.1甲方按照财客钱包的规则及财客钱包投资服务协议，通过对丙方推荐的拟转让目标信贷资产经点击“投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。</p>
						<p>2.2甲方按照财客钱包的规则及财客投资服务协议，即不可撤销地授权丁方，委托其合作的第三方支付机构等，从在第三方支付中甲方名下账户（“甲方财客钱包账户”）中，将转让价款划转至丙方指定的名下账户（“丙方财客钱包账户”）中。</p>
						<p>2.3甲方应当以其自有合法资金参与本次交易。</p>
						<p>2.4未经丁方同意，不得向第三方转让本合同项下的全部或部分权利。</p>
						<p class="maDistance">第三条乙方的权利与义务</p>
						<p>3.1具有履行本合同项下权利和义务的能力。</p>
						<p>3.2提供给平台及投资人的所有资料都是真实、准确、完整而没有任何隐瞒。</p>
						<p>3.3目标信贷资产所对应的信贷资产债务关系真实、合法、有效，没有争议。</p>
						<p class="maDistance">第四条丙方的权利与义务</p>
						<p>4.1提供给平台的所有资料都是真实、准确、完整而没有任何隐瞒，不存在任何未向丁方披露的重大债务或或有债务。</p>
						<p>4.2就原债务人发生偿债风险时，配合投资人及丁方履行一切必要的维权行动。</p>
						<p class="maDistance">第五条丁方的权利与义务</p>
						<p>5.1应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台信息服务。</p>
						<p>5.2对各方提供的信息、资产及其它基于本合同提供的资料依法保密。</p>
						<p>5.3有义务对各方主体资格和信贷资产的情况进行形式审查，保证在平台上注册的各方主体真实存在并签署相关合同。</p>
						<p class="maDistance">第六条风险提示</p>
						<p>6.1 不可抗力由于战争、动乱、自然灾害等不可抗力会导致本合同全部或部分无法履行。</p>
						<p>6.2信用风险如发生资金状况、经营状况的风险，投资人可能无法按时获得目标信贷资产下款项。届时可能需经过司法程序，才能收回投资。如各方合法财产清偿完毕仍不足以偿还损失的，投资人可能无法获得目标信贷资产之全部款项。</p>
						<p class="maDistance">第七条税务处理</p>
						<p>在转让过程中产生的相关税费由各方自行向税务机关申报、缴纳。</p>
						<p class="maDistance">第八条违约责任</p>
						<p>任何一方违反本合同之规定，使得本合同全部或部分不能履行，均应承担违约责任，并赔偿守约方因此遭受的经济损失，包括但不限于合同履行后可获得的利益、由此产生的诉讼费和律师费等相关费用。如多方违约，根据实际情况分担责任。</p>
						<p class="maDistance">第九条保密条款</p>
						<p>9.1本合同签署后，合同各方对基于本合同知悉的他方商业秘密都负有保密义务，未经许可不得泄露。</p>
						<p>9.2该保密条款在本合同终止或到期后继续有效。</p>
						<p class="maDistance">第十条合同的生效、变更和解除</p>
						<p>10.1 本合同采用电子文本形式，并保存在平台服务器上，各方均认可本合同的效力。</p>
						<p>10.2甲方点击“【立即投资】”按钮构成本合同的签署，待转让款向丙方指定的账户划出视为合同生效。</p>
						<p>10.3投资者详细服务条款为本协议附件，对本协议各方具有同等的法律效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力。</p>
						<p>10.4本合同任何条款的无效或不执行，均不影响其它条款的有效性和可执行性，亦不影响本合同的效力。</p>
						<p class="maDistance">第十一条法律适用与争议解决</p>
						<p>11.1本协议之效力、解释、变更、执行与争议解决均适用中华人民共和国法律（不包括香港特别行政区、澳门特别行政区及台湾地区）。</p>
						<p>11.2就本合同所涉及的一切争议，各方应通过协商解决，如果协商不成，任何一方均可向丁方住所地人民法院提起诉讼。</p>
						<p>11.3本合同一式肆份，各方各执壹份，每份具有同等法律效力。</p>
						<aside>
							<table cellpadding="5" cellspacing="5" style="width:600px; position: relative;">
								<tbody><tr>
									<td width="630">甲方：<span name="lenderRealName_2_old"></span></td>
									<td width="630">乙方：<span name="borrow_usernames_old"></span></td>
								</tr>
								<tr>
									<td width="630">&nbsp;</td>
									<td width="630">（为保护借款人隐私，暂隐去部分信息，效力等同）</td>
								</tr>
								<tr>
									<td width="630">日期：<span name="dp_down_time_1_old"></span></td>
									<td width="630">日期：<span name="dp_down_time_2_old"></span></td>
								</tr>
								<tr>
									<td width="630">&nbsp;<em class="more_agileHistory"></em>
									  丙方（盖章）：北京捷越联合信息咨询有限公司</td>
									<td width="630">&nbsp;<em></em>
									  丁方（盖章）：北京财客金融信息服务有限公司</td>
								</tr>
								<tr>
									<td width="630">日期：<span name="dp_down_time_3_old"></span></td>
									<td width="630">日期：<span name="dp_down_time_4_old"></span></td>
								</tr>
							</tbody></table>
						</aside>
						<p class="maDistance">附录 投资者详细服务条款</p>
						<p class="maDistance">一、丁方提供的投资咨询服务</p>
						<p>1.1 信息采集及提供</p>
						<p>丁方在财客钱包向甲方提供信贷资产投资咨询服务，双方同意，丁方向甲方提供的投资咨询服务应按如下范围和规则进行：</p>
						<p>(1) 在适用法律和技术手段允许和合理的范围内，丁方应对在财客钱包上展示的各项转让人及原始债务人基本信息进行合理的书面查验，以供甲方在决定是否做信贷资产投资时参考。</p>
						<p>(2) 向甲方提供其自行收集或从其他第三方合作机构获得的除原始债务人联络信息之外的其他原始债务人信息，如原始债务人的工作情况、借款用途等，以供甲方在自行决定是否做信贷资产投资时参考。甲方获取该等信息后，应自行判断该等信息的真实性、准确性和完整性，且不能用于非法目的。</p>
						<p>(3) 丁方将根据内部制定的评级规则对原始债务人及其各笔特定购买信贷资产需求等进行信用评级，并以适当方式在财客钱包上公示，以供甲方参考。丁方有权根据其进一步获知的原始债务人相关信息和/或内部评级规则的调整而调整对原始债务人及各笔特定购买信贷资产需求的信用评级。但丁方的该等评级并不构成丁方对原始债务人及其偿还能力的进一步保证。</p>
						<p>(4) 在甲方与原始债务人之间信贷资产债务关系尚未完全清偿前，丁方如获知其提供的原始债务人联络信息存在不真实、不准确的情形，并可能危及债务履行时，应及时以电子邮件（以甲方在财客钱包注册时或者注册后变更用户信息时向财客钱包提供的电子邮箱为准）或其他方式通知甲方。</p>
						<p>1.2 信息用途</p>
						<p>双方进一步同意并确认，</p>
						<p>(1) 丁方获取的原始债务人信息涉及个人信息时，在未发生原始债务人的重大违约事项时，丁方有权选择不公开，且丁方并不能保证收集的该等信息的真实性。</p>
						<p>(2) 丁方提供的所有投资咨询服务仅供甲方决定是否出借资金时予以参考，无论甲方通过财客钱包形成的借贷关系是否存在第三方担保或其他的对于甲方的本金及/收益作出保证的，在任何情况下均为原始债务人的个别的且单独的行为，不应视为丁方对原始债务人偿还能力及购买信贷资产协议的履行作出了任何明示或默示的担保，亦不应视为丁方对甲方的本金和/或收益作出了明示或默示的担保或保证。</p>
						<p>(3) 甲方应自行判断相关信息的真实性、准确性、及时性，自主决定是否出借资金，并承担由此而导致的一切损失或责任，除非丁方故意主动的编造相关信息，否则在任何情况下均不视为丁方对原始债务人信息的真实、准确、及时和完整性做出任何保证或承诺。</p>
						<p class="maDistance">二、 投资及其回收的方式</p>
						<p>2.1甲方可以选择以下任意一种方式实现个人资金投资：</p>
						<p>(1) 对丁方在财客钱包展示的信贷资产投资需求进行自由选择，自行决定是否受让该信贷资产（“信贷资产投资”）；</p>
						<p>(2) 受让其他既有投资人因在丁方平台上投资而形成的待转让的信贷资产（“信贷资产转让”）。</p>
						<p>2.2甲方的信贷资产投资，适用以下规则：</p>
						<p>(1) 甲方须按照财客钱包的规则，通过对某一特定的待投资信贷资产点击“投资”，即表示同意与各方订立《投资服务协议》以受让该既有信贷资产；</p>
						<p>(2) 《投资服务协议》经甲方点击“立即投资”并进行财客钱包要求的相应操作完成付款后即时成立并生效。就此，甲方授权丁方在《投资服务协议》生效后，立即委托其合作的第三方支付机构等从保管账户中甲方财客钱包账户下划扣信贷资产转让价款，并划转至既有信贷资产转让方的指定账户。</p>
						<p>2.3为便利、统一地回收本息，甲方委托丁方代为收取原始债务人每期偿还的本息，在原始债务人将当期偿还的本息支付至保管账户后一个工作日内，丁方应将其分配至甲方财客钱包账户名下。</p>
						<p>2.4 甲方有权根据其或既有信贷资产转让方与原始债务人签署的基础协议，要求原始债务人按照购买信贷资产协议的约定按期还本付息。在原始债务人违反其在购买信贷资产协议项下按期清偿购买信贷资产本息的义务时，在中国法律允许的范围内，丁方应向甲方提供其所知晓的原始债务人联络信息，并尽合理的努力采取中国法律所允许的措施协助甲方进行及时的催收和追讨。</p>
						<p>2.5若甲方出借的该笔购买信贷资产的原始债务人未按时足额履行还款义务，且担保人也未按时足额履行其担保义务，则在此种情况下，甲方可授权丁方全权代表其处置该笔信贷资产，处置的方式包括但不限于：</p>
						<p>（1）通过法律途径向原始债务人及/或担保人进行追偿（包括但不限于代为委托律师提起诉讼或仲裁）；</p>
						<p>（2）委托第三方专业机构进行催收；</p>
						<p>（3）将该笔信贷资产出售予第三方资产管理公司等机构；</p>
						<p>（4）丁方认为最符合甲方利益最大化的其他处置方式。以上处置所产生的费用由甲方承担（但如可行，丁方不应放弃由原始债务人及/或担保人承担该等费用的诉求），可由丁方先行垫付，且丁方有权在信贷资产处置所获得的对价中直接予以扣除。</p>
						<p class="maDistance">三、服务费</p>
						<p>除国家另有强制规定外，丁方为甲方提供本协议项下规定的其他信用咨询及贷后管理等服务，不向甲方收取任何服务费。</p>
						<p class="maDistance">四、丁方的陈述和保证</p>
						<p>4.1丁方应当按照本合同之规定以诚实、守信、谨慎、有效的管理原则提供平台居间信息服务。</p>
						<p>4.2丁方对各方提供的信息、资产及其他基于本合同提供的资料依法保密。</p>
						<p>4.3丁方有义务对投资人所涉交易的相关信息进行形式审查。</p>
						<p>4.4除根据本协议在甲方信贷资产转让过程中展示乙方的个人信息外，丁方须根据中国法律的规定对乙方个人信息、资产情况和相关资料予以保密。</p>
						<p>4.5丁方应妥善保存与甲方资产相关的全部资料以备查阅，保存期限为本协议存续期间及本协议终止之日起5年。</p>
						<p class="maDistance">五、甲方的陈述和保证</p>
						<p>5.1甲方保证其所用于投资的资金系合法的自有资金，如果因第三人对甲方用于出借的资金的来源合法性或归属问题提出异议，由甲方自行解决并承担由此而导致的全部损失和责任。</p>
						<p>5.2对于甲方在丁方提供投资服务过程中了解到的丁方的商业秘密，包括但不限于业务运营情况等，甲方不得向任何第三人披露。</p>
						<p>5.3对于丁方向甲方提供的各项原始债务人信息，包括但不限于原始债务人联络信息、购买信贷资产需求、担保情况（如有）、丁方对原始债务人的评级情况、丁方提供的其他相关信息等，甲方应保证仅用于出借参考，不得向任何第三人披露。</p>
						<p class="maDistance">六、双方的其他权利义务</p>
						<p>6.1在原始债务人已经违反购买信贷资产协议的约定、未按期还本付息时，甲方有权使用原始债务人联络信息向原始债务人进行催收或根据本协议2.5自行催收，如甲方已经根据中国法律的规定向有管辖权的人民法院提起起诉的情形下，甲方还可以进一步向司法机关披露其获得的原始债务人信息。</p>
						<p>6.2甲方应自行承担在资金投资、信贷资产转让过程产生的相关税收的纳税义务，并根据中国法律的规定自行向其主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，甲方违反上述规定导致丁方遭受任何损失应由甲方负责全额赔偿。</p>
						<p>6.3甲方变更账户信息、通讯地址、电话等相关重要信息，须及时通知丁方。因甲方未及时通知丁方而导致的一切损失，由甲方自行承担或进行赔偿。</p>
						<p>6.4如果甲方出现投资资金的继承或赠与，必须由主张权利的继承人或受赠人向丁方出示经国家行政或司法机关确认的继承或赠与权利归属证明文件，丁方确认后方予协助进行资产的转移，由此而产生的相应税费，由继承人或受赠人根据中国法律的规定自行向相关主管税务机关申报、缴纳，丁方不承担任何代扣代缴的义务及责任，继承人或受赠人违反上述规定导致丁方遭受的任何损失，由甲方全额赔偿。</p>
						<p class="maDistance">七、违约责任</p>
						<p>任何一方违反本协议的约定给对方造成损失，均应承担违约责任，并赔偿对方因此遭受的损失（包括由此产生的诉讼费和律师费）；如双方违约，则根据实际情况各自承担相应的责任。违约方应赔偿因其违约而给守约方造成的损失，包括本协议履行后可以获得的利益，但不得超过违约方订立本协议时可以预见或应当预见的因违反本协议可能造成的损失。</p>
						<p class="maDistance">八、争议解决</p>
						<p>在本协议履行过程中，如发生任何争执或纠纷，双方应友好协商解决，协商不成的，任何一方有权向丁方住所地有管辖权的人民法院提起诉讼。</p>
						<p class="maDistance">九、甲方的特别声明</p>
						<p>甲方确认在签署本协议之前已阅读以下与本协议及购买信贷资产协议的订立及履行有关的风险提示，并对该等风险有充分理解和预期，甲方自愿承担该等风险可能给甲方带来的一切损失和责任。</p>
						<p>(1) 政策风险：国家因宏观政策、财政政策、货币政策、行业政策、地区发展政策等因素引起的系统风险。</p>
						<p>(2) 原始债务人及担保人信用风险：当原始债务人及担保人（如有）短期或者长期丧失还款能力（包括但不限于原始债务人收入情况、财产状况发生变化、人身出现意外、发生疾病、死亡等情况），或者原始债务人及担保人（如有）的还款意愿发生变化时，甲方的出借资金及利息可能无法按时回收甚至无法回收。</p>
						<p>(3) 资金流动性风险：甲方按照约定将购买信贷资产给原始债务人使用，在原始债务人不主动提前还款的情况下，原始债务人将按照约定的期限偿还甲方的本金并支付利息，因此资金回收可能需要一定的周期。同时，甲方也可能无法在一定时间内将信贷资产转让给第三方。</p>
						<p>(4) 不可抗力：由于丁方及相关第三方的设备、系统故障或缺陷、病毒、黑客攻击、网络故障、网络中断、地震、台风、水灾、海啸、雷电、火灾、瘟疫、流行病、战争、恐怖主义、敌对行为、暴动、罢工、交通中断、停止供应主要服务、电力中断、经济形势严重恶化或其它类似事件导致的风险。
甲方确认在同意订立本协议前已仔细阅读了本协议的所有条款，对本协议的所有条款及内容已经阅悉，均无异议，并对双方的合作关系、有关权利、义务和责任条款的法律含义达成充分的理解，甲方自愿承受自主出借行为可能所产生的全部风险。</p>
						<p class="maDistance">十、其他</p>
						<p>本协议自双方以电子合同的形式订立之时起生效，即甲方首次投资时在财客钱包勾选位于页面下方的“我同意投资服务协议”选项之时生效，至甲方不再使用丁方所提供之服务或甲方在财客钱包注销账户且双方已将所有的权利义务关系履行完毕时止。</p>
						<p>本协议中的任何条款因违反中国法律而无效的，不影响本协议其他条款的效力。</p>
						<p>经各方协商一致，可以对本合同进行补充、变更或修改，任何补充、变更或修改均需订立书面协议（包括电子文本），并经各方签署后生效；变更条款或协议构成本合同的一部分，与本协议具有同等法律效力</p>
					</section>
				</ul>
			</section>
		</section>
		<!-- 系统崩溃 -->
		<section class="collapse" id="" style="display:none">
			<span class="fetclose"></span>
			<h3></h3>
			<p>先去看看其他好玩的功能</p>
			<p>等我约你</p>
			<p>mua</p>
		</section>
		<!-- 信用卡介绍页 -->
		<article class="box_credit" style="display:none;">
			<section class="credit_card">
				<p></p>
				<p>你刷卡 我还款</p>
				<p>信用卡还款功能</p>
				<p>仅针对财客栈用户开放使用</p>
				<p><b>每月1号免费摇</b>信用卡还款券</p>
				<but id="overPast">了解如何加入财客栈</but>
				<span class="close_card"></span>
			</section>
			<section class="join_duction">
				<ul>
					<p></p>
					<p>财客栈</p>
					<p>1、财客栈是什么？</p>
					<p>财客栈是对财客钱包VIP用户虚拟聚集地的称呼。</p>
					<p>2、如何成为财客栈成员？</p>
					<p>在财客钱包注册并实名认证已满1个月，累计投资额度满3万元（不含活期宝），系统将会在48小时内自动审核资质，审核通过财客栈成员标识被点亮，则视为成功加入财客栈。</p>
					<p>3、加入财客栈有什么好处？</p>
					<p>a.财客钱包新功能上线优先试用（有红包奖励）。</p>
					<p>b.不定期发红包回馈。</p>
					<p>c.免费参加娱乐活动（爬山、滑雪、采摘、温泉等）。</p>
					<p>d.邀好友除享有普通用户所得奖励外，还有现金红包奖励：</p>
					<p>自2015年3月16日开始 ，财客栈用户邀请好友除享有正常活动奖励外，还可获得好友自注册日起30天内，首次投资额一定比例的现金红包奖励。奖励计算：投资额 x 1% ÷ 12 x 投资期限。【举例：被邀请人买了10000元的6个月产品，邀请人可获得 = 10000元 x 1% ÷ 12 x 6 = 50元】 注：当红包数额低于10元时，奖励按照10元发放。</p>
				</ul>
				<span class="close_return"></span>
			</section>
		</article>
		<!-- 微信分享 -->
		<section class="wxshare"></section>
		<!-- 新版验证码 -->
		<article class="verif_code" style="display:none" id="verification">

		</article>
		<!-- 投资记录：lv3_y -->
		<article class="investment_record" id="investment_record" style="display:none;">
			<h1>NEW&nbsp;&nbsp;50</h1>
			<h2>- 近50笔定期投资记录 -</h2>
			<ul></ul>
			<span class="text_close"></span>
		</article>
		<!-- 保单详情 -->
		<article class="policy-details">
			<section>
				<hgroup><h2>保单示例</h2></hgroup>
				<p>财客用户购买的3月期、6月期、12月期定期理财，将会由华海保险全额承保本息。</p>
				<br>
				<p>总保额7000万，保单号如下：</p>
				<p>1100115000104305220150000017</p>
				<p>1100115000104305220150000012</p>
				<p>1100115000104305220150000013</p>
				<p>1100115000104305220150000014</p>
				<p>1100115000104305220150000015</p>
				<br>
				<p><span>*</span>财客用户可至华海保险公司官网查询保单。</p>
				<p><span>*</span>财客组织机构代码（31810132X）。</p>
				<p><span>*</span>保单到期或达到保额会自动续保。</p>
				<img src="${ctx }/static/images/poliy.jpg">
				<aside><p><b>华海财产保险股份有限公司</b></p>
				<p><b>资产保全责任保险条款</b></p>
				<p><n>总则</n></p>
				<p>第一条  本保险合同由保险条款、投保单、保险单、保险凭证以及批单组成。凡涉及本保险合同的约定，均应采用书面形式。</p>
				<p>第二条  凡符合我国法律法规规定，取得合法资格，在中华人民共和国境内（不包括港、澳、台地区）从事资产保全的企业或自然人，均可作为本保险的投保人。</p>
				<p><n>保险责任</n></p>
				<p>第三条  投保人在保险单中载明的保险期间内，在中华人民共和国境内（港、澳、台地区除外）从事资产保全业务时，由于疏忽或过失造成资产保全委托人的直接经济损失，并在保险期间内资产保全委托人首次向投保人提出索赔申请，依法应由投保人承担经济赔偿责任的，保险人按照本保单和保险条款的约定负责赔偿。</p>
				<p>保险人承担保险责任必须同时满足以下条件：</p>
				<p>（一）资产保全委托人确有实际损失的存在；</p>
				<p>（二）资产保全委托人的损失的出现与投保人的疏忽或过失有因果关系；</p>
				<p>（三）资产保全委托人的损失有具体损失金额。</p>
				<p><n>责任免除</n></p>
				<p>第四条  下列原因造成资产保全委托人财产损失的，保险人不承担赔偿责任：</p>
				<p>（一）战争、敌对行动、军事行为、武装冲突、罢工、骚乱、暴动、恐怖活动。</p>
				<p>（二）核爆炸、核辐射、核污染及其他放射性污染。</p>
				<p>（三）地震、海啸及其他人力不可抗拒的自然灾害。</p>
				<p>（四）因投保人和资产保全委托人恶意串通造成的损失。</p>
				<p>（五）因投保人故意或重大过失造成或扩大的损失。</p>
				<p><n>赔偿限额</n></p>
				<p>第五条  本保险的赔偿限额为资产保全的申请保全金额，具体由投保人与保险人协商确定，并以保险单上载明的保险金额为准。
				</p><p><n>保险期间</n></p>
				<p>第六条  除另有约定外，本保险合同的保险期间与资产保全期间相同，以保险单中载明的起讫时间为准。</p>
				<p><n>投保人、被保险人义务</n></p>
				<p>第七条  除另有约定外，投保人应当在保险合同成立时一次性缴付保险费。资产保全期间内保险期间到期的，投保人必须续保并按保单约定缴纳续保保险费。逾期未缴纳，保险人有权向投保人追缴保费，并按所欠保费金额收取每日千分之五的滞纳金。</p>
				<p>第八条  投保人由于资产保全疏忽或过失遭到资产保全委托人或利害关系人起诉时，应在收到法院送达的诉讼文书后七日内通知保险人，并将诉讼文书副本及时送交保险人。</p>
				<p>未及时提供上述通知的，保险人不承担赔偿责任，但可在赔偿限额内先行垫付后向投保人追偿。</p>
				<p>未经保险人同意，投保人不得在资产保全损害责任纠纷中自行与资产保全委托人达成调解或者和解协议。</p>
				<p>第九条  申请投保时，投保人须接受保险人对其进行资信调查。投保后，投保人有义务接受保险人对其资产保全合同执行情况进行的监管。</p>
				<p>投保人应以抵押、质押、保证中的一种或几种担保形式提供资信证明。</p>
				<p><n>赔偿处理</n></p>
				<p>第十条  资产保全委托人请求赔偿时，投保人应协助资产保全委托人向保险人提供下列证明和资料：</p>
				<p>（一）保险单正本；</p>
				<p>（二）资产保全委托人填具的索赔申请书；</p>
				<p>（三）资产保全委托人所能提供的与索赔有关的、必要的，并能证明损失性质、原因和程度的其他证明和资料。
				</p><p>第十一条  发生保险事故时，保险人按照投保人资产保全疏忽或过失给资产保全委托人造成损失应承担的损失金额和本保险合同的约定进行赔偿或先行垫付，最高不超过保险单载明的赔偿限额。</p>
				<p>保险人自向资产保全委托人赔偿保险金之日起，有权在赔偿金额范围内代位行使资产保全委托人对投保人和其担保人追偿的权利。在保险人向投保人和担保人行使代位追偿权时，资产保全委托人应当向保险人提供必要的文件和其所知道的有关情况。</p>
				<p>由于资产保全委托人的过错致使保险人不能行使代位追偿的权利的，保险人相应扣减赔偿金额。</p>
				<p>第十二条  发生保险事故时，如果资产保全委托人的损失在有相同保障的其他保险项下也能够获得赔偿，则本保险人按照本保险合同的赔偿限额与其他保险合同及本保险合同的赔偿限额总和的比例承担赔偿责任。</p>
				<p>其他保险人应承担的赔偿金额，本保险人不负责垫付。</p>
				<p>第十三条  资产保全委托人通过投保人向保险人请求赔偿保险金的诉讼时效期间为二年，自其知道或者应当知道保险事故发生之日起计算。</p>
				<p>第十四条  为保障受害的第三者利益及时得到补偿，当发生本条款第四条规定的除外情况，保险人不承担赔偿责任，但对此除外责任造成的损失可先行垫付，再向投保人追偿。但保险人的垫付约定不改变任何保险责任，本条款第四条所列情况仍然不属于保险责任。</p>
				<p><n>争议和法律适用</n></p>
				<p>第十五条  因履行本保险合同发生的争议，由当事人协商解决。协商不成的，提交保险单载明的仲裁机构仲裁；保险单未载明仲裁机构且争议发生后未达成仲裁协议的，依法向保险人所在地法院起诉。</p>
				<p>第十六条  本保险合同的争议处理适用中华人民共和国法律（不包括港澳台地区法律）。</p>
				<p><n>其他事项</n></p>
				<p>第十七条  本保险合同投保人不得退保，不得变更保险条件。</p>
				<p>第十八条  名词解释：</p>
				<p>资产保全：是利用合法、有效、规范的财务管理手段对企业或个人现有的权益中的固定资产、流动资产、无形资产进行价值保值或增值。例如购买理财产品就是一项资产保全措施，购买后资产保全委托人的资产可以实现保值或增值，保证资产保全委托人的资产不受通货膨胀的影响；再如参加家庭财产保险也是一项资产保全措施，投保后保险公司在被保险人家庭资产遭遇意外损失时给予赔付，保证被保险人的资产不因意外而受损失。</p>
				<p>资产保全委托人：是指符合我国法律法规规定，委托从事资产保全的企业或自然人进行资产保全业务并具有保险利益的利害关系人。</p>
				<p>自然灾害：指地震、海啸、雷电、飓风、台风、龙卷风、风暴、暴雨、洪水、水灾、冻灾、冰雹、地崩、雪崩、火山爆发、地面下陷下沉及其他人力不可抗拒的破坏力强大的自然现象。</p>
				<p>重大过失：是指行为人在极端疏忽和\或极端轻信心理状态的情况下，以极不合理的方式未尽到交易上特别注意的义务。</p></aside>	
			</section>
			<span class="close_card"></span>
		</article>
		<!-- 底部导航 -->
		

<script type="text/html" id="dynamic_pay_password">
	<section>
		<span class="wantClose"></span>
		<h2>
			<p class="now">短信验证</p>
			<p>密码验证</p>
			<i></i>
			<input type="hidden" id="pay_type" value="1"/>
			<input type="hidden" id="lender_pay_pwd"/>
		</h2>
		<h3><em>￥</em><b id="show_pay_money"></b></h3>
		<!--短信验证-->
		<section>
			<ul>
				<li><input type="text" id="dynamic_phoneNum" readonly >
				<but id="dynamic_Btn" verMobileType="">点击获取</but>
				</li>
				<n id="inofrerror">请输入验证码</n>
				<li id="passnumber">
					<span><i style="display: none;"></i></span>
					<span><i style="display: none;"></i></span>
					<span><i style="display: none;"></i></span>
					<span><i style="display: none;"></i></span>
					<span><i style="display: none;"></i></span>
					<span><i style="display: none;"></i></span>
					<input type="tel" id="dynamic_pwd" name ="dynamic_pwd" style="display: none;"/>
				</li>
			</ul>
			<!--密码验证-->
			<ul class="second">
				<li><a id="dynaimc_forget_pwd">忘记密码</a></li>
				<li><input id="new_pay_pd" name="pay_pd" disabled="disabled" type="password" placeholder="支付密码" maxlength="20" minLength = "6"></li>
				<n id="new_pay_msg">*请输入您的密码</n>
				<but id="new_pay_but">确定</but>
			</ul>
		</section>
	</section>
</script>

		
<script type="text/html" id="product_list">
	<!if (productList.length > 0) {!>
        <!-- 循环语句 for-->
         	<!for (var i = 0; i < productList.length; i++) {!>
                <li id=<!=productList[i].dp_id!> revenue=<!=productList[i].product_revenue!> term=<!=productList[i].product_term!>>
					<input type="hidden" name="product_alias_name" value="<!=productList[i].product_alias_name!>" />
    				<input type="hidden" name="product_alias_term" value="<!=productList[i].product_alias_term!>" />
    				<input type="hidden" name="mini_investment" value="<!=productList[i].mini_investment!>" />
    				<input type="hidden" name="surplus_money" value="<!=productList[i].surplus_money!>" />

					<!if (productList[i].dp_id!=0) {!>
						<span>

						<!if (productList[i].dp_status==0) {!>
							即将发售</span>
							<span class="number"><!=productList[i].product_revenue!>%</span>
							<span>年化收益率</span>
							<span class="time"><!=productList[i].dp_up_time!></span>
							<span class="icon03"></span>
						<!} else if (productList[i].dp_status==1 ||productList[i].dp_status==2) {!>
							在售</span>
							<span class="number"><!=productList[i].product_revenue!>%</span>
							<span>年化收益率</span>
							<span class="time"></span>
							<span class="icon01"></span>
						<!} else {!>
							售罄</span>
							<span class="number"><!=productList[i].product_revenue!>%</span>
							<span>年化收益率</span>
							<span class="time"></span>
							<span class="icon02"></span>
    					<!}!>
						<!if (productList[i].is_strong_push==1) {!>
							<section class="in"><!=productList[i].product_term_name!></section>
						<!} else {!>
							<section><!=productList[i].product_term_name!></section>
						<!}!>
					<!} else {!>
						<span class="activity"></span>
						<span class="number"><!=productList[i].product_revenue!>%</span>
						<span>年化收益率</span>
						<span>随存随取</span>
						<section>活期宝</section>
					<!}!>
				</li>
            <!}!>
    <!} else {!>
        <li>没有产品数据</li>   
    <!}!>
</script>

<script type="text/html" id="product_detail">
	<section class="returnhead"> 
	<img src="/webchat/2.0/images/img01_06.jpg">
    <input type="hidden" id="detail_dp_id" value="<!=dp_id!>" />
    <input type="hidden" id="product_alias_name" value="<!=product_alias_name!>" />
    <input type="hidden" id="product_alias_term" value="<!=product_alias_term!>" />
    <input type="hidden" id="mini_investment" value="<!=mini_investment!>" />
	<dl>
		<dt>年化收益率</dt>
		<dd><i></i><span id="product_revenue"><!=product_revenue!>%</span></dd>
		<dd>投资期限<b id="product_term"><!=product_term!>个月</b></dd>
	</dl>
	</section>
	<section class="project">
		<h1>累计加入<span><b><!=investTypeNum!></b>人</span></h1>
	<h2>
		<i style="width:<!=progress!>;"></i>
	</h2>
	<h3>
		<p>项目总额<span><b><!=dp_money!></b>元</span></p>
		<p>可投金额<span><b id="surplus_money"><!=surplus_money!></b>元</span></p>
	</h3>
	<h4>
		<a id="toProtocolLink" product_term="<!=product_term!>">投资协议&gt;</a>
	</h4>
	<h5 id="join">
	<!if (dp_status==3 ||dp_status==4 || dp_status==5) {!>
		<i class="gray"></i>
		<a href="#">已售罄</a>
	<!} else if (dp_status==0) {!>
		<i class="gray"></i>
		<a href="#">即将发售</a>
    <!} else {!>
		<i></i>
		<a href="#">点击即可加入</a>
	<!}!>
	</h5>
	</section>
	<span id="closeDetail" class="arrow_button"></span>
    <form id="toProtocolForm" action="<!=investment_url!>" method="POST" style="display:none">
		<input type="hidden" name="dp_id" value="<!=dp_id!>"/>
	</form>
</script>

<script type="text/html" id="redEnvelope_list">
	<option value="">选择红包</option>
    <!if (data.length > 0) {!>
        <!-- 循环语句 for-->
        <!for (var i = 0; i < data.length; i++) {!>
	        <option value="<!=data[i].re_p_id!>,<!=data[i].voucher_money!>,<!=data[i].oper_money!>"
				<!if (data[i].selected) {!>
					selected="selected"
				<!}!>
				>
				<!=data[i].voucher_money!>元返现红包 &nbsp;<!=data[i].ticket_end_time!>到期
			</option>
        <!}!>
    <!}!>
</script>
<!-- 最近50条投资记录 -->
<script type="text/html" id="getLendRecordForLast50_list">
	
		<li style="border-top:1px solid #eee"><span>序号</span><span>手机号</span><span>投资金额</span><span>投资时间</span></li>
    <!if (recordList.length > 0) {!>
        <!-- 循环语句 for-->
        <!for (var i = 0; i < recordList.length; i++) {!>
	       <li><span><!=i+1!></span><span><!=recordList[i].mobile!></span><span><!=recordList[i].price!></span><span><!=recordList[i].dp_unit_time!></span></li>
        <!}!>
    <!}!>
</script>

		
<script type="text/html" id="income_title">
	<input id="income_rowNumId" name="income_rowNumId"  type="hidden"  value="0">
	<input id="income_hasNext" name="income_hasNext"  type="hidden"  value="true">
</script>
<script type="text/html" id="income_list">
	<!if (datas.length > 0) {!>
         	<!for (var i = 0; i < datas.length; i++) {!>
				<li>
                 	<p><!=datas[i].regist_userId!></p>
                  	<p><!=datas[i].registDate!></p>
                   	<p><!if (datas[i].incomeReward.money==-1) {!>
								--
    					<!} else {!>
        						<span>￥</span>
								<!=datas[i].incomeReward.money!>
								<i>			
									<!if (datas[i].incomeReward.money_type==0) {!>
										抵现
    								<!} else {!>
        							现金
    							<!}!></i>
    					<!}!></i>

					</p>
                </li>
			 <!}!>
    <!} else {!>
        <li class="empty">您还没邀请过好友</li>   
    <!}!>
</script>
		
<script type="text/html" id="receivePackage_title">
</script>
<script type="text/html" id="receivePackage_list">
	<!if (datas.length > 0) {!>
         	<!for (var i = 0; i < datas.length; i++) {!>
					<!if (datas[i].ap_type==5) {!>
						<li class="type00">
    				<!} else {!>
        				<li class="type01">   
    				<!}!>
					<span class="redPacket_left">
						<div>
							<em class="num">
								￥<strong class="money"><!=datas[i].ap_money!></strong>
								<n>
										<!if (datas[i].ap_type==0) {!>
								<!=datas[i].voucher_money!>
							<!} else {!> <!}!>
								</n>
							</em>
							<em class="text">
								<!if (datas[i].ap_type==0) {!><h3>返现红包</h3>
								<!} else if (datas[i].ap_type==1) {!><h3>现金红包</h3>
								<!} else if (datas[i].ap_type==5) {!><h3>话费充值券</h3>
								<!} else if (datas[i].ap_type==6) {!><h3>信用卡还款券</h3>
								<!} else {!><h3>生活抵用券</h3> <!}!>
							</em>
						</div>
						<em class="time">
							<p class="condition">
							<!if (datas[i].ap_source =='' || datas[i].ap_source == 'NULL' ) {!>
    									<!} else {!>
        									<!=datas[i].ap_source!>
    									<!}!>
							</p>
							<p class="date"><!=datas[i].ap_start_time!>至<!=datas[i].ap_end_time!></p>
		    			</em>
					</span>
					<span class="redPacket_right" data=<!=datas[i].ap_type!>,<!=datas[i].ap_id!>,<!=datas[i].ap_status!>>
						<b class="icon-right" ></b>点击使用
					</span>
				</li> 
            <!}!>
    <!} else {!>
        <section id="red_empty" class="time_mpty">
			<i><n>空</n><n>空</n><n>如</n><n>也</n></i>
			<i></i>
		</section>
    <!}!>
</script>

		
<script type="text/html" id="trade_detail">
                    <!if(fundsFlowList.length>0){!>
						<!for(var i=0;i<fundsFlowList.length;i++){!>
                        <!if(i==0){!>
							<!if(account.isToday(fundsFlowList[i].fh_operate_time.substring(0,10)) =='TODAY'){!>
								<em class="acc_todya">
									TODAY
								</em>
							<!}else if(operate_time!=fundsFlowList[i].fh_operate_time.substring(0,10)) {!>
								<em class="acc_todya">
									<!=fundsFlowList[i].fh_operate_time.substring(0,10)!>
								</em>
							<!}!>
						<!}else{!>
							<!if(fundsFlowList[i].fh_operate_time.substring(0,10) != fundsFlowList[i-1].fh_operate_time.substring(0,10)){!>
								<em class="acc_todya"><!=fundsFlowList[i].fh_operate_time.substring(0,10)!></em>
							<!}!>
						<!}!>
						
						<li id=<!=fundsFlowList[i].fh_id_transient!>>
							<i></i>
							<span><!if(fundsFlowList[i].fh_operate_time.substring(11,13)>=12){!>pm<!}else{!>am<!}!><!=fundsFlowList[i].fh_operate_time.substring(11,16)!></span>
							<n><!=account.fh_category_transfer(fundsFlowList[i].fh_category)!>
                               <!if(fundsFlowList[i].dp_product_name != '' && fundsFlowList[i].dp_product_name != '--'){!>
									(<!=fundsFlowList[i].dp_product_name!>)</n>
								<!}else{!>
									</n>
								<!}!>

							<p><!=fundsFlowList[i].fh_amount!></p>
						</li>
					<!}!>
					<!}else{!>
						<n class="withoutData">没有交易数据</n>  
					<!}!>
</script>

<!-- 我的理财 -->
<script type="text/html" id="investDetailList_list">
	<!if (investDetailList.length > 0) {!>
		<ul class="manageMoney_list">
        	<!-- 循环语句 for-->
         	<!for (var i = 0; i < investDetailList.length; i++) {!>
                <li id=<!=investDetailList[i].lr_id_transient!> <!if (investDetailList[i].dp_status==5){!>class="null"<!}!>>
					<i class="circle"><b></b></i>
					<article class="manageMoney_details">
						<section class="text">
							<span class="date">
								<p>购买时间 <!=investDetailList[i].interest_date!></p>
							</span>
							<span class="name"><!=investDetailList[i].product_alias_name!><!=investDetailList[i].product_alias_term!>
                                 
                             </span>
							<span class="money">
								<h3>投资金额</h3>
								<p>
									<em>￥<strong><!=investDetailList[i].investment_money!></strong></em>
									<a>
									<!if (investDetailList[i].dp_status==0) {!>
										未开始
									<!} else if (investDetailList[i].dp_status==1){!>
										已发布
									<!} else if (investDetailList[i].dp_status==2){!>
										投标中
									<!} else if (investDetailList[i].dp_status==3){!>
										已完成
									<!} else if (investDetailList[i].dp_status==4){!>
										还款中
									<!} else if (investDetailList[i].dp_status==5){!>
										已结束
    								<!}!>
									</a>
								</p>
							</span>
						</section>
						<section class="btn">
							<span class="one" id=<!=investDetailList[i].dp_id!>><i></i><em>还款计划</em></span>
							<span class="two" id=<!=investDetailList[i].dp_id!>><i></i><em>协　议</em></span>
							<input type="hidden" id="investment_money_<!=investDetailList[i].dp_id!>" name="investment_money_s" value="<!=investDetailList[i].investment_money!>">
						</section>
					</article>
					<h2>
						<span><strong>已回款</strong><strong>￥<!=investDetailList[i].reday_money!></strong></span>
						<span><strong>待回款</strong><strong>￥<!=investDetailList[i].wait_money!></strong></span>
					</h2>
				</li>
           	 <!}!>
		</ul>
		<!-- 点击加载更多，有效数据和历史记录为不同的文字-->
		<!if (setType == "0") {!>
			<p id="moreClik" class="loadmore" style="text-align: center;margin-bottom: 0.5rem;">点击加载更多</p>
		<!}else{!>
			<p id="moreClik" class="loadmore" style="text-align: center;margin-bottom: 0.5rem;">历史记录</p>
		<!}!>
    <!} else {!>  
		<p id="moreClik" class="loadmore" style="text-align: center;margin-top: 0.2rem;">历史记录</p>
    <!}!>
</script>

<!-- 还款计划 -->
<script type="text/html" id="repaymentList_list">
	<!if (repaymentList.length > 0) {!>
		<!-- 循环语句 for-->
        <!for (var i = 0; i < repaymentList.length; i++) {!>
			<li>
				<span><!=repaymentList[i].repay_date!></span>
				<span><em>￥<strong><!=repaymentList[i].repay_money!></strong></em><!=repaymentList[i].repay_type!></span>
				<span><btn <!if (repaymentList[i].repay_status == '已收') {!>class="active"<!}!>><!=repaymentList[i].repay_status!></btn></span>
			</li>
		<!}!>
	<!} else {!>
		后台正在法律审核及金额计算，个人还款计划将于一周内呈现。
		<!-- <li style="-webkit-box-align:center;-webkit-box-pack:center">没有还款计划数据</li> -->
    <!}!>
</script>

<!-- 旧版投资协议 -->
<script type="text/html" id="agreementList_list_old">
	<table style="width:838px" cellpadding="5" cellspacing="5">
		<tr>
			<td colspan="7" >资产基本信息 </td>
		</tr>
		<tr>
			<td width="126">合同编号 </td>
			<td width="82">借款人姓名 </td>
			<td width="125">借款人身份证号 </td>
			<td width="114">信贷金额（元） </td>
			<td width="114">信贷用途 </td>
			<td width="177">本次转让资产价值（元） </td>
			<td width="100">备注 </td>
		</tr>
		<!-- 循环语句 for-->
        <!for (var i = 0; i < deptPackageDetailedList.length; i++) {!>	
			<tr>
				<td><!=deptPackageDetailedList[i].contract_num!></td>
				<td><!=deptPackageDetailedList[i].borrow_username!></td>
				<td><!=deptPackageDetailedList[i].borrow_card!></td>
				<td><!=deptPackageDetailedList[i].delivery!></td>
				<td><!=deptPackageDetailedList[i].loan_purpose!></td>
				<!if(i == 0){!>	
					<td rowspan="<!=deptPackageDetailedList.length!>"><!=investment_money!></td>
				<!}!>
				<td></td>
			</tr>
		<!}!>
	</table>
</script>
<!-- 新版投资协议 -->
<script type="text/html" id="agreementList_list_new">
	<table style="width:838px" cellpadding="5" cellspacing="5">
		<tr>
			<td colspan="7" >资产基本信息 </td>
		</tr>
		<tr>
			<td width="126">合同编号 </td>
			<td width="82">承租人姓名 </td>
			<td width="125">身份证号 </td>
			<td width="114">租赁金额（元） </td>
			<td width="114">用途 </td>
			<td width="177">本次转让资产价值（元） </td>
			<td width="100">备注 </td>
		</tr>
		<!-- 循环语句 for-->
        <!for (var i = 0; i < deptPackageDetailedList.length; i++) {!>	
			<tr>
				<td><!=deptPackageDetailedList[i].contract_num!></td>
				<td><!=deptPackageDetailedList[i].borrow_username!></td>
				<td><!=deptPackageDetailedList[i].borrow_card!></td>
				<td><!=deptPackageDetailedList[i].delivery!></td>
				<td><!=deptPackageDetailedList[i].loan_purpose!></td>
				<!if(i == 0){!>	
					<td rowspan="<!=deptPackageDetailedList.length!>"><!=investment_money!></td>
				<!}!>
				<td></td>
			</tr>
		<!}!>
	</table>
</script>
<!-- 充值页面所有银行限额提示数据 -->
<script type="text/html" id="bank_limit">
  <!if(bankInfos.length>0){!>
            <p>
			  <n>支持银行</n>
			  <n>单笔限额</n>
			  <n>单日限额</n>
			  <n>单月限额</n>
			</p>
			<!for(var i=0;i<bankInfos.length;i++){!>
              <p>
                <n><!= bankInfos[i].bank_name !></n>
				<! var limits = bankInfos[i].bank_amount_limit.split(',');!>
                <!for(var j=0;j<limits.length;j++){!>
				   <n><!= limits[j] !></n>
                <!}!>
			  </p>
		<!}!>
	<!}!>                
</script>

<!-- 账户中心公告-我的消息 -->
<script type="text/html" id="message_list_template">
    <!if(messageList.length>0){!>
	  <!for(var i=0;i<messageList.length;i++){!>
       <dl nId="<!=messageList[i].id!>">
       <!if(typeof(isFirstLoaded) != 'undefined' && isFirstLoaded && i < 3){!>
		<dt class="new">
		<!}else{!>
		<dt>
		<!}!>&nbsp;</dt>
        <dd>
		<h3><!=messageList[i].title!></h3>
		<p><!=messageList[i].notice_abstract!></p>
		<p><!=messageList[i].create_time!></p>
		</dd>
		<dd>&gt;&gt;</dd>
		</dl>
		<!}!>
		<!}else{!>
						  
		<!}!>
</script>
		

<script type="text/html" id="forget_reset_password">
	<form action="/webchat/user/forgetpassword" id="forgetResetPasswordForm" method="post">
		<i class="icon-back"></i>
				<article>
					<ul>
                        <li>
				                                   修改登录密码
				        </li>
						<li>
							<input type="tel" name="mobilePhone" id="user_telNumber" value="" placeholder="手机号" autocomplete="off" maxlength="11" style="ime-mode: disabled;">
						</li>
						<li>
							<input type="tel" name="registcode" id="user_telNumbercode" value="" placeholder="请输入短信验证码" autocomplete="off" maxlength="6" style="ime-mode: disabled;">
							<input type="button" name="sendCodeBtn" id="user_verBtn" value="获取验证码" verMobileId="user_telNumber" verSmsType="update_pwd">

						</li>
						<li>
							<input type="password" name="password" id="user_password" value="" placeholder="新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
						</li>
						<li>
							<input type="password" name="rePassword" id="re_user_password" value="" placeholder="确认新密码" autocomplete="off" maxlength="20" style="ime-mode: disabled;">
						</li>
						<li>
							<input type="hidden" name="opttype_updatePwd" id="opttype_updatePwd" value="updatePwd">
                            <but id ="forget_Password">确定</but>
                        </li>
					</ul>
					<i class="accountDetails04"></i>
				</article>
	</form>

</script>

<!-- 消息设置 -->
<script type="text/html" id="informationSet_list">
	<i class="accountDetails01"><n>悉</n></i>
	<!-- 循环语句 for-->
    <!for (var i = 0; i < informationList.length; i++) {!>
		<li <!if (informationList[i].status==0){!>class="on"<!}!>>
			<span class="text">
				<!=informationList[i].information_name!>
				<input type="hidden" id="check_value_<!=i+1!>" name="check_code" value="<!=informationList[i].information_code!>_<!=informationList[i].status!>">
			</span>
			<span class="button">
				<p>on</p>
				<p>off</p>
				<i></i>
			</span>
		</li>
	<!}!>
</script>

		

<script type="text/html" id="obtain_user_basic_info">
			<strong>
				
					
					客官
				
			</strong><i id="vipTag"></i>
</script>

		
<script type="text/html" id="recharge_Content">
		<!if (datas.length > 0) {!>
			<option value="0" data_id ="0">选择抵用券</option>
        	 	<!for (var i = 0; i < datas.length; i++) {!>
				<option value="<!=datas[i].ap_money!>" data_id = "<!=datas[i].ap_id!>"><!=datas[i].ap_money!>元</option>
            <!}!>
   		<!} else {!>
        	<option value="0" data_id ="0">没有抵用券可用</option> 
    	<!}!>
</script>
		
<script type="text/html" id="rechargePackage_list">
<!if (datas.length > 0) {!>
         	<!for (var i = 0; i < datas.length; i++) {!>
        			<!if (datas[i].ap_type==5) {!>
						<li class="type00">
    				<!} else {!>
        				<li class="type01">   
    				<!}!>
					<span class="redPacket_left">
						<div>
							<em class="num">￥<strong class="money"><!=datas[i].ap_money!></strong>
								<n>
									<!if (datas[i].ap_type==0) {!>
											<!=datas[i].voucher_money!>
									<!} else {!> <!}!>
								</n>
							</em>
							<em class="text">
								<!if (datas[i].ap_type==0) {!><h3>返现红包</h3>
								<!} else if (datas[i].ap_type==1) {!><h3>现金红包</h3>
								<!} else if (datas[i].ap_type==5) {!><h3>话费充值券</h3>
								<!} else if (datas[i].ap_type==6) {!><h3>信用卡还款券</h3>
								<!}else {!><h3>生活抵用券</h3> <!}!>
							</em>
						</div>
						<em class="time">
							<p class="condition">
							<!if (datas[i].ap_source =='' || datas[i].ap_source == 'NULL' ) {!>
    									<!} else {!>
        									<!=datas[i].ap_source!>
    									<!}!>
							</p>
							<p class="date"><!=datas[i].ap_start_time!>至<!=datas[i].ap_end_time!></p>
		    			</em>
					</span>
					<span class="redPacket_right" data=<!=datas[i].ap_type!>,<!=datas[i].ap_id!>,<!=datas[i].ap_status!>>
						<!if (datas[i].ap_type==5) {!><b class="icon-right" ></b>点击充值
								<!}else {!><b class="icon-right" ></b>点击使用<!}!>
					</span>
				</li> 
            <!}!>
    <!}
!>
</script>
		
<script type="text/html" id="hqb_index_temp_1">
<p>
	<em></em>
	昨日收益
	<span class="closered"><i>￥</i><!=strYestodayInterest!></span>
</p>
<p>
	<em></em>
	活期宝余额
	<span><i>￥</i><!=strBalance!></span>
</p>
</script>
<script type="text/html" id="hqb_index_temp_2">
<p>
	累计收益
	<span><i>￥</i><!=strCumulative!></span>
</p>
<p>
	近一周收益
	<span><i>￥</i><!=strSevenDayInterest!></span>
</p>
</script>
<!-- 活期宝交易记录列表 -->
<script type="text/html" id="hqb_record_list">
<!if(0 < listMapBalanceRecord.length) {!>
	<ul>
		<!for (var i = 0; i < listMapBalanceRecord.length; i++) {!>
			<!if (1 == listMapBalanceRecord[i].type) {!>
				<li id="balance_record_<!=listMapBalanceRecord[i].id!>">
					<p><i></i><b>+<!=listMapBalanceRecord[i].amount!></b><!=listMapBalanceRecord[i].createtime!></p>
				</li> 
			<!} else if(2 == listMapBalanceRecord[i].type) {!>
				<li id="balance_record_<!=listMapBalanceRecord[i].id!>" class="turnOut">
					<p><i></i><b>-<!=listMapBalanceRecord[i].amount!></b><!=listMapBalanceRecord[i].createtime!></p>
				</li>
			<!}!>
		<!}!>
	</ul>
<!}!>
<!if(true == bIsHasNextPage) {!>
	<br/>
		<p id="more_hqb_record_list_btn" style="text-align: center;">点击加载更多</p>
	<br/>
<!}!>
</script>
<!-- 活期宝收益列表 -->
<script type="text/html" id="hqb_interest_list">
<!if (0 < listMapBalanceInterest.length) {!>
	<ul>
		<!for (var i = 0; i < listMapBalanceInterest.length; i++) {!>
			<li id="<!=listMapBalanceInterest[i].id!>">
				<p><i></i><!=listMapBalanceInterest[i].createtime!><b>+<!=listMapBalanceInterest[i].interest!></b></p>
			</li>
		<!}!>
	</ul>
<!}!>
<!if(true == bIsHasNextPage) {!>
	<br/>
		<p id="more_hqb_interest_list_btn" style="text-align: center;">点击加载更多</p>
	<br/>
<!}!>
</script>
<!-- 活期宝输入结果详情列表 -->
<script type="text/html" id="hqb_income_result">
<ul>
	<li>
		<i class="theSolid"></i>
		成功转入
		<b>+<!=strIntoAmount!></b>
		<p><!=strInTime!></p>
	</li>
	<li>
		<!if (true == bCountInterestFlag) {!>
			<i class="theSolid"></i>
		<!} else {!>
			<i></i>
		<!}!>
		计算收益
		<p><!=strCountInterestTime!></p>
	</li>
	<li>
		<!if (true == bGiveInterestFlag) {!>
			<i class="theSolid"></i>
		<!} else {!>
			<i></i>
		<!}!>
		发放收益
		<p><!=strGiveInterestTime!></p>
	</li>
</ul>
</script>
		
<script type="text/html" id="exchangeRule_list">

	<!if (exchangeRuleList.length >= 1) {!>
         	<!for (var i = 0; i < exchangeRuleList.length; i++) {!>
        		<li class="type01">   
					<span class="redPacket_left">
						<div>
							<em class="num">￥<strong class="money"><!=parseFloat(exchangeRuleList[i].voucher_money).toFixed(2)!></strong>
							<!if (exchangeRuleList[i].at_type == 5) {!>
								<h4>&lt;<p>不支持广东联通和170号段</p>&gt;</h4>
							<!} else {!> <!}!>
							</em>
							<em class="text">
								<!if (exchangeRuleList[i].at_type==0) {!>
									<h3>返现红包</h3>
								<!} else if (exchangeRuleList[i].at_type==1) {!>
									<h3>现金红包</h3>
								<!} else if (exchangeRuleList[i].at_type==5) {!>
									<h3>话费抵用券</h3>
								<!} else {!>
									<h3>生活抵用券</h3> 
								<!}!>
							</em>
						</div>
						<em class="time">
							<!if (exchangeRuleList[i].at_type == 0) {!>
								<p class="condition">满<!=exchangeRuleList[i].oper_money!>元可用</p>
							<!} else {!> <!}!>
							<p class="num">剩余：<label class="residueLabel"><!=exchangeRuleList[i].current_ap_num!></label></p>
		    			</em>
					</span>
					<span class=
						<!if(exchangeRuleList[i].exchange_coin > coin_num || exchangeRuleList[i].current_ap_num == 0) {!> 
							"redPacket_right grey"
						<!} else {!> "redPacket_right orange" <!}!>
							id="goldcoin<!=exchangeRuleList[i].act_id!>_<!=exchangeRuleList[i].ap_id!>_<!=exchangeRuleList[i].exchange_coin!>" >
						<h3>金币</h3>
						<p><!=exchangeRuleList[i].exchange_coin!></p>
					</span>
				</li> 
            <!}!>
    <!} else {!>
        <li>没有兑换数据</li>   
    <!}!>
</script>
		

<script type="text/html" id="credit_card_box">
<ul>
	<li>
		<span>卡号</span>
		<input type="tel" placeholder=请输入银行卡号  id="bankCardNo" name="bankCardNo" value="<!=bankCardNo!>" maxlength="23" />
	</li>
	<li>
		<span>银行</span>
		<select id = "targetBankId" name = "targetBankId">
			<option value="0">请选择银行</option>
			<option value="105100000017">建设银行</option>
			<option value="104100000004">中国银行</option>
			<option value="102100099996">工商银行</option>
			<option value="103100000026">农业银行</option>
			<option value="403100000004">邮储银行</option>
			<option value="308584000013">招商银行</option>
			<option value="301290000007">交通银行</option>
			<option value="305100000013">民生银行</option>
			<option value="303100000006">光大银行</option>
			<option value="309391000011">兴业银行</option>
			<option value="306581000003">广发银行</option>
			<option value="304100040000">华夏银行</option>
			<option value="313100000013">北京银行</option>
		</select>
	</li>
	<li>
		<span>姓名</span>
		<input readonly type="text" id = "customerName" name = "customerName" value="<!=customerName!>"/>
	</li>
	<li>
		<span>金额</span>
		<input type="number" placeholder='请输入还款金额' id = "credit_amount" name = "amount"/>
	</li>
	<li>
		<span>红包</span>
		<select id="redList">
			<option  value="0" data_id="0">选择抵用券</option>
		</select>
	</li>
	<li class="ipnut_money">
		<p>为保证资金安全，目前每月只能还款三次，单笔最大还款金额10000元。</p>
		<h2><span>支付金额</span><money><i>￥</i><pay id="amountMoney">0</pay>元</money></h2>
	</li>
	<li class="input_but">
		<span id="creditRead"></span>
		<protocol>阅读并同意<br><a href="javascript:void(0);" id="show_credit_agreement_info">《信用卡还款协议》</a></protocol>
  		<input id="creditAgreement" value="0" type="hidden"/>
		<input id = "creditAmount" type="hidden"/>
		<input name = "redId" id = "creditRedId" type="hidden"/>
		<input name = "redAmount" id = "creditRedAmount" type="hidden"/>
		<input name = "payPassword" id = "creditPayPassWord" type="hidden"/>
		<input name = "targetBankName" id = "targetBankName" type="hidden"/>
		<input name = "tokenValue" id = "creditTokenValue" type="hidden"/>
		<input name = "pay_type" id = "creditPay_type" type="hidden"/>
		<input name = "dynamic_pwd" id = "creditDynamic_pwd" type="hidden"/>
		<but id = "creditCardBtn" class="gray">确认还款</but>
	</li>
</ul>
</script>
<!-- 还款记录 -->
<script type="text/html" id="credit_repayment_list">
	<!if (listCreditcardTransHistory.length > 0) {!>
		<ul id="credit_repayment_list_ul">
			<!-- 循环语句 for-->
	        <!for (var i = 0; i < listCreditcardTransHistory.length; i++) {!>
				<li id="creditcardTransId_<!=listCreditcardTransHistory[i].nCreditcardTransHistoryId!>">
					<section>
						<h2><!=listCreditcardTransHistory[i].strCustomerName!> <!=listCreditcardTransHistory[i].strCreditCardNo!></h2>
						<h1><!=listCreditcardTransHistory[i].strFacePrice!></h1>
						<p>状态：<span><!=listCreditcardTransHistory[i].strStatus!></span></p>
						<p><!=listCreditcardTransHistory[i].strCreateTime!></p>
						<icon><img src="/webchat<!=credit.icon[listCreditcardTransHistory[i].strTargetBankName]!>"></icon>
					</section>
				</li>
			<!}!>
		</ul>
		<!if (true == bIsHasNextPage) {!>
			<br/>
			<p id="moreCreditRepaymentListBtn" style="text-align: center;">点击加载更多</p>
			<br/>
		<!}!>
	<!} else {!>
		<section class="time_mpty">
			<i><n>空</n><n>空</n><n>如</n><n>也</n></i>
			<i></i>
		</section>	
	<!}!>
</script>

<!-- 管理信用卡 -->
<script type="text/html" id="credit_card_list">
	<!if (creditCardForList.length > 0) {!>
		<!-- 循环语句 for-->
        <!for (var i = 0; i < creditCardForList.length; i++) {!>
			<dl>
				<dt><img src="/webchat/2.0/images/bank_icon/<!=creditCardForList[i].target_bank_id!>.png"></dt>
				<dd>
					<h2><!=creditCardForList[i].target_bank_name!></h2>
					<p>
						<!=creditCardForList[i].customer_name!> 
						<!=creditCardForList[i].bankCardNo != null?('***'+creditCardForList[i].bankCardNo.substring(creditCardForList[i].bankCardNo.length-4, creditCardForList[i].bankCardNo.length)):""!>
					</p>
				</dd>
				<dd>
					<but id=<!=creditCardForList[i].id!> class="repayment">立即还款</but>
					<p id=<!=creditCardForList[i].id!> class="deleted" style="text-align: center;">删除</p>
				</dd>
			</dl>
		<!}!>
	<!} else {!>
		<section class="time_mpty">
			<i><n>空</n><n>空</n><n>如</n><n>也</n></i>
			<i></i>
		</section>
		<!-- <p style="text-align: center;margin-top: 0.5rem;">您还没有绑定信用卡</p> -->
    <!}!>
</script>

		
<script type="text/html" id="myInsuranceList">
	<!for (var i = 0; i < data.length; i++) {!>
		<aside <!if (data[i].in_p_type==1) {!>
					onclick = "window.location.href='<!=webContext!>/user/overtime/claimsRecord/<!=data[i].policyNo!>_lp.html'"
				<!}  else if(data[i].in_p_type==2) {!>
					onclick = "window.location.href='<!=webContext!>/user/indoorsman/claimsRecord/<!=data[i].policyNo!>_lp.html'"
				<!}!>>
			<!if (data[i].in_p_type==1) {!>
				<p></p>
			<!} else if(data[i].in_p_type==2) {!>
				<p class="doorsman"></p>
			<!}!>
			<p><!=data[i].in_p_name!>
				<n>保单有效期时间：<!=data[i].invalid_time_show!></n>
				<n>购买时间：<!=data[i].purchase_time_show!></n></p>
				<p><i></i>查看详情</p>
		</aside>
	<!}!>
</script>

		
<footer style="transform: translate3d(0px, 0%, 0px);">
	<ul id="footerNav">
		<li>
			<span>
				<svg viewBox="0 0 21 20">
					<use xlink:href="${ctx }/static/css/caikr-icons.svg#footerIcion2"></use>
				</svg>
			</span>
			<p>生活</p>
		</li>
		<li>
			<span>
				<svg viewBox="0 0 21 20">
					<use xlink:href="${ctx }/static/css/caikr-icons.svg#footerIcion1"></use>
				</svg>
			</span>
			<p>理财</p>
		</li>
		<li style="display:none"></li>
		<li ontouchend="window.location.href=&#39;/mall/index&#39;">
			<span>
				<img src="${ctx }/static/images/footerIcion4.png" style="width: 100%;">
			</span>
			<p>商城</p>
		</li>
		<li id="tagSelested" style="left: 8.53125px;"></li>
	</ul>
	<n class="accountBlankArea" style="display: none;"></n>
	
	   
	   
	   <!--未登录状态-->
	   <section>
		<p>
			<a href="https://www.caikr.com/webchat/login"><em>登录</em></a>
			<a href="https://www.caikr.com/webchat/register"><em>注册</em></a>
		</p>
	   </section>
	   
	
</footer>
	

</body></html>