<%--

  @author Mohamed El Hafi
  @since 16-12-2013
--%>
<!-- Carousel
    ================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class=""></li>
		<li class="active" data-target="#myCarousel" data-slide-to="1"></li>
		<li class="" data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item">
			<img src="${resource( dir:'images', file:'couverture.jpg')}"
				alt="${meta(name:'app.name')}" />
			<div class="container">
				<div class="carousel-caption">
					<h1>Example headline.</h1>
					<p>
						Note: If you're viewing this page via a
						<code>file://</code>
						URL, the "next" and "previous" Glyphicon buttons on the left and
						right might not load/display properly due to web browser security
						rules.
					</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Sign
							up today</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item active">
			<img src="${resource( dir:'images', file:'couverture2.jpg')}"
				alt="${meta(name:'app.name')}" />
			<div class="container">
				<div class="carousel-caption">
					<h1>Another example headline.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Learn
							more</a>
					</p>
				</div>
			</div>
		</div>
		<div class="item">
			<img src="${resource( dir:'images', file:'couverture3.jpg')}"
				alt="${meta(name:'app.name')}" />
			<div class="container">
				<div class="carousel-caption">
					<h1>One more for good measure.</h1>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Browse
							gallery</a>
					</p>
				</div>
			</div>
		</div>
	</div>
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span
		class="glyphicon glyphicon-chevron-left"></span></a> <a
		class="right carousel-control" href="#myCarousel" data-slide="next"><span
		class="glyphicon glyphicon-chevron-right"></span></a>
</div>
<!-- /.carousel -->
