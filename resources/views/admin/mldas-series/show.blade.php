@extends('layouts.admin')
@section('content')

<div class="card">
    <div class="card-header">
        View MLDAS Series
    </div>

    <div class="card-body">
        <div class="form-group">
            <div class="form-group">
                <a class="btn btn-default" href="{{ route('admin.mldas-series.index') }}">
                    Back to list
                </a>
            </div>
            <table class="table table-bordered table-striped">
                <tbody>
                    <tr>
                        <th>
                            ID
                        </th>
                        <td>
                            {{ $mldasSeries->id }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Year
                        </th>
                        <td>
                            {{ $mldasSeries->year }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Title
                        </th>
                        <td>
                            {{ $mldasSeries->title }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            URL
                        </th>
                        <td>
                            <a href="{{ $mldasSeries->url }}" target="_blank">{{ $mldasSeries->url }}</a>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Active
                        </th>
                        <td>
                            <span class="badge badge-{{ $mldasSeries->is_active ? 'success' : 'danger' }}">
                                {{ $mldasSeries->is_active ? 'Active' : 'Inactive' }}
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Sort Order
                        </th>
                        <td>
                            {{ $mldasSeries->sort_order }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Created At
                        </th>
                        <td>
                            {{ $mldasSeries->created_at }}
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Updated At
                        </th>
                        <td>
                            {{ $mldasSeries->updated_at }}
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="form-group">
                <a class="btn btn-info" href="{{ route('admin.mldas-series.edit', $mldasSeries->id) }}">
                    Edit
                </a>
            </div>
        </div>
    </div>
</div>
@endsection
