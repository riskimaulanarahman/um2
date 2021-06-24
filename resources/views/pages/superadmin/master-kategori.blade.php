@extends('layouts.default')

@section('title', 'Master Kategori')

@push('css')
	{{-- <link href="/assets/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" />
	<link href="/assets/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" /> --}}
@endpush

@section('content')

	<!-- begin row -->
	<div class="row">
		<!-- begin col-10 -->
		<div class="col-xl-12">
			<!-- begin panel -->
			<div class="panel panel-inverse">
				<!-- begin panel-heading -->
				<div class="panel-heading">
					<h4 class="panel-title">Data Kategori</h4>
					<div class="panel-heading-btn">
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-success" data-click="panel-reload"><i class="fa fa-redo"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
						<a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
					</div>
				</div>
				<!-- end panel-heading -->

				<!-- begin panel-body -->
				<div class="panel-body">
                    <div id="data-kategori" style="height: 440px;">
                    </div>
				</div>
				<!-- end panel-body -->
			</div>
			<!-- end panel -->
		</div>
		<!-- end col-10 -->
	</div>
	<!-- end row -->
    
@endsection

@push('scripts')
<script>
    var URL = window.location.origin+'/api';

    var kecamatanStore = new DevExpress.data.CustomStore({
        key: "id_kategori",
        load: function() {
            return sendRequest(URL + "/kategori");
        },
        insert: function(values) {
            return sendRequest(URL + "/kategori", "POST", values);
        },
        update: function(key, values) {
            return sendRequest(URL + "/kategori/"+key, "PUT", values);
        },
        remove: function(key) {
            return sendRequest(URL + "/kategori/"+key, "DELETE");
        }
    });

    var dataGrid = $("#data-kategori").dxDataGrid({     
        dataSource: kecamatanStore,
        repaintChangesOnly: true,
        showBorders: true,
        editing: {
            mode: "row",
            allowAdding: true,
            allowUpdating: true,
            allowDeleting: true
        },
        scrolling: {
            mode: "virtual"
        },
        columns: [
            {
                caption: '#',
                formItem: { 
                    visible: false
                },
                width: 40,
                cellTemplate: function(container, options) {
                    container.text(options.rowIndex +1);
                }
            },
            { 
                dataField: "nama"
            }
        ],
        onToolbarPreparing: function(e) {
            var dataGrid = e.component;

            e.toolbarOptions.items.unshift({
                location: "after",
                widget: "dxButton",
                options: {
                    icon: "refresh",
                    onClick: function() {
                        dataGrid.refresh();
                    }
                }
            });
        }
    }).dxDataGrid("instance");

    function sendRequest(url, method, data) {
        var d = $.Deferred();
    
        method = method || "GET";

        // logRequest(method, url, data);
    
        $.ajax(url, {
            method: method || "GET",
            data: data,
            cache: false,
            xhrFields: { withCredentials: true }
        }).done(function(result) {
            d.resolve(method === "GET" ? result.data : result);
        }).fail(function(xhr) {
            d.reject(xhr.responseJSON ? xhr.responseJSON.Message : xhr.statusText);
        });
    
        return d.promise();
    }

    function logRequest(method, url, data) {
        console.log(method);
        console.log(url);
        console.log(data);

        var args = Object.keys(data || {}).map(function(key) {
            return key + "=" + data[key];
        }).join(" ");

        var logList = $("#requests ul"),
            time = DevExpress.localization.formatDate(new Date(), "HH:mm:ss"),
            newItem = $("<li>").text([time, method, url.slice(URL.length), args].join(" "));
        
        logList.prepend(newItem);
    }

</script>

@endpush