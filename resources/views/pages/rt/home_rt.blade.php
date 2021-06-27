@extends('layouts.default')

@section('title', 'Home RT')

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
			<div class="stats-icon"><i class="fa fa-comments"></i></div>
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
			<div class="stats-icon"><i class="fa fa-comments"></i></div>
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
			<div class="stats-icon"><i class="fa fa-comments"></i></div>
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
			<div class="stats-icon"><i class="fa fa-comments"></i></div>
			<div class="stats-info">
				<h4>Belum dibaca</h4>
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
				{{-- <div class="alert alert-info fade show">
					Tekan Tombol <b>"Respon"</b> Untuk merubah status prestasi agar warga mengetahui bahwa prestasinya telah dibaca 
				</div> --}}
					<button type="button" class="btn btn-info m-b-10" data-toggle="modal" data-target="#modal-tambah-prestasi">Tambah Prestasi</button>
					<table id="data-table-responsive" class="table table-striped table-bordered table-td-valign-middle">
						<thead>
							<tr>
								<th width="1%">#</th>
								<th class="text-nowrap">nama</th>
								<th class="text-nowrap">kategori</th>
								<th class="text-nowrap">judul/keterangan</th>
								<th class="text-nowrap">berkas</th>
								<th class="text-nowrap">tanggal</th>
								<th class="text-nowrap">status</th>
								<th class="text-nowrap" width="15%">aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php $no = 1; ?>
							@foreach($prestasi as $p)
                            <tr>
                                <td class="text-center">{{ $no++ }}</td>
                                <td>{{ $p->name }}</td>
								<td>{{ $p->kategori->nama }}</td>
                                <td>{{ $p->keterangan }}</td>
                                <td><a href="/upload/{{$p->file}}" onclick="window.open('/upload/{{$p->file}}','popup','width=600,height=600'); return false;">{{ $p->file }}</a> </td>
                                <td>{{$p->created_at}}</td>
								<td>@if($p->status == 'menunggu') <span class="btn btn-warning">Menunggu</span> @elseif($p->status == 'ditolak') <span class="btn btn-danger">Di Tolak</span> @else <span class="btn btn-success">Di Terima</span> @endif
									@if($p->status == 'menunggu')
										 {{-- | <a href="#" onclick="return confirm('Apakah Anda Yakin Terima data ini ?');" class="btn btn-success">Terima</a> --}}
										 <a href="{{ route('rt.dashboard-rt.respon', ['id' => $p->id	,'status' => 'diterima']) }}" onclick="return confirm('Apakah Anda Yakin Terima data ini ?');" class="btn btn-info">Terima</a>
										 <a href="{{ route('rt.dashboard-rt.respon', ['id' => $p->id	,'status' => 'ditolak']) }}" onclick="return confirm('Apakah Anda Yakin Tolak data ini ?');" class="btn btn-danger">Tolak</a>
										{{-- <a href="#" class="btn btn-danger" onclick="return confirm('Apakah Anda Yakin Tolak data ini ?');">Tolak</a> --}}
									@endif
								</td>
								<td>
									<button onClick="editprestasi({{$p->id}});" class="btn btn-info">Ubah</button>
                                    <a href="{{ route('rt.deletedprestasi', ['id' => $p->id ]) }}" onclick="return confirm('Apakah Anda Yakin Hapus data ini ?');" class="btn btn-danger">Hapus</a>
				
								</td>
								
                            </tr>
                            @endforeach
						</tbody>
					</table>
			</div>
			<!-- end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- end col-10 -->
</div>

