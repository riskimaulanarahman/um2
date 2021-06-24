<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Prestasi extends Model
{
    protected $table = "tbl_prestasi";

    protected $fillable = ['id_kategori','id_users','file','keterangan','status'];

    protected $visible = ['id_kategori', 'file','keterangan','status','created_at'];

    public function users()
    {
        return $this->belongsTo('App\Model\SA_MasterUser','id_users');
    }

    public function kategori()
    {
        return $this->belongsTo('App\Model\Kategori','id_kategori','id_kategori');
        // return $this->hasMany('App\Model\Kategori','id_kategori','id_kategori');
    }
}
