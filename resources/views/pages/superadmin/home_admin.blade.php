@extends('layouts.default')

@section('title', 'Home Admin')

@push('css')
<!-- <link href="/assets/plugins/jvectormap-next/jquery-jvectormap.css" rel="stylesheet" />
<link href="/assets/plugins/bootstrap-calendar/css/bootstrap_calendar.css" rel="stylesheet" />
<link href="/assets/plugins/gritter/css/jquery.gritter.css" rel="stylesheet" />
<link href="/assets/plugins/nvd3/build/nv.d3.css" rel="stylesheet" /> -->
<link href="/assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
<link href="/assets/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" />
<style>
	@media (min-width: 992px) {
		.col-md-2 {
			max-width: 14.2%;
		}

	}
</style>
@endpush

@section('content')
<!-- begin row -->
<div class="row">
	<!-- begin col-3 -->
	<div class="col-xl-3 col-md-6">
		<div class="widget widget-stats bg-blue">
			<div class="stats-icon"><i class="fa fa-trophy"></i></div>
			<div class="stats-info">
				<h4>Hari ini</h4>
				<p>{{$today}}</p>	
			</div>
			<div class="stats-link">
				<a href="javascript:;"> <i class="fa fa-info-circle"></i></a>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-xl-3 col-md-6">
		<div class="widget widget-stats bg-info">
			<div class="stats-icon"><i class="fa fa-trophy"></i></div>
			<div class="stats-info">
				<h4>Minggu ini</h4>
				<p>{{$week}}</p>	
			</div>
			<div class="stats-link">
				<a href="javascript:;"> <i class="fa fa-info-circle"></i></a>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-xl-3 col-md-6">
		<div class="widget widget-stats bg-orange">
			<div class="stats-icon"><i class="fa fa-trophy"></i></div>
			<div class="stats-info">
				<h4>Bulan ini</h4>
				<p>{{$month}}</p>	
			</div>
			<div class="stats-link">
				<a href="javascript:;"> <i class="fa fa-info-circle"></i></a>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
	<!-- begin col-3 -->
	<div class="col-xl-3 col-md-6">
		<div class="widget widget-stats bg-red">
			<div class="stats-icon"><i class="fa fa-trophy"></i></div>
			<div class="stats-info">
				<h4>Semua Waktu</h4>
				<p>{{$notread}}</p>	
			</div>
			<div class="stats-link">
				<a href="javascript:;"> <i class="fa fa-info-circle"></i></a>
			</div>
		</div>
	</div>
	<!-- end col-3 -->
</div>
<!-- end row -->
<div class="row">
  <!-- begin col-10 -->
  <div class="col-xl-12">
		<!-- begin panel -->
		<div class="panel panel-inverse">
			<!-- begin panel-heading -->
			<div class="panel-heading">
				<h4 class="panel-title">Data Prestasi Warga</h4>
				<div class="panel-heading-btn">
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
					<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
				</div>
			</div>
			<!-- end panel-heading -->

			<!-- begin panel-body -->
			<div class="panel-body">
				@if (session('status'))
                    <div class="alert alert-success fade show">
                        <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">&times;</span>
                        </button>
                        {{ session('status') }}
                    </div>
                @endif
				
					<table id="data-table-responsive" class="table table-striped table-bordered table-td-valign-middle">
						<thead>
							<tr>
								<th width="1%">#</th>
								<th class="text-nowrap">NIK</th>
								<th class="text-nowrap">nama</th>
								<th class="text-nowrap">alamat</th>
								<th class="text-nowrap">nomor hp</th>
								<th class="text-nowrap">kategori</th>
								<th class="text-nowrap">file dokumen</th>
								<th class="text-nowrap">tanggal</th>
								<th class="text-nowrap" width="15%">aksi</th>
							</tr>
						</thead>
						
					</table>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- end col-10 -->
</div>


@endsection



@push('scripts')
	<script src="/assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="/assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
	<script src="/assets/js/demo/table-manage-responsive.demo.js"></script>
@endpush