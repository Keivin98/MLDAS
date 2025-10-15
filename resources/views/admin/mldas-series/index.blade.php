@extends('layouts.admin')
@section('content')
<div style="margin-bottom: 10px;" class="row">
    <div class="col-lg-12">
        <a class="btn btn-success" href="{{ route("admin.mldas-series.create") }}">
            Add MLDAS Series
        </a>
    </div>
</div>
<div class="card">
    <div class="card-header">
        MLDAS Series List
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table class=" table table-bordered table-striped table-hover datatable datatable-MldasSeries">
                <thead>
                    <tr>
                        <th width="10">
                        </th>
                        <th>
                            ID
                        </th>
                        <th>
                            Year
                        </th>
                        <th>
                            Title
                        </th>
                        <th>
                            URL
                        </th>
                        <th>
                            Active
                        </th>
                        <th>
                            Sort Order
                        </th>
                        <th>
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($mldasSeries as $key => $series)
                        <tr data-entry-id="{{ $series->id }}">
                            <td>
                            </td>
                            <td>
                                {{ $series->id ?? '' }}
                            </td>
                            <td>
                                {{ $series->year ?? '' }}
                            </td>
                            <td>
                                {{ $series->title ?? '' }}
                            </td>
                            <td>
                                <a href="{{ $series->url }}" target="_blank">{{ $series->url }}</a>
                            </td>
                            <td>
                                <span class="badge badge-{{ $series->is_active ? 'success' : 'danger' }}">
                                    {{ $series->is_active ? 'Active' : 'Inactive' }}
                                </span>
                            </td>
                            <td>
                                {{ $series->sort_order ?? '' }}
                            </td>
                            <td>
                                <a class="btn btn-xs btn-primary" href="{{ route('admin.mldas-series.show', $series->id) }}">
                                    View
                                </a>

                                <a class="btn btn-xs btn-info" href="{{ route('admin.mldas-series.edit', $series->id) }}">
                                    Edit
                                </a>

                                <form action="{{ route('admin.mldas-series.destroy', $series->id) }}" method="POST" onsubmit="return confirm('Are you sure?');" style="display: inline-block;">
                                    <input type="hidden" name="_method" value="DELETE">
                                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                    <input type="submit" class="btn btn-xs btn-danger" value="Delete">
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection
@section('scripts')
@parent
<script>
    $(function () {
  let dtButtons = $.extend(true, [], $.fn.dataTable.defaults.buttons)

  $.extend(true, $.fn.dataTable.defaults, {
    order: [[ 1, 'desc' ]],
    pageLength: 100,
  });
  $('.datatable-MldasSeries:not(.ajaxTable)').DataTable({ buttons: dtButtons })
    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e){
        $($.fn.dataTable.tables(true)).DataTable()
            .columns.adjust();
    });
})

</script>
@endsection
