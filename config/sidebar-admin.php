<?php

return [

    /*
    |--------------------------------------------------------------------------
    | View Storage Paths
    |--------------------------------------------------------------------------
    |
    | Most templating systems load templates from disk. Here you may specify
    | an array of paths that should be checked for your views. Of course
    | the usual Laravel view path has already been registered for you.
    |
    */

    'menu' => [
            [
                'icon' => 'fa fa-th-large',
                'title' => 'Dashboard',
                'url' => '/admin/dashboard-admin',
            
            ],
            [
                'icon' => 'fa fa-users',
                'title' => 'Data Users',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => '/admin/master-user',
                        'title' => 'Users'
                    ]
                ]
            ],
            [
                'icon' => 'fa fa-folder-open',
                'title' => 'Data Master',
                'url' => 'javascript:;',
                'caret' => true,
                'sub_menu' => [
                    [
                        'url' => '/admin/master-kategori',
                        'title' => 'Kategori'
                    ],
                    [
                        'url' => '/admin/master-rt',
                        'title' => 'RT'
                    ],
                    [
                        'url' => '/admin/master-kelurahan',
                        'title' => 'Kelurahan'
                    ],
                    [
                        'url' => '/admin/master-kecamatan',
                        'title' => 'Kecamatan'
                    ],
                ]
            ],

    ]
];