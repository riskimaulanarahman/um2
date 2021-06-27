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

class PrestasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexadmin()
    {

        $prestasi = Prestasi::select('tbl_prestasi.*','users.name','users.nomor_rt')
        ->join('users','users.id_users','tbl_prestasi.id_users')
        ->with('kategori')
        ->get();
        
        // return $prestasi;

        $kategorilist = Kategori::pluck('nama','id_kategori');

        $today = Prestasi::whereDate('created_at',Carbon::today())->count();
        $week = Prestasi::where('created_at', '>', Carbon::now()->startOfWeek())
            ->where('created_at', '<', Carbon::now()->endOfWeek())
            ->count();
        $month = Prestasi::whereMonth('created_at',Carbon::now()->month)->count();
        $notread = Prestasi::where('status','menunggu')->count();

        // return $prestasi;

        return view('pages/superadmin/home_admin',[
            'prestasi' => $prestasi,
            'today' => $today,
            'week' => $week,
            'month' => $month,
            'notread' => $notread,
            'notread' => $notread,
            'kategorilist' => $kategorilist
        ]);
    }

    public function index()
    {
        $user = Auth::user();

        $namart = User::where('nomor_rt',$user->nomor_rt)->where('isRT',1)->with(['kelurahan','kecamatan'])->first();
        $kategorilist = Kategori::pluck('nama','id_kategori');

        // return $kategori;

        $prestasi = Prestasi::select('tbl_prestasi.*','users.name')
        ->join('users','users.id_users','tbl_prestasi.id_users')
        // ->where('users.kode_kelurahan',$user->kode_kelurahan)
        ->where('tbl_prestasi.id_users',$user->id_users)
        ->with('kategori')
        ->get();

        // return $prestasi;

        return view('pages/warga/home_warga',[
            'kategorilist' => $kategorilist,
            'prestasi' => $prestasi,
            "namart" => $namart
        ]);
    }

    public function cekdetail($id)
    {
        $prestasi = Prestasi::find($id);

        // $proses = Proses::select('keterangan','tbl_proses.created_at')
        // ->join('tbl_prestasi','tbl_prestasi.id','tbl_proses.id_prestasi')
        // ->where('tbl_proses.id_prestasi',$prestasi->id)
        // ->orderBy('tbl_proses.created_at')
        // ->get();

        $data = $prestasi;

        return json_encode($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $module = "warga tambah prestasi";
        $user = Auth::user();
        $namart = User::where('nomor_rt',$user->nomor_rt)->where('isRT',1)->first();
        // where('kode_kelurahan',$user->kode_kelurahan)->

        $file = $request->file('file');
        $nama_file = $module."_".time()."_".$file->getClientOriginalName();
        $tujuan_upload = 'upload';
        $file->move($tujuan_upload,$nama_file);

        // dd($nama_file);

        $id_users = $user->id_users;
        $email = $namart->email;
        $nama = $namart->name;
        $text = "warga atas nama ".$user->name." telah mengirim berkas prestasi kepada anda, silahkan cek di sistem untuk melihat detailnya.";

        $data = [
            "id_users" => $user->id_users,
            "id_kategori" => $request->kategori,
            "file" => $nama_file,
            "keterangan" => $request->keterangan,
            "status" => "menunggu"
        ];

        $prestasi = Prestasi::create($data);

        $mail = new GenerateMailController;
        $mail->generateMail($module,$id_users,$email,$nama,$text);

        return redirect()->route('warga.dashboard-warga.index')->with('status', "tambah prestasi berhasil");
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $prestasi = Prestasi::find($id);

        return view('pages/warga/edit_prestasi',[
            'prestasi' => $prestasi,
            ]);
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


        return redirect()->route('warga.dashboard-warga.index')->with('status', "berhasil edit data");

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    public function editpassword(Request $request, $id)
    {
        $user = Auth::user();

        $pass = $request->password;
        $warga = User::findorfail($id);
        
        $warga->password = bcrypt($pass);
        $warga->pass_txt = $pass;
        $warga->save();

        $module = "edit password";
        $id_users = $user->id_users;
        $email = $warga->email;
        $nama = $warga->name;
        $text = "password baru anda adalah ".$pass."";

        $mail = new GenerateMailController;
        $mail->generateMail($module,$id_users,$email,$nama,$text);

        return redirect()->route('home')->with('status','berhasil edit password');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $prestasi = Prestasi::findOrFail($id);
        $prestasi->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $prestasi = Prestasi::findOrFail($id);
        // return $prestasi;
        $prestasi->delete();

        return redirect()->route('warga.dashboard-warga.index')->with('status', "berhasil hapus data");

    }

    public function deletedprestasi($id)
    {
        $prestasi = Prestasi::findOrFail($id);
        // return $prestasi;
        $prestasi->delete();

        return redirect()->route('warga.dashboard-warga.index')->with('status', "berhasil hapus data");

    }
}
