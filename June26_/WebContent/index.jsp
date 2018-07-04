<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.css" />
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="http://code.jquery.com/mobile/1.1.0/jquery.mobile-1.1.0.min.js"></script>
<link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet"> <!-- fotorama���̺귯�� -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script> <!-- fotorama���̺귯�� -->
<style type="text/css">
	.fotorama_caption {
		text-align: center; 
	}

	#logo {
		width: 176px;
		height: 132px;
		background-image: url(SHOP_TITLE.png);
		background-repeat: no-repeat;
		margin-top: 0px;
		margin-right: auto;
		margin-left: auto;
		margin-botton: 10px;
	}
	.title_style {
		color: #3f3c30; padding-top: 10px;
	}
	#pic_shop {
		float: left; margin-right: 10px; margin-botton: 10px;
	}
	.small {
		width: 30%;
	}
	.large {
		width: 100%;
	}
	.clear_both {
		clear: both;
	}
	.bold_style {
		font-weight:bold; color: #950000;
	}
	#video_canvas {
		margin-top: 0px;
		margin-right: auto;
		margin-botton: 0px;
		margin-left: auto;
		width: 320px;
		height: 240px;
	}
	.content_style {
		padding-right: 0px; padding-left: 0px;
	}
	.map_style {
		padding: 0px; height: 100%; width: 100%;
	}
	.ui-btn-left {
		float: left;
	}
	.ui-btn-right {
		float: right;
	}
</style>
</head>
<body>

	<div data-role="page" id="main">
		<div data-role="header" data-theme="a"><h2 id="logo"></h2></div>
		<div data-role="content">
			<ul data-role="listview" data-inset="true">
				<li>
					<a href="#shop_images"><img alt="" src="pic_i.png" class="ui-li-thumb"/><h3 class="title_style">���� ����</h3></a>
				</li>
				<li>
					<a href="#intro"><img alt="" src="intro_i.png" class="ui-li-thumb"/><h3 class="title_style">���� �Ұ�</h3></a>
				</li>
				<li>
					<a href="#shop_video"><img alt="" src="movie_i.png" class="ui-li-thumb"/><h3 class="title_style">���� ������</h3></a>
				</li>
				<li>
					<a href="map_sample.jsp" rel="external"><img alt="" src="map_i.png" class="ui-li-thumb"/><h3 class="title_style">���� ��ġ</h3></a>
				</li>
			</ul>
		</div>
		<div data-role="footer"><h2>�ֽ�ȸ��. �츮��</h2></div>
	</div>

	<div data-role="page" id="shop_images" class="gallery-page">
		<div data-role="header">
			<a href="#main" data-icon="arrow-l" data-direction="reverse" class="ui-btn-left">HOME</a>
			<h1>�������� �̹�����</h1>
		</div>
		<div data-role="content">
			<div class="fotorama" data-arrows="true" data-width="100%" data-ratio="965/643"
				 data-allow-fullscreen="true" data-nav="thumbs">
				<img src="cb01.jpg" data-caption="����"/>
				<img src="cb02.jpg" data-caption="�����1"/>
				<img src="cb03.jpg" data-caption="�����2"/>
				<img src="cb04.jpg" data-caption="�����3"/>
				<img src="cb05.jpg" data-caption="�����4"/>
				<img src="cb06.jpg" data-caption="�����5"/>
				<img src="cb07.jpg" data-caption="�����6"/>
				<a href="http://www.youtube.com/watch?v=9bZkp7q19f0">ȫ�� ������</a>
			</div>
		</div>
		<div data-role="footer"><h2>�ֽ�ȸ��. �츮��</h2></div>
	</div>

	<div data-role="page" id="intro">
		<div data-role="header" data-theme="a">
			<a href="#main" data-icon="home" data-direction="reverse" class="ui-btn-left">HOME</a>
			<h1>���� �Ұ�</h1>
		</div>
		<div data-role="content" data-theme="c">
			<img alt="" src="bg.png" class="small" id="pic_shop">
			<h2>"<strong class="bold_style">������ ����</strong>, �׸��� <strong class="bold_style">������</strong>����Դϴ�."</h2>
			<div class="clear_both"></div>
			<p>�츮 ������ �پ��� ������ ������ ����, 
				������ ������ �����ϰ� �ֽ��ϴ�.</p>
			<p>��� ������ �ż��� ���� �丮�˴ϴ�. �츮 ������
				������ ��ϴ� ���忡�� �پ��� ��ä�� ����ϰ� ������, 
				���� ������ ��ä�� ��ħ���� ��޹ް� �ֽ��ϴ�.</p>
			<p>��� ������ �׻� ��� ģ���ϰ� ���� ���ϰ� �ֽ��ϴ�.
				�׻� ���� ������ ã���ּż� �����մϴ�.</p>
		</div>
		<div data-role="footer">�츮��. �����ϵ�</div>
	</div>

	<div data-role="page" id="shop_video" data-add-back-btn="true">
		<div data-role="header" data-theme="b">
			<a href="#main" data-icon="home" data-direction="reverse" class="ui-btn-left">HOME</a>
		</div>
		<div data-role="content" data-theme="c" class="content_style">
			<div id="video_canvas">
				<video width="320" height="240" controls>
					<source src="CAM00447.mp4" type="video/mp4">
				</video>
			</div>
		</div>
		<div data-role="footer" data-theme="b">(��)�츮��. �����ϵ�</div>
	</div>
	






















</body>
</html>