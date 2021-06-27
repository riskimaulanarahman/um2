function checkwarga(id) {

    $('#modal-check-warga').modal('show');
    $('#checkwarga').html('');
    $.getJSON('../api/checkwarga/'+id,function(data){
        // $.each(data,function(x,y){
            // alert(y);
            // console.log(y)
            $('#checkwarga').append('<li>Nama : '+data.name+'</li><li>NIK : '+data.nik+'</li><li>Email : '+data.email+'</li>'+
            '<li>Alamat : '+data.alamat+'</li><li>Nomor Rumah : '+data.nomor_rumah+'</li><li>Nomor HP : '+data.notelp+'</li>'+
            '<li>Kecamatan : '+data.kecamatan.nama_kecamatan+'</li><li>Kelurahan : '+data.kelurahan.nama_kelurahan+'</li><li>RT : '+data.nomor_rt+'</li>'
            )
            
        // })
    })
}