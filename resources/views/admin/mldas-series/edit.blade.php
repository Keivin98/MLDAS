@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        Edit MLDAS Series
    </div>

    <div class="card-body">
        <form action="{{ route("admin.mldas-series.update", [$mldasSeries->id]) }}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <div class="form-group {{ $errors->has('year') ? 'has-error' : '' }}">
                <label for="year">Year*</label>
                <input type="text" id="year" name="year" class="form-control" value="{{ old('year', isset($mldasSeries) ? $mldasSeries->year : '') }}" required>
                @if($errors->has('year'))
                    <p class="help-block">
                        {{ $errors->first('year') }}
                    </p>
                @endif
                <p class="helper-block">
                    Enter the year (e.g., 2026, 2025, 2024)
                </p>
            </div>
            <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                <label for="title">Title*</label>
                <input type="text" id="title" name="title" class="form-control" value="{{ old('title', isset($mldasSeries) ? $mldasSeries->title : '') }}" required>
                @if($errors->has('title'))
                    <p class="help-block">
                        {{ $errors->first('title') }}
                    </p>
                @endif
                <p class="helper-block">
                    Enter the display title (e.g., MLDAS 2026)
                </p>
            </div>
            <div class="form-group {{ $errors->has('url') ? 'has-error' : '' }}">
                <label for="url">URL*</label>
                <input type="url" id="url" name="url" class="form-control" value="{{ old('url', isset($mldasSeries) ? $mldasSeries->url : '') }}" required>
                @if($errors->has('url'))
                    <p class="help-block">
                        {{ $errors->first('url') }}
                    </p>
                @endif
                <p class="helper-block">
                    Enter the full URL to the MLDAS series website
                </p>
            </div>
            <div class="form-group {{ $errors->has('sort_order') ? 'has-error' : '' }}">
                <label for="sort_order">Sort Order</label>
                <input type="number" id="sort_order" name="sort_order" class="form-control" value="{{ old('sort_order', isset($mldasSeries) ? $mldasSeries->sort_order : 0) }}" min="0">
                @if($errors->has('sort_order'))
                    <p class="help-block">
                        {{ $errors->first('sort_order') }}
                    </p>
                @endif
                <p class="helper-block">
                    Higher numbers appear first in the dropdown
                </p>
            </div>
            <div class="form-group {{ $errors->has('is_active') ? 'has-error' : '' }}">
                <label for="is_active">Active</label>
                <input type="checkbox" id="is_active" name="is_active" value="1" {{ old('is_active', isset($mldasSeries) ? $mldasSeries->is_active : true) ? 'checked' : '' }}>
                @if($errors->has('is_active'))
                    <p class="help-block">
                        {{ $errors->first('is_active') }}
                    </p>
                @endif
                <p class="helper-block">
                    Check to show this series in the navigation dropdown
                </p>
            </div>
            <div>
                <input class="btn btn-danger" type="submit" value="Update">
            </div>
        </form>
    </div>
</div>
@endsection
