<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\TravelPackage;

class TravelPackageController extends Controller
{
    public function index()
    {
        $travel_packages = TravelPackage::with('galleries')->get();

        return view('travel_packages.index', compact('travel_packages'));
    }

    public function show(TravelPackage $travel_package)
    {
        $travel_packages = TravelPackage::where('id', '!=', $travel_package->id)->get();

        return view('travel_packages.show', compact('travel_package', 'travel_packages'));
    }

    public function submitContactForm(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'message' => 'required|string|max:5000',
        ]);

        // Proses data form kontak
        // Contohnya, menyimpan ke database atau mengirim email
        // Contact::create($request->all());

        return redirect()->back()->with('success', 'Pesan Anda telah terkirim!');
    }
}
