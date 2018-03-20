<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SiteController extends Controller
{
    public function index()
    {
        $clippings = DB::table('tb_clipping')->orderBy('numero', 'desc')->paginate(10);
        return view('pages.home', ['clippings' => $clippings]);

    }




}