<!-- #modal-dialog add -->
<div class="modal modal-message fade" id="modal-tambah-prestasi">
	<div class="modal-dialog">
		<form method="post" action="{{ route('rt.dashboard-rt.store') }}"  enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Tambah Prestasi</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">

					<label class="control-label">nama warga <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('namawarga') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<select class="form-control" name="namawarga" id="namawarga">
								@foreach($namawarga as $id => $nama)
									<option value="{{$id}}">{{$nama}}</option>
								@endforeach
							</select>
							@if ($errors->has('namawarga'))
								<span class="help-block">
									<strong>{{ $errors->first('namawarga') }}</strong>
								</span>
							@endif
						</div>
					</div>

					<label class="control-label">kategori <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('kategori') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							{{-- <input type="text" id="kategori" name="kategori" class="form-control" required> --}}
							<select class="form-control" name="kategori" id="kategori">
								@foreach($kategorilist as $id => $nama)
									<option value="{{$id}}">{{$nama}}</option>
								@endforeach
							</select>
							@if ($errors->has('kategori'))
								<span class="help-block">
									<strong>{{ $errors->first('kategori') }}</strong>
								</span>
							@endif
						</div>
					</div>

					<label class="control-label">judul/keterangan <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('keterangan') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<textarea rows="4" id="keterangan" name="keterangan" class="form-control" required></textarea>
							@if ($errors->has('keterangan'))
								<span class="help-block">
									<strong>{{ $errors->first('keterangan') }}</strong>
								</span>
							@endif
						</div>
					</div>

					<label class="control-label">file <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('file') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="file" name="file" id="file" required>
							@if ($errors->has('file'))
								<span class="help-block">
									<strong>{{ $errors->first('file') }}</strong>
								</span>
							@endif
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
					<button type="submit" class="btn btn-warning">Submit</button>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- #modal-dialog edit -->
<div class="modal modal-message fade" id="modal-edit-prestasi">
	<div class="modal-dialog">
		<form method="post" action="{{ route('rt.prestasiupdate') }}"  enctype="multipart/form-data">
			{{ csrf_field() }}
			<input type="hidden" name="idprestasi" id="idprestasi">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Edit Prestasi</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<label class="control-label">kategori <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('kategori') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							{{-- <input type="text" id="kategori" name="kategori" class="form-control" required> --}}
							<select class="form-control" name="kategori" id="kategori">
								@foreach($kategorilist as $id => $nama)
									<option value="{{$id}}">{{$nama}}</option>
								@endforeach
							</select>
							@if ($errors->has('kategori'))
								<span class="help-block">
									<strong>{{ $errors->first('kategori') }}</strong>
								</span>
							@endif
						</div>
					</div>

					<label class="control-label">judul/keterangan <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('keterangan') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<textarea rows="4" id="keterangan" name="keterangan" class="form-control" required></textarea>
							@if ($errors->has('keterangan'))
								<span class="help-block">
									<strong>{{ $errors->first('keterangan') }}</strong>
								</span>
							@endif
						</div>
					</div>

					<label class="control-label">file </label>
					<div class="row row-space-10 {{ $errors->has('file') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="file" name="file" id="file">
							@if ($errors->has('file'))
								<span class="help-block">
									<strong>{{ $errors->first('file') }}</strong>
								</span>
							@endif
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
					<button type="submit" class="btn btn-warning">Submit</button>
				</div>
			</div>
		</form>
	</div>
</div>



@endsection



@push('scripts')

<script>
	function editprestasi(id) {
		// console.log(id)
		$('#modal-edit-prestasi').modal('show');
		$('#idprestasi').val(id);
		$.getJSON('/api/cek-detail/'+id,function(data){
			console.log(data.id_kategori);
			$('select#kategori').val(data.id_kategori);
			$('textarea#keterangan').val(data.keterangan);
			// $('#detaildata').html('');
			// $.each(data,function(x,y){
			// 	$('#detaildata').append('<li> Tgl.<em>'+y.created_at+'</em> | <strong>'+y.keterangan+'</strong></li>');
			// })
		})
	}
</script>
	<script src="/assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="/assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
	<script src="/assets/js/demo/table-manage-responsive.demo.js"></script>
@endpush