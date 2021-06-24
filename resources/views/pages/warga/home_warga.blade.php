@extends('layouts.default')

@section('title', 'Home Warga')

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

<div class="row">
	<div class="col-xl-12">
		<!-- begin panel -->
		<div class="panel panel-default">
			<!-- begin panel-heading -->
			<div class="panel-heading">
				<h4 class="panel-title">Data Prestasi</h4>
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
				@if(!$namart)
					<div class="alert alert-danger fade show">
						Data Ketua RT belum ada
					</div>
				@else
					<div class="alert alert-info fade show">
						Nama Kecamatan : {{$namart->kecamatan->nama_kecamatan}} <br>
						Nama Kelurahan : {{$namart->kelurahan->nama_kelurahan}} <br>
						Nama Ketua RT : {{$namart->name}} <br>
						No Telp : {{$namart->notelp}}

					</div>
					<button type="button" class="btn btn-info m-b-10" data-toggle="modal" data-target="#modal-tambah-prestasi">Tambah Prestasi</button>
					<table id="data-table-responsive" class="table table-striped table-bordered table-td-valign-middle">
						<thead>
							<tr>
								<th width="1%">no</th>
								<th class="text-nowrap">kategori</th>
								<th class="text-nowrap">berkas</th>
								<th class="text-nowrap">judul/keterangan</th>
								<th class="text-nowrap">tanggal</th>
								<th class="text-nowrap">status</th>
								<th class="text-nowrap" width="5%">aksi</th>
							</tr>
						</thead>
						<tbody>
							<?php $no = 1; ?>
							@foreach($prestasi as $p)
                            <tr>
                                <td class="text-center">{{ $no++ }}</td>
                                <td>{{ $p->kategori->nama }}</td>
                                <td><a href="/upload/{{$p->file}}" onclick="window.open('/upload/{{$p->file}}','popup','width=600,height=600'); return false;">{{ $p->file }}</a> </td>
                                <td>{{ $p->keterangan }}</td>
                                <td>{{ $p->created_at }}</td>
                                <td>@if($p->status == 'menunggu') <span class="btn btn-warning">Menunggu</span> @elseif($p->status == 'ditolak') <span class="btn btn-danger">Di Tolak</span>  @else <span class="btn btn-success">Di Terima</span> @endif
								</td>
								<td>
									@if($p->status == 'menunggu')
									{{-- <a href="{{ route('warga.dashboard-warga.show', ['id' => $p->id	]) }}" class="btn btn-info">Ubah</a> --}}
									<button onClick="editprestasi({{$p->id}});" class="btn btn-info">Ubah</button>
                                    <a href="{{ route('warga.deletedprestasi', ['id' => $p->id ]) }}" onclick="return confirm('Apakah Anda Yakin Hapus data ini ?');" class="btn btn-danger">Hapus</a>
									@endif
								</td>
								
                            </tr>
                            @endforeach
						</tbody>
					</table>
				@endif
				
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
		<form method="post" action="{{ route('warga.dashboard-warga.store') }}"  enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Tambah Prestasi</h4>
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
		<form method="post" action="{{ route('warga.prestasiupdate') }}"  enctype="multipart/form-data">
			{{ csrf_field() }}
			<input type="text" name="idprestasi" id="idprestasi">
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

@endpush