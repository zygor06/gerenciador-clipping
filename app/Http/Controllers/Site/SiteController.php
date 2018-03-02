<?php

namespace App\Http\Controllers\Site;

use App\Models\Clipping;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SiteController extends Controller
{
    public function index()
    {
        $clippings = Clipping::get();
        return view('pages.home', ['clippings' => $clippings]);

    }




}
