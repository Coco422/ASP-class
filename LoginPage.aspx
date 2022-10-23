<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="C002.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <title>研究生或研究死</title>
    <style type="text/css">
        /* 轮播图上间距 */
        #carouselExampleIndicators {
            margin-top: 30px;
        }

        .carousel-indicators li {
            background-color: blue;
        }

        .figure {
            text-align: center;
            margin-top: 20px;
        }

        #fenlei {
            margin-top: 30px;
        }
    </style>
</head>
<body onload="load_data()">
    <div class="container-fluid">
        <%--第一行--%>
        <div class="row">
            <div class="col">
                <div class="jumbotron jumbotron-fluid">

                    <h1 class="display-4">只要刷不死,就往死里刷</h1>
                    <p class="lead">你做不出的题目别人做的出,你考不到的分数别人考的到</p>

                </div>
            </div>
        </div>
        <%--第二行--%>
        <div class="row">
            <div class="col">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a class="navbar-brand" href="#">主页</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="#">高数 </a>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="#">政治</a>
                            </li>
                            <li class="nav-item dropdown  active">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-expanded="false">计算机
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">计算机系统</a>
                                    <a class="dropdown-item" href="#">计算机网络</a>
                                    <a class="dropdown-item" href="#">计算机组成原理</a>
                                    <a class="dropdown-item" href="#">数据结构与算法</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">程序语言</a>
                                </div>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">英语</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">电子</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">艺术</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">吴华辉</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">王圳楠</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">张鑫</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">陈柏荣</a>
                            </li>
                            <li class="nav-item  active">
                                <a class="nav-link" href="#">吴杭全</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="节约时间开始做题" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">搜索</button>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
        <!-- 大致思路: 
        第一行 巨幕
		第二行 导航栏
		第三行
			左3 登录
			右9
				上为轮播图
				下为题库等信息
	 -->
        <div class="row">
            <%--登陆界面--%>

            <div class="col-3" id="userInfomation">
                
                <form runat="server" style="width: 300px; margin-left: auto; margin-right: auto; text-align: center; margin-top: 100px;">
                    <h4>登录查看更多信息</h4>
                    <div class="form-group">
                        <label for="txtUserName">账号：</label>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        <br />
                        <label for="txtPwd">密码：</label>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">记住老子</label>
                        </div>
                        <asp:Button ID="btnLogin" runat="server" OnClick="Button1_Click" Text="登录" class="btn btn-primary" />
                        <asp:Button ID="btnSignup" runat="server" OnClick="ButtonSignup_Click" Text="注册" class="btn btn-light" />
                    </div>
                </form>

            </div>
            <div class="col-6">

                <div class="row">
                    <div class="col" id="lunbo">
                        <!-- 	上轮播图 -->
                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/1.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/1.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/1.png" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/1.png" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-target="#carouselExampleIndicators" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-target="#carouselExampleIndicators" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
                <!-- 第二行 -->
                <div class="row">
                    <div class="col">
                        <figure class="figure">
                            <img src="img/1.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">一卷</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/2.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">二卷</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/3.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">三卷</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/4.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">四卷</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/5.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">五卷</figcaption>
                        </figure>
                    </div>
                </div>
                <!-- 第三行 -->
                <div class="row" style="background-color: yellow;">
                    <div class="col">
                        <figure class="figure">
                            <img src="img/1.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">一库</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/2.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">二库</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/3.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">三库</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/4.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">四库</figcaption>
                        </figure>
                    </div>
                    <div class="col">
                        <figure class="figure">
                            <img src="img/5.png" class="figure-img img-fluid rounded" alt="...">
                            <figcaption class="figure-caption">五库</figcaption>
                        </figure>
                    </div>


                </div>
            </div>

            <div class="col-sm-3 ml-auto" id="fenlei">
                <!-- 院校分类 -->
                <div class="list-group">
                    <a href="#" class="list-group-item list-group-item-action active" aria-current="true">热门院校
				  </a>

                    <a href="#" class="list-group-item list-group-item-action">广东科技学院No.1</a>
                    <a href="#" class="list-group-item list-group-item-action">清华大学</a>
                    <a href="#" class="list-group-item list-group-item-action">浙江大学</a>
                    <a href="#" class="list-group-item list-group-item-action">厦门大学</a>
                    <a href="#" class="list-group-item list-group-item-action">中山大学</a>
                    <a href="#" class="list-group-item list-group-item-action">华中师范大学</a>

                    <a class=" nav-item dropdown   nav-link dropdown-toggle list-group-item list-group-item-action" href="#" data-toggle="dropdown" aria-expanded="false">更多院校
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">家里蹲大学</a>
                        <a class="dropdown-item" href="#">床上躺大学</a>
                        <a class="dropdown-item" href="#">爸妈打大学</a>
                    </div>

                </div>
            </div>

        </div>

       
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
