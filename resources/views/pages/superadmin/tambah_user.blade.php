@extends('layouts.default')

@section('title', 'Tambah User')

@push('css')
	<link href="/assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="/assets/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" />
@endpush

@section('content')

	<!-- begin row -->
	<div class="row">
		<!-- begin col-10 -->
		<div class="col-xl-12">
			<!-- begin panel -->
			<div class="panel panel-primary">
				<!-- begin panel-heading -->
				<div class="panel-heading">
					<h4 class="panel-title">Tambah - User</h4>
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
                <form method="POST" class="margin-bottom-0" action="{{ route('admin.sa-user-store') }}">
                        {{ csrf_field() }}

                            <label class="control-label">role <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('role') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    {{-- <input type="text" id="role" name="role" class="form-control" placeholder="role" value="{{ old('role') }}" /> --}}
                                    <select class="form-control" name="role" id="role" required>
                                        <option value="">Pilih Role</option>
                                        <option value="rt">RT</option>
                                        <option value="warga">Warga</option>
                                    </select>
                                    @if ($errors->has('role'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('role') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">Name <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('name') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="text" id="name" name="name" class="form-control" placeholder="Full Name" value="{{ old('name') }}"  />
                                    @if ($errors->has('name'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('name') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">nik <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('nik') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="text" id="nik" name="nik" class="form-control" placeholder="nik" value="{{ old('nik') }}" />
                                    @if ($errors->has('nik'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('nik') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>
                            
                            <label class="control-label">password <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('password') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="text" id="password" name="password" class="form-control" placeholder="Password" value="{{ old('password') }}" />
                                    @if ($errors->has('password'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('password') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">email <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('email') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="email" id="email" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}" />
                                    @if ($errors->has('email'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('email') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">alamat <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('alamat') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="text" id="alamat" name="alamat" class="form-control" placeholder="alamat" value="{{ old('alamat') }}"  />
                                    @if ($errors->has('alamat'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('alamat') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">no telepon <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('notelp') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="number" id="notelp" name="notelp" class="form-control" placeholder="notelp" value="{{ old('notelp') }}"  />
                                    @if ($errors->has('notelp'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('notelp') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">nomor rumah <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('nomor_rumah') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <input type="text" id="nomor_rumah" name="nomor_rumah" class="form-control" placeholder="nomor_rumah" value="{{ old('nomor_rumah') }}"  />
                                    @if ($errors->has('nomor_rumah'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('nomor_rumah') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">kecamatan<span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('kode_kecamatan') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <select class="form-control" name="kode_kecamatan" id="kode_kecamatan">
                                        <option value="">- Pilih Kecamatan -</option>
                                        @foreach($kecamatan as $id => $nama)
                                            <option value="{{ $id }}" >{{ $nama }}</option>
										@endforeach

                                    </select>
                                    @if ($errors->has('kode_kecamatan'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('kode_kecamatan') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">kelurahan<span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('kode_kelurahan') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <select class="form-control" name="kode_kelurahan" id="kode_kelurahan">
                                        <option value="">- Pilih Kelurahan -</option>
                                        {{-- @foreach($kelurahan as $id => $nama)
                                            <option value="{{ $id }}" >{{ $nama }}</option>
										@endforeach --}}

                                    </select>
                                    @if ($errors->has('kode_kelurahan'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('kode_kelurahan') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            <label class="control-label">nomor rt <span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('nomor_rt') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    {{-- <input type="text" id="nomor_rt" name="nomor_rt" class="form-control" placeholder="nomor_rt" value="{{ old('nomor_rt') }}"  /> --}}
                                    <select class="form-control" name="nomor_rt" id="nomor_rt">
                                        <option value="">- Pilih Nomor RT-</option>
                                        {{-- @foreach($nort as $id => $nama)
                                            <option value="{{ $id }}" >{{$id}} ({{ $nama }})</option>
										@endforeach --}}

                                    </select>
                                    @if ($errors->has('nomor_rt'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('nomor_rt') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div>

                            {{-- <label class="control-label">Status Ketua RT<span class="text-danger">*</span></label>
                            <div class="row row-space-10 {{ $errors->has('isRT') ? ' has-error' : '' }}">
                                <div class="col-md-12 m-b-15">
                                    <select class="form-control" name="isRT" id="isRT">
                                        <option value="">- Pilih -</option>
                                        <option value="0">Tidak</option>
                                        <option value="1">Ya</option>

                                    </select>
                                    @if ($errors->has('isRT'))
                                        <span class="help-block">
                                            <strong>{{ $errors->first('isRT') }}</strong>
                                        </span>
                                    @endif
                                </div>
                            </div> --}}

                            <hr>
                           
                            <div class="register-buttons">
                                <button type="submit" class="btn btn-primary btn-block btn-lg">Daftar</button>
                            </div>

                            <hr />

                </form>
                <a href="{{ route('admin.sa-user-index') }}" class="btn btn-danger">Kembali</a>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-10 -->
	</div>
	<!-- end row -->
@endsection

@push('scripts')
    <script>
        $('#kode_kecamatan').change(function(){
		var kode_kecamatan = $('#kode_kecamatan').val();

		if(kode_kecamatan !== "") {
			$.getJSON('/api/opt-kelurahan/'+kode_kecamatan,function(data){
				// console.log(data);
				$('#kode_kelurahan').html('');
				$('#kode_kelurahan').append('<option value="">- Pilih Kelurahan -</option>')
				$.each(data,function(x,y){
					$('#kode_kelurahan').append('<option value="'+y.kode_kelurahan+'">'+y.nama_kelurahan+'</option>')
				})
			})
		} else {
			$('#kode_kelurahan').html('');
			$('#kode_kelurahan').append('<option value="">- Pilih Kelurahan -</option>')
		}
	})

	$('#kode_kelurahan').change(function(){
		var kode_kelurahan = $('#kode_kelurahan').val();

		if(kode_kelurahan !== "") {

			$.getJSON('/api/opt-rt/'+kode_kelurahan,function(data){
				console.log(data);
				$('#nomor_rt').html('');
				$('#nomor_rt').append('<option value="">- Pilih Nomor RT -</option>');
				$.each(data,function(x,y){
					$('#nomor_rt').append('<option value="'+y.id+'">'+y.nomor_rt+'</option>');
				})
			})
		} else {
			$('#nomor_rt').html('');
			$('#nomor_rt').append('<option value="">- Pilih Nomor RT -</option>');
		}
	})
    </script>

	<script src="/assets/plugins/datatables.net/js/jquery.dataTables.min.js"></script>
	<script src="/assets/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="/assets/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
    <script src="/assets/js/demo/table-manage-responsive.demo.js"></script>
    
@endpush