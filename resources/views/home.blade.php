<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>UM | Prestasi Warga</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="assets-fe/css/one-page-parallax/app.min.css" rel="stylesheet" />

	<!-- ================== END BASE CSS STYLE ================== -->
</head>
<body data-spy="scroll" data-target="#header" data-offset="51">
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin #header -->
		<div id="header" class="header navbar navbar-transparent navbar-fixed-top navbar-expand-lg">
			<!-- begin container -->
			<div class="container">
				<!-- begin navbar-brand -->
				<a href="/" class="navbar-brand">
					<span class="brand-logo"></span>
					<span class="brand-text">
						Aplikasi <span class="text-primary">Prestasi Warga</span>
					</span>
				</a>
				<!-- end navbar-brand -->
				<!-- begin navbar-toggle -->
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<!-- end navbar-header -->
				<!-- begin navbar-collapse -->
				<div class="collapse navbar-collapse" id="header-navbar">
					<ul class="nav navbar-nav navbar-right">
						{{-- <li class="nav-item dropdown">
							<a class="nav-link active" href="#home" data-click="scroll-to-target" data-scroll-target="#home">HOME <b class="caret"></b></a>
							<div class="dropdown-menu dropdown-menu-left animated fadeInDown">
								<a class="dropdown-item" href="index.html">Page with Transparent Header</a>
								<a class="dropdown-item" href="index_inverse_header.html">Page with Inverse Header</a>
								<a class="dropdown-item" href="index_default_header.html">Page with White Header</a>
								<a class="dropdown-item" href="extra_element.html">Extra Element</a>
							</div>
						</li> --}}
						<li class="nav-item"><a class="nav-link" href="#home" data-click="scroll-to-target">HOME</a></li>
						<li class="nav-item"><a class="nav-link" href="#data" id="nav-data" data-click="scroll-to-target">DATA</a></li>
						@if(isset(Auth::user()->name))
						<li class="nav-item"><a class="nav-link btn-success text-white" href="/home" target="_blank">Dashboard {{strtoupper(Auth::user()->role)}}</a></li>
						@else
						<li class="nav-item"><a class="nav-link btn-danger text-white" href="/login" target="_self">LOGIN</a></li>
						@endif
						{{-- <li class="nav-item"><a class="nav-link" href="#service" data-click="scroll-to-target">SERVICES</a></li>
						<li class="nav-item"><a class="nav-link" href="#work" data-click="scroll-to-target">WORK</a></li>
						<li class="nav-item"><a class="nav-link" href="#client" data-click="scroll-to-target">CLIENT</a></li>
						<li class="nav-item"><a class="nav-link" href="#pricing" data-click="scroll-to-target">PRICING</a></li>
						<li class="nav-item"><a class="nav-link" href="#contact" data-click="scroll-to-target">CONTACT</a></li> --}}
					</ul>
				</div>
				<!-- end navbar-collapse -->
			</div>
			<!-- end container -->
		</div>
		<!-- end #header -->
		
		<!-- begin #home -->
		<div id="home" class="content has-bg home">
			<!-- begin content-bg -->
			<div class="content-bg" style="background-image: url(assets-fe/img/bg/bg1.jpg);" 
				data-paroller="true" 
				data-paroller-factor="0.5"
				data-paroller-factor-xs="0.25">
			</div>
			<!-- end content-bg -->
			<!-- begin container -->
			<div class="container home-content">
				<h1>Cari Prestasi Warga</h1>
				{{-- <h3>Cari prestasi warga</h3> --}}

				<form action="{{ route('listprestasi') }}" method="GET">
                <div class="input-group">
						<input type="text" class="form-control" name="search" id="search" placeholder="Contoh : Laravel">
						<div class="input-group-append">
						
						<button type="submit" id="cari" class="btn btn-primary">Cari</button>
		
						</div>
						
					</div>
					<br />
					<strong>
						Cari Kategori : 
					</strong>
					<input type="submit" name="kategori" value="belajar" class="btn btn-xs btn-outline-white">
					<input type="submit" name="kategori" value="kerja" class="btn btn-xs btn-outline-white">
					<input type="submit" name="kategori" value="seni" class="btn btn-xs btn-outline-white">
					<input type="submit" name="kategori" value="olahraga" class="btn btn-xs btn-outline-white">
					<input type="submit" name="kategori" value="lingkungan" class="btn btn-xs btn-outline-white">
					{{-- <a href="#" class="btn btn-xs btn-outline-white">Kerja</a> --}}
					{{-- <a href="#" class="btn btn-xs btn-outline-white">Seni</a>
					<a href="#" class="btn btn-xs btn-outline-white">Olahraga</a>
					<a href="#" class="btn btn-xs btn-outline-white">Lingkungan</a> --}}
				</form>
				{{-- <form action="{{ route('listprestasi') }}" method="GET">
					<input type="hidden" name="kategori" value="1">
					<button type="submit" class="btn btn-xs btn-outline-white">Belajar</button> 
				</form>

				<form action="{{ route('listprestasi') }}" method="GET">
					<input type="hidden" name="kategori" value="2">
					<button type="submit" class="btn btn-xs btn-outline-white">Kerja</button> 
				</form> --}}

					
                <br />
				<br />
				{{-- or <a href="#">subscribe</a> newsletter --}}
			</div>
			<!-- end container -->
		</div>
		<!-- end #home -->
		
		<!-- begin #about -->
		<div id="data" class="content" data-scrollview="true" style="">
			<!-- begin container -->
			<div class="container" data-animation="true" data-animation-type="fadeInDown">
				<h2 class="content-title" id="title-data">Data Prestasi</h2>
				{{-- <p class="content-desc">
					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum consectetur eros dolor,<br />
					sed bibendum turpis luctus eget
				</p> --}}
				<!-- begin row -->
				<div class="row" id="divprestasi" style="height: 500px; overflow:auto; ">
					@foreach($data as $p)
						@if(!$p->prestasi->isEmpty())
							{{-- {{$p->id_users}} --}}
							<div class="col-lg-4 p-10" style="border-style: outset; height:420px;">
								<div class="team m-b-10">
								<div class="image" data-animation="true" data-animation-type="flipInX"><img src="upload/{{$p->image}}" height="80" width="100" alt="image" /></div>
								<div class="info"><h3 class="name">{{$p->name}}</h3>
								<div class="title text-primary email">{{$p->email}}</div>
								<ul style="font-size:11px; text-align:left;">
								<li>Nomor HP : {{$p->notelp}}</li>
								<li>Alamat : {{$p->alamat}}</li>
								<li>Kecamatan : {{$p->kecamatan->nama_kecamatan}}</li>
								<li>Kelurahan : {{$p->kelurahan->nama_kelurahan}}</li>
								<li>RT : {{$p->nomor_rt}}</li>
								</ul>
								<label class="btn-inverse btn-block">Prestasi</label>
								<div style="height:100px; overflow: scroll; border-style:groove;">
								<ul class="p-5" style="font-size:11px; text-align:left;" id="">
									@foreach($p->prestasi as $pres)
										<li><a href="/upload/{{$pres->file}}" target="_blank"><i class="fa fa-eye"></i></a> {{$pres->keterangan}}</li>
									@endforeach
								</ul>
								{{-- <button data-toggle="tooltip" id="belajar_'+y.id_users+'" data-title="Belajar"><i class="fa fa-book fa-lg fa-fw"></i></button>
								<button data-toggle="tooltip" id="kerja_'+y.id_users+'" data-title="Kerja"><i class="fa fa-briefcase fa-lg fa-fw"></i></button>
								<button data-toggle="tooltip" id="seni_'+y.id_users+'" data-title="Seni"><i class="fa fa-paint-brush fa-lg fa-fw"></i></button>
								<button data-toggle="tooltip" id="olahraga_'+y.id_users+'" data-title="Olahraga"><i class="fa fa-trophy fa-lg fa-fw"></i></button>
								<button data-toggle="tooltip" id="lingkungan_'+y.id_users+'" data-title="Lingkungan"><i class="fa fa-tree fa-lg fa-fw"></i></button> --}}
							</div></div></div></div>
						@endif
					@endforeach
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end #about -->
		
		<!-- begin #milestone -->
		<div id="milestone" class="content bg-black-darker has-bg" data-scrollview="true">
			<!-- begin content-bg -->
			<div class="content-bg" style="background-image: url(assets-fe/img/bg/bg-milestone.jpg)"
				data-paroller="true" 
				data-paroller-factor="0.5"
				data-paroller-factor-md="0.01"
				data-paroller-factor-xs="0.01"></div>
			<!-- end content-bg -->
			<!-- begin container -->
			<div class="container">
				<!-- begin row -->
				<div class="row">
					<!-- begin col-3 -->
					<div class="col-lg-3 milestone-col">
						<div class="milestone">
							<div id="count-belajar" class="number">0</div>
							<div class="title">Belajar</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-lg-3 milestone-col">
						<div class="milestone">
							<div id="count-kerja" class="number">0</div>
							<div class="title">Kerja</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-lg-2 milestone-col">
						<div class="milestone">
							<div id="count-seni" class="number">0</div>
							<div class="title">Seni</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-lg-2 milestone-col">
						<div class="milestone">
							<div id="count-olahraga" class="number">0</div>
							<div class="title">Olahraga</div>
						</div>
					</div>
					<!-- end col-3 -->
					<!-- begin col-3 -->
					<div class="col-lg-2 milestone-col">
						<div class="milestone">
							<div id="count-lingkungan" class="number">0</div>
							<div class="title">Lingkungan</div>
						</div>
					</div>
					<!-- end col-3 -->
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end #milestone -->
		
		<!-- begin #footer -->
		<div id="footer" class="footer">
			<div class="container">
				<div class="footer-brand">
					<div class="footer-brand-logo"></div>
					Aplikasi Prestasi Warga
				</div>
				<p>
					&copy; Copyright Universitas Mulia 2021 <br />
					{{-- An admin & front end theme with serious impact. Created by <a href="#">Riski Maulana Rahman</a> --}}
				</p>
				<p class="social-list">
					<a href="javascript:;"><i class="fab fa-facebook-f fa-fw"></i></a>
					<a href="javascript:;"><i class="fab fa-instagram fa-fw"></i></a>
					<a href="javascript:;"><i class="fab fa-twitter fa-fw"></i></a>
					<a href="javascript:;"><i class="fab fa-google-plus-g fa-fw"></i></a>
					<a href="javascript:;"><i class="fab fa-dribbble fa-fw"></i></a>
				</p>
			</div>
		</div>
		<!-- end #footer -->
		
		<!-- begin theme-panel -->
		<div class="theme-panel">
			<a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-magic"></i></a>
			<div class="theme-panel-content">
				<ul class="theme-list clearfix">
					<li><a href="javascript:;" class="bg-red" data-theme="red" data-theme-file="assets-fe/css/one-page-parallax/theme/red.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-pink" data-theme="pink" data-theme-file="assets-fe/css/one-page-parallax/theme/pink.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Pink" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-orange" data-theme="orange" data-theme-file="assets-fe/css/one-page-parallax/theme/orange.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-yellow" data-theme="yellow" data-theme-file="assets-fe/css/one-page-parallax/theme/yellow.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Yellow" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-lime" data-theme="lime" data-theme-file="assets-fe/css/one-page-parallax/theme/lime.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Lime" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-green" data-theme="green" data-theme-file="assets-fe/css/one-page-parallax/theme/green.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Green" data-original-title="" title="">&nbsp;</a></li>
					<li class="active"><a href="javascript:;" class="bg-teal" data-theme-file="assets-fe/css/one-page-parallax/theme/teal.min.css" data-theme="default" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-aqua" data-theme="aqua" data-theme-file="assets-fe/css/one-page-parallax/theme/aqua.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Aqua" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-blue" data-theme="blue" data-theme-file="assets-fe/css/one-page-parallax/theme/blue.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-purple" data-theme="purple" data-theme-file="assets-fe/css/one-page-parallax/theme/purple.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-indigo" data-theme="indigo" data-theme-file="assets-fe/css/one-page-parallax/theme/indigo.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Indigo" data-original-title="" title="">&nbsp;</a></li>
					<li><a href="javascript:;" class="bg-black" data-theme="black" data-theme-file="assets-fe/css/one-page-parallax/theme/black.min.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black" data-original-title="" title="">&nbsp;</a></li>
				</ul>
			</div>
		</div>
		<!-- end theme-panel -->
	</div>
	<!-- end #page-container -->

	<!-- #modal-dialog add -->
<div class="modal modal-message fade" id="modal-check-prestasi">
	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Detail Prestasi</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					test test

				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
					<button type="submit" class="btn btn-warning">Submit</button>
				</div>
			</div>
	</div>
</div>
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="assets-fe/js/one-page-parallax/app.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</body>
</html>

<script>
	// $('#data').hide();
	
	// $('#cari').click(function(){
	// 	var inputval = $('#inputval').val();
	// 	$('#nav-data').trigger('click')

	// 	$('#title-data').text('Hasil Pencarian');
	// 	console.log(inputval);
	// })

	//show prestasi
	function getprestasi() {

		$.getJSON('/api/list-prestasi/all',function(data){
			$.each(data,function(x,y){
				

				$('#divprestasi').append('<div class="col-lg-4 p-10" style="border-style: outset; height:420px;">'+
								'<div class="team m-b-10">'+
								'<div class="image" data-animation="true" data-animation-type="flipInX"><img src="upload/'+y.image+'" height="80" width="100" alt="image" /></div>'+
								'<div class="info"><h3 class="name">'+y.name+'</h3>'+
								'<div class="title text-primary">'+y.email+'</div>'+
								'<ul style="font-size:11px; text-align:left;">'+
								'<li>Nomor HP : '+y.notelp+'</li>'+
								'<li>Alamat : '+y.alamat+'</li>'+
								'<li>Kecamatan : '+y.kecamatan.nama_kecamatan+'</li>'+
								'<li>Kelurahan : '+y.kelurahan.nama_kelurahan+'</li>'+
								'<li>RT : '+y.nomor_rt+'</li>'+
								'</ul>'+
								'<label class="btn-inverse btn-block">Prestasi</label>'+
								'<div style="height:100px; overflow: scroll; border-style:groove;">'+
								'<ul class="p-5" style="font-size:11px; text-align:left;" id="prestasi_'+y.id_users+'">'+
		
								'</ul>'+
								// '<button data-toggle="tooltip" id="belajar_'+y.id_users+'" data-title="Belajar"><i class="fa fa-book fa-lg fa-fw"></i></button>'+
								// '<button data-toggle="tooltip" id="kerja_'+y.id_users+'" data-title="Kerja"><i class="fa fa-briefcase fa-lg fa-fw"></i></button>'+
								// '<button data-toggle="tooltip" id="seni_'+y.id_users+'" data-title="Seni"><i class="fa fa-paint-brush fa-lg fa-fw"></i></button>'+
								// '<button data-toggle="tooltip" id="olahraga_'+y.id_users+'" data-title="Olahraga"><i class="fa fa-trophy fa-lg fa-fw"></i></button>'+
								// '<button data-toggle="tooltip" id="lingkungan_'+y.id_users+'" data-title="Lingkungan"><i class="fa fa-tree fa-lg fa-fw"></i></button>'+
							'</div></div></div></div>');

				// console.log(y.id_users);
				$.each(y.prestasi,function(n,m){
					console.log(m);
					$('#prestasi_'+y.id_users).append('<li><a href="/upload/'+m.file+'" target="_blank"><i class="fa fa-eye"></i></a> '+m.keterangan+'</li>');
				})

			})
			
		})
	}


	//end show prestasi

	//show count prestasi
	$.getJSON('/api/count-prestasi',function(data){
		// console.log(data);
		// $('#count-belajar').data('final-number', '100');
		$('#count-belajar').text(data.belajar);
		$('#count-kerja').text(data.kerja);
		$('#count-seni').text(data.seni);
		$('#count-olahraga').text(data.olahraga);
		$('#count-lingkungan').text(data.lingkungan);
	})

	//end show count prestasi

</script>
