<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\StoreMldasSeriesRequest;
use App\Http\Requests\Admin\UpdateMldasSeriesRequest;
use App\MldasSeries;
use Illuminate\Http\Request;

class MldasSeriesController extends Controller
{
    public function index()
    {
        $mldasSeries = MldasSeries::orderBy('sort_order', 'desc')
            ->orderBy('year', 'desc')
            ->get();

        return view('admin.mldas-series.index', compact('mldasSeries'));
    }

    public function create()
    {
        return view('admin.mldas-series.create');
    }

    public function store(StoreMldasSeriesRequest $request)
    {
        MldasSeries::create($request->all());

        return redirect()->route('admin.mldas-series.index')
            ->with('success', 'MLDAS Series created successfully.');
    }

    public function edit(MldasSeries $mldasSeries)
    {
        return view('admin.mldas-series.edit', compact('mldasSeries'));
    }

    public function update(UpdateMldasSeriesRequest $request, MldasSeries $mldasSeries)
    {
        $mldasSeries->update($request->all());

        return redirect()->route('admin.mldas-series.index')
            ->with('success', 'MLDAS Series updated successfully.');
    }

    public function destroy(MldasSeries $mldasSeries)
    {
        $mldasSeries->delete();

        return redirect()->route('admin.mldas-series.index')
            ->with('success', 'MLDAS Series deleted successfully.');
    }
}
