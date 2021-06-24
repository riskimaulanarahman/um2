<?php

namespace App\Http\Controllers\API;

use App\Model\Prestasi;
use App\Model\Kategori;
use App\Model\SA_MasterUser as User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\GenerateMailController;
use Illuminate\Support\Carbon;

use Auth;

class PrestasiRtController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user = Auth::user();

        $namawarga = User::where('kode_kelurahan',$user->kode_kelurahan)
        ->where('nomor_rt',$user->nomor_rt)
        ->pluck('name','id_users');
        $kategorilist = Kategori::pluck('nama','id_kategori');

        $prestasi = Prestasi::select('tbl_prestasi.*','users.name')
        ->join('users','users.id_users','tbl_prestasi.id_users')
        ->where('users.nomor_rt',$user->nomor_rt)
        ->with('kategori')
        ->get();

        $today = Prestasi::join('users','users.id_users','tbl_prestasi.id_users')
        ->where('users.nomor_rt',$user->nomor_rt)
        ->whereDate('tbl_prestasi.created_at',Carbon::today())
        ->count();
        $week = Prestasi::join('users','users.id_users','tbl_prestasi.id_users')
        ->where('users.nomor_rt',$user->nomor_rt)
        ->where('tbl_prestasi.created_at', '>', Carbon::now()->startOfWeek())
        ->where('tbl_prestasi.created_at', '<', Carbon::now()->endOfWeek())
        ->count();
        $month = Prestasi::join('users','users.id_users','tbl_prestasi.id_users')
        ->where('users.nomor_rt',$user->nomor_rt)
        ->whereMonth('tbl_prestasi.created_at',Carbon::now()->month)
        ->count();
        $notread = Prestasi::join('users','users.id_users','tbl_prestasi.id_users')
        ->where('users.nomor_rt',$user->nomor_rt)
        ->where('status','menunggu')
        ->count();

        // return $prestasi;

        return view('pages/rt/home_rt',[
            'prestasi' => $prestasi,
            'today' => $today,
            'week' => $week,
            'month' => $month,
            'notread' => $notread,
            'kategorilist' => $kategorilist,
            'namawarga' => $namawarga,
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user = Auth::user();

        $module = "rt tambah prestasi";
        $file = $request->file('file');
        $nama_file = $module."_".time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'upload';
        $file->move($tujuan_upload,$nama_file);

        $data = [
            "id_users" => $request->namawarga,
            "id_kategori" => $request->kategori,
            "file" => $nama_file,
            "keterangan" => $request->keterangan,
            "status" => "diterima"
        ];

        $prestasi = Prestasi::create($data);

        return redirect()->route('rt.dashboard-rt.index')->with('status', "tambah prestasi berhasil");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $prestasi = Prestasi::find($id);

        $proses = Proses::join('tbl_prestasi','tbl_prestasi.id','tbl_proses.id_prestasi')
        ->where('tbl_proses.id_prestasi',$prestasi->id)
        ->orderBy('tbl_proses.created_at')
        ->get();

        return view('pages/rt/edit_aksi',[
            'aksi' => $prestasi,
            'proses' => $proses
            ]);
    }

    public function update(Request $request,$id)
    {
        //
    }

    public function updateprestasi(Request $request)
    {
        $id = $request->idprestasi;

        $prestasi = Prestasi::findOrFail($id);

        // return $prestasi;
        // $prestasi->aksi = $request->aksi;
        // $prestasi->save();
        // $prestasi->update($request->all());
        $prestasi->update([
            'kategori' => $request->kategori,
            'keterangan' => $request->keterangan,
        ]);

        if(!empty($request->file)) {

            $file = $request->file('file');
            $nama_file = time()."_".$file->getClientOriginalName();
            $tujuan_upload = 'upload';
            $file->move($tujuan_upload,$nama_file);

            $prestasi->file = $nama_file;
            $prestasi->save();
        }


        return redirect()->route('rt.dashboard-rt.index')->with('status', "berhasil edit data");

    }

    public function updateaksi(Request $request,$id)
    {

    }

    public function respon(Request $request, $id,$status)
    {
        $user = Auth::user();
        $respon = Prestasi::findOrFail($id);

        $warga = User::where('id_users',$respon->id_users)->first();

        $module = "respon rt";
        $id_users = $user->id_users;
        $nama = $warga->name;

        $email = $warga->email;
        $text = "prestasi anda yang berjudul : ".$respon->judul." ".$status." oleh Ketua RT";

        $respon->update([
            "status" => $status
        ]);

        $mail = new GenerateMailController;
        $mail->generateMail($module,$id_users,$email,$nama,$text);

        return redirect()->route('rt.dashboard-rt.index')->with('status', "berhasil mengubah status");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function deletedprestasi($id)
    {
        $prestasi = Prestasi::findOrFail($id);
        // return $prestasi;
        $prestasi->delete();

        return redirect()->route('rt.dashboard-rt.index')->with('status', "berhasil hapus data");

    }
}
