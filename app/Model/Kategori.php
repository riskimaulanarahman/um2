<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Kategori extends Model
{
    protected $table = "tbl_kategori";

    protected $guarded = ['id_kategori'];

    protected $primaryKey = 'id_kategori';
}
