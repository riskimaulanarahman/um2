@extends('layouts.empty', ['paceTop' => true, 'bodyExtraClass' => 'bg-white'])

@section('title', 'Register Page')

@section('content')
	<!-- begin register -->
	<div class="register register-with-news-feed">
		<!-- begin news-feed -->
		<div class="news-feed">
			<div class="news-image" style="background-image: url(/assets/img/login-bg/login-bg-3.jpg)"></div>
			<div class="news-caption">
				<h4 class="caption-title">Aplikasi<b> Prestasi Warga</b></h4>
				<p>
                    Universitas Mulia
				</p>
			</div>
		</div>
		<!-- end news-feed -->
		<!-- begin right-content -->
		<div class="right-content">
			<!-- begin register-header -->
			<h1 class="register-header">
				Daftar
				<small>Warga silahkan membuat akun untuk login dan menggunakan fitur website ini !</small>
			</h1>
			<!-- end register-header -->
			<!-- begin register-content -->
			<div class="register-content">
				<form method="POST" class="margin-bottom-0" action="{{ route('register') }}">
				{{ csrf_field() }}

					<label class="control-label">nik <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('nik') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="text" id="nik" name="nik" class="form-control" placeholder="nik" value="{{ old('nik') }}" required />
							@if ($errors->has('nik'))
								<span class="help-block">
									<strong>{{ $errors->first('nik') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">Name <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('name') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="text" id="name" name="name" class="form-control" placeholder="Full Name" value="{{ old('name') }}" required autofocus />
							@if ($errors->has('name'))
								<span class="help-block">
									<strong>{{ $errors->first('name') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">alamat <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('alamat') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="text" id="alamat" name="alamat" class="form-control" placeholder="alamat" value="{{ old('alamat') }}" required />

							@if ($errors->has('alamat'))
								<span class="help-block">
									<strong>{{ $errors->first('alamat') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">no.telepon <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('notelp') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="number" id="notelp" name="notelp" class="form-control" placeholder="notelp" value="{{ old('notelp') }}" required />

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
							<input type="text" id="nomor_rumah" name="nomor_rumah" class="form-control" placeholder="nomor_rumah" value="{{ old('nomor_rumah') }}" />

							@if ($errors->has('nomor_rumah'))
								<span class="help-block">
									<strong>{{ $errors->first('nomor_rumah') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">kecamatan <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('kecamatan') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<select class="form-control" name="kecamatan" id="kecamatan">
								<option value="">- Pilih Kecamatan -</option>
								@foreach($kecamatan as $id => $nama)
									<option value="{{ $id }}" >{{ $nama }}</option>
								@endforeach

							</select>
							@if ($errors->has('kecamatan'))
								<span class="help-block">
									<strong>{{ $errors->first('kecamatan') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">kelurahan <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('kelurahan') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<select class="form-control" name="kelurahan" id="kelurahan">
								<option value="">- Pilih Kelurahan -</option>
								{{-- @foreach($kelurahan as $id => $nama)
									<option value="{{ $id }}" >{{ $nama }}</option>
								@endforeach --}}

							</select>
							@if ($errors->has('kelurahan'))
								<span class="help-block">
									<strong>{{ $errors->first('kelurahan') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">nomor rt <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('nomor_rt') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							{{-- <input type="text" id="nomor_rt" name="nomor_rt" class="form-control" placeholder="nomor_rt" value="{{ old('nomor_rt') }}"  /> --}}
							<select class="form-control" name="nomor_rt" id="nomor_rt">
								<option value="">- Pilih Nomor RT -</option>
								{{-- @foreach($nort as $id => $nama)
									<option value="{{ $id }}" >{{$id}} ({{ trim($nama) }})</option>
								@endforeach --}}

							</select>
							@if ($errors->has('nomor_rt'))
								<span class="help-block">
									<strong>{{ $errors->first('nomor_rt') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">email <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('email') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="email" id="email" name="email" class="form-control" placeholder="Email" value="{{ old('email') }}" required />
							@if ($errors->has('email'))
								<span class="help-block">
									<strong>{{ $errors->first('email') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">password <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('password') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="password" id="password" name="password" class="form-control" placeholder="Password" value="{{ old('password') }}" required />
							@if ($errors->has('password'))
								<span class="help-block">
									<strong>{{ $errors->first('password') }}</strong>
								</span>
							@endif
						</div>
					</div>
					<label class="control-label">Confirm Password <span class="text-danger">*</span></label>
					<div class="row row-space-10">
						<div class="col-md-12 m-b-15">
							<input type="password" id="password-confirm" name="password_confirmation" class="form-control" placeholder="Re-Password" required />
						</div>
					</div>
					{{-- <div class="checkbox checkbox-css m-b-30">
						<div class="checkbox checkbox-css m-b-30">
							<input type="checkbox" id="agreement_checkbox" value="">
							<label for="agreement_checkbox">
							By clicking Sign Up, you agree to our <a href="javascript:;">Terms</a> and that you have read our <a href="javascript:;">Data Policy</a>, including our <a href="javascript:;">Cookie Use</a>.
							</label>
						</div>
					</div> --}}
					<div class="register-buttons">
						<button type="submit" class="btn btn-primary btn-block btn-lg">Daftar</button>
					</div>
					<div class="m-t-30 m-b-30 p-b-30">
						Sudah Mempunyai Akun ? Klik <a href="{{ route('login') }}">Disini</a> untuk Masuk.
					</div>
					<hr />
					<p class="text-center mb-0">
						&copy; Universitas Mulia All Right Reserved 2019
					</p>
				</form>
			</div>
			<!-- end register-content -->
		</div>
		<!-- end right-content -->
	</div>
	<!-- end register -->
@endsection

@push('scripts')
<script>
	// alert('bisa')
	$('#kecamatan').change(function(){
		var kecamatan = $('#kecamatan').val();

		if(kecamatan !== "") {
			$.getJSON('/api/opt-kelurahan/'+kecamatan,function(data){
				// console.log(data);
				$('#kelurahan').html('');
				$('#kelurahan').append('<option value="">- Pilih Kelurahan -</option>')
				$.each(data,function(x,y){
					$('#kelurahan').append('<option value="'+y.kode_kelurahan+'">'+y.nama_kelurahan+'</option>')
				})
			})
		} else {
			$('#kelurahan').html('');
			$('#kelurahan').append('<option value="">- Pilih Kelurahan -</option>')
		}
	})

	$('#kelurahan').change(function(){
		var kelurahan = $('#kelurahan').val();

		if(kelurahan !== "") {

			$.getJSON('/api/opt-rt/'+kelurahan,function(data){
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
@endpush
