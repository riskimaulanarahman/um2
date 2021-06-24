<?php

namespace App\Http\Controllers\API;

use App\Model\Kecamatan;
use App\Model\Kelurahan;
use App\Model\RT;
use App\Model\Prestasi;
use App\Model\SA_MasterUser as User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ListController extends Controller
{
    public function listKecamatan() {
        return Kecamatan::select('id','kode_kecamatan','nama_kecamatan')->get();
    }
    public function listKelurahan() {
        return Kelurahan::select('id','kode_kecamatan','kode_kelurahan','nama_kelurahan')->get();
    }

    public function optKelurahan($kecamatan)
    {
        $data = Kelurahan::select('kode_kelurahan','nama_kelurahan')
        ->where('kode_kecamatan',$kecamatan)
        ->get();

        return $data;
    }

    public function optrt($kelurahan)
    {
        $data = RT::select('id','nomor_rt')
        ->where('kode_kelurahan',$kelurahan)
        ->get();

        return $data;
    }

    public function getlistPrestasi(Request $req) {
        // if($kategori == 'all') {

            $data = User::with(['prestasi' => function ($query) {
                $query->where('status', '=', 'diterima');
                $query->where('keterangan', 'like', '%flutter%');
            }])
            ->with(['kecamatan','kelurahan'])
            ->where('role','!=','admin')
            ->get();

            // foreach($data as $d) {
            //     // return $d->prestasi;
            //     if($d->prestasi !== null) {
            //         return $d->get();
            //     }
            // }


        // }

        return $data;
        // return view('home', ["data" => $data]);
    }

    public function listPrestasi(Request $req) {

        // return $req;
        if($req->search) {

            $data = User::with(['prestasi' => function ($query) use ($req) {
                $query->where('status', '=', 'diterima');
                $query->where('keterangan', 'like', '%'.$req->search.'%');
                // $query->where('id_kategori', '=', ''.$req->kategori.'');

            }])
            ->with(['kecamatan','kelurahan'])
            ->where('role','!=','admin')
            // ->where('name','like','%'.$req->search.'%')
            ->get();

        } else if($req->kategori) {

            if($req->kategori == 'belajar') {
                $kategori = 1;
            } else if($req->kategori == 'kerja') {
                $kategori = 2;
            } else if($req->kategori == 'seni') {
                $kategori = 3;
            } else if($req->kategori == 'olahraga') {
                $kategori = 4;
            } else if($req->kategori == 'lingkungan') {
                $kategori = 5;
            }

            $data = User::with(['prestasi' => function ($query) use ($kategori) {
                $query->where('status', '=', 'diterima');
                $query->where('id_kategori', '=', $kategori);

            }])
            ->with(['kecamatan','kelurahan'])
            ->where('role','!=','admin')
            ->get();
        }else {

            $data = User::with(['prestasi' => function ($query) {
                $query->where('status', '=', 'diterima');
                // $query->where('keterangan', 'like', '%flutter%');

            }])
            ->with(['kecamatan','kelurahan'])
            ->where('role','!=','admin')
            ->get();

        }

        // return $data;
        return view('home', ["data" => $data]);
    }

    public function countPrestasi()
    {
        $belajar = Prestasi::where('id_kategori',1)->where('status','diterima')->count();
        $kerja = Prestasi::where('id_kategori',2)->where('status','diterima')->count();
        $seni = Prestasi::where('id_kategori',3)->where('status','diterima')->count();
        $olahraga = Prestasi::where('id_kategori',4)->where('status','diterima')->count();
        $lingkungan = Prestasi::where('id_kategori',5)->where('status','diterima')->count();

        $data = [
            "belajar" => $belajar,
            "kerja" => $kerja,
            "seni" => $seni,
            "olahraga" => $olahraga,
            "lingkungan" => $lingkungan,
        ];

        return $data;
    }
}
