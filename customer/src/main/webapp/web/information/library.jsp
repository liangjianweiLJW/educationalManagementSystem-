<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>图书馆系统 </title>
    <script type="text/javascript" src="../../js/vue-resource.js"></script>
    <script type="text/javascript" src="../../js/vue.min.js"></script>
    <link rel="stylesheet" href="../../css/info_library.css">
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="myVue">
    <div id="header">
        <h1 class="header_img">
            <div class="header_opac_logo">
                <p>武汉工程大学图书馆系统
                <p class="header_p">Online Public Access Catalogue</p></p>
            </div>
            <div class="header_left">
                <p class="header_right_font">
                    <font color="blue">${student.name}</font>
                    <strong><a href="" style="font-family: 黑体">注销</a></strong>
                </p>
            </div>
        </h1>
    </div>
    <div class="main_naviagte">
        <ul class="nav nav-tabs" style="padding-left: 200px">
            <li><a href="#">书目检索</a></li>
            <li><a href="#">热门推荐</a></li>
            <li><a href="#">分类浏览</a></li>
            <li><a href="#">新书通报</a></li>
            <li><a href="#">期刊导航</a></li>
            <li><a href="#">读者荐购</a></li>
            <li><a href="#">学科参考</a></li>
            <li><a href="#">信息发布</a></li>
            <li><a href="#" style="background: #e6e6e6">我的图书馆</a></li>
        </ul>
    </div>


    <div class="my_container">
        <div id="mylib_navigate">
            <ul class="nav  nav-stacked nav-navbar">
                <li class="active"><a data-toggle="tab" href="#menu1">证件信息</a></li>
                <li><a data-toggle="tab" href="#menu2">借阅书籍</a></li>
                <li><a data-toggle="tab" href="#menu3">借阅历史</a></li>
                <li><a data-toggle="tab" href="#menu4">违章缴款</a></li>
                <li><a data-toggle="tab" href="#menu4">我的书架</a></li>
                <li><a data-toggle="tab" href="#menu4">书刊遗失</a></li>
                <li><a data-toggle="tab" href="#menu4">帐目清单</a></li>
            </ul>
        </div>
        <div class="tab-content">
            <div id="menu1" class="tab-pane fade in active">
                <div>
                    <p>证件信息:</p>
                    <a href="">五天内即将过期图书[<strong style="color:#F00;">0</strong>]</a>，<a
                        href="">已超期图书[<strong
                        style="color:#F00;">0</strong>]</a>，<a href="">预约到书[<strong style="color:#F00;">0</strong>]</a>，
                    <a href="">委托到书[<strong style="color:#F00;">0</strong>]</a>
                    <br/>
                    最近两个月您一共有<a href="asord_lst.php">【0】条荐购</a>，图书馆已处理了【0】条 ，
                    点击<a href="" class="btn btn-info btn-sm" style="color:#fff;">继续荐购</a>
                </div>
                <div style="margin-top: 40px">
                    <table width="100%" border="0" cellpadding="5" cellspacing="1" style="padding:8px">
                        <TR>
                            <TD rowspan="6">
                                <div style="margin: 0 0 0 100px; padding-bottom: 20px">
                            <span style="padding-left:20px;"><img
                                    src="http://218.199.187.110/tpl/images/libimg.png"/></span><br/>
                                    <input type="button" class="btn btn-success" VALUE="修改密码"/>
                                    <input type="button" class="btn btn-success" VALUE="修改信息"/>
                                </div>
                            </TD>
                            <TD><span class="bluetext">姓名：</span>${student.name}</TD>
                            <TD><span class="bluetext">证件号： </span>${student.id}</TD>
                            <TD><span class="bluetext">条码号：</span>${student.id}</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">失效日期：</span>2017-06-25</TD>
                            <TD><span class="bluetext">办证日期：</span>2013-09-30</TD>
                            <TD><span class="bluetext">生效日期：</span>2013-09-30</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">最大可借图书：</span>15</TD>
                            <TD><span class="bluetext">最大可预约图书：</span>0</TD>
                            <TD><span class="bluetext">最大可委托图书：</span>0</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">读者类型：</span>${student.education}</TD>
                            <TD><span class="bluetext">借阅等级：</span>01</TD>
                            <TD><span class="bluetext">累计借书：</span>{{libraryInfo.borrows}}册次</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">违章次数：</span>{{libraryInfo.violates}}</TD>
                            <TD><span class="bluetext">欠款金额：</span>{{libraryInfo.overdraft}}</TD>
                            <TD><span class="bluetext">系别：</span>${student.academy}${student.grade}</TD>
                        </TR>
                        <TR>
                            <TD colspan="2"><span class="bluetext">Email：</span></TD>
                            <TD colspan="2"><span class="bluetext">身份证号： </span>${student.peopleId}</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">工作单位：</span>${student.academy}${student.grade}</TD>
                            <TD><span class="bluetext">职业/职称：</span></TD>
                            <TD><span class="bluetext">职位：</span></TD>
                            <TD><span class="bluetext">性别：</span>${student.sex}</TD>
                        </TR>
                        <TR>
                            <TD><span class="bluetext">住址：</span></TD>
                            <TD><span class="bluetext">邮编：</span></TD>
                            <TD><span class="bluetext">电话：</span></TD>
                            <TD><span class="bluetext">手机：</span>

                            </TD>
                        </tr>
                        <tr>
                            <TD><span class="bluetext">出生日期：</span></TD>
                            <TD><span class="bluetext">文化程度：</span>大学</TD>
                            <TD><span class="bluetext">押金：</span>0元</TD>
                            <TD><span class="bluetext">手续费：</span>0元</TD>
                        </TR>
                    </table>
                </div>
            </div>

            <div id="menu2" class="tab-pane fade">
                <form role="form" action="/library/borrowBook" method="post">
                    <div class="form-group">
                        <label>图书ID：</label>
                        <input type="text" class="form-control" name="bookId" placeholder="请输入名称">
                    </div>
                    <div class="form-group">
                        <label>书名：</label>
                        <input type="text" class="form-control" name="name" placeholder="请输入名称">
                    </div>
                    <div class="form-group">
                        <label>管理人员：</label>
                        <input type="text" class="form-control" name="chargePerson" placeholder="请输入名称">
                    </div>
                    <button type="submit" class="btn btn-default">提交</button>
                </form>
            </div>
            <div id="menu3" class="tab-pane fade">
                <div id="vue-menu3">
                    <table class="table table-striped">
                        <caption>借阅书籍列表</caption>
                        <thead>
                        <tr>
                            <th>书籍编号</th>
                            <th>书名</th>
                            <th>管理人员</th>
                            <th>借阅时期</th>
                            <th>归还时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="value in libraryInfo.libraryBooks">
                            <td>{{value.bookId}}</td>
                            <td>{{value.name}}</td>
                            <td>{{value.chargePerson}}</td>
                            <td>{{value.borrowTime}}</td>
                            <td>{{value.returnTime}}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div id="menu4" class="tab-pane fade">
                <div class="form-group">
                    <label>当前欠款金额：{{libraryInfo.overdraft}}</label>
                </div>
                <div class="form-group">
                    <label>还款金额：</label>
                    <input id="moneyValue" type="number" class="form-control" name="chargePerson" placeholder="请输入金额">
                </div>
                <button v-on:click="addMoney" class="btn btn-default">提交</button>
            </div>
        </div>
    </div>


    <div class="footData">
        <p>Copyright©2010-2015 武汉工程大学图书馆</p>
        <p>
            版权所有©武汉工程大学 | 地址：中国.湖北.武汉市东湖新技术开发区光谷一路206号 | 邮编：430205 | 鄂ICP备05003333号
        </p>
    </div>

</div>
<script>
    Vue.use(VueResource);
    new Vue({
        el: '#myVue',
        data: {
            libraryInfo: ""
        },
        created: function () {
            var url = "/library/libraryInfo";
            this.$http.get(url).then(function (data) {
                console.info(data.body);
                this.libraryInfo = data.body;
            }, function (response) {
                console.info(response);
                if(response.status==400){
                    window.location.href = "/web/login/library.jsp";
                }
            })
        },
        methods: {
            addMoney: function () {
                this.$http.post("/financial/addMoneyRecord", {
                    id:${student.id},
                    fee: $("#moneyValue").val(),
                    type: "图书馆欠费缴纳"
                }).then(function (data) {
                        var moneyData = data.body;
                        if (data.status == 200 && moneyData.code == 200) {
                            this.$http.post("/library/update", {
                                id:${student.id},
                                overdraft: this.libraryInfo.overdraft - moneyData.data.fee,
                            }).then(function (data) {
                                    if (data.status == 200 && moneyData.code == 200) {
                                        window.location.href = "/web/information/library.jsp";
                                        alert("充值成功");
                                    }
                                }, function (response) {
                                    console.info(response);
                                }
                            );
                        }
                    }, function (response) {
                        console.info(response);
                    }
                );
            }
        }
    });
</script>
</body>
</html>