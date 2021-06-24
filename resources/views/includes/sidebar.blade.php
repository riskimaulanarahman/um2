@php
	$sidebarClass = (!empty($sidebarTransparent)) ? 'sidebar-transparent' : '';
@endphp
<!-- begin #sidebar -->
<div id="sidebar" class="sidebar {{ $sidebarClass }}" >
	{{-- <div id="sidebar" class="sidebar {{ $sidebarClass }}" style="background-color:lightskyblue;"> --}}
	<!-- begin sidebar scrollbar -->
	<div data-scrollbar="true" data-height="100%">
		<!-- begin sidebar user -->
		<ul class="nav">
			<li class="nav-profile">
				<a href="javascript:;" data-toggle="nav-profile">
					<div class="cover with-shadow"></div>
					<div class="image">
						@if(Auth::user()->image == null)
						<img src="/assets/img/user/user-12.jpg" alt="" />
						@else
						<img src="/upload/{{Auth::user()->image}}" alt="" />
						@endif
					</div>
					<div class="info">
						<b class="caret pull-right"></b>
						{{ Auth::user()->name }}
						<small>Role : {{ Auth::user()->role }}</small>	
						<small>Email : {{ Auth::user()->email }}</small>
					</div>
				</a>
			</li>
			<li>
				<ul class="nav nav-profile">
					<li><a href="javascript:;"  data-toggle="modal" data-target="#modal-changepp"><i class="fa fa-images"></i> Change Photo Profile </a></li>
					<li><a href="{{ route('logout') }}" class="dropdown-item" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Log Out</a></li>
					<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
						{{ csrf_field() }}
					</form>
					<!-- <li><a href="javascript:;"><i class="fa fa-cog"></i> Settings</a></li>
					<li><a href="javascript:;"><i class="fa fa-pencil-alt"></i> Send Feedback</a></li>
					<li><a href="javascript:;"><i class="fa fa-question-circle"></i> Helps</a></li> -->
				</ul>
			</li>
		</ul>
		<!-- end sidebar user -->
		<!-- begin sidebar nav -->
		<ul class="nav">
			<li class="nav-header">Navigation<li>
			@php
				$currentUrl = (Request::path() != '/') ? '/'. Request::path() : '/';
				
				function renderSubMenu($value, $currentUrl) {
					$subMenu = '';
					$GLOBALS['sub_level'] += 1 ;
					$GLOBALS['active'][$GLOBALS['sub_level']] = '';
					$currentLevel = $GLOBALS['sub_level'];
					foreach ($value as $key => $menu) {
						$GLOBALS['subparent_level'] = '';
						
						$subSubMenu = '';
						$hasSub = (!empty($menu['sub_menu'])) ? 'has-sub' : '';
						$hasCaret = (!empty($menu['sub_menu'])) ? '<b class="caret pull-right"></b>' : '';
						$hasTitle = (!empty($menu['title'])) ? $menu['title'] : '';
						$hasHighlight = (!empty($menu['highlight'])) ? '<i class="fa fa-paper-plane text-theme m-l-5"></i>' : '';
						
						if (!empty($menu['sub_menu'])) {
							$subSubMenu .= '<ul class="sub-menu">';
							$subSubMenu .= renderSubMenu($menu['sub_menu'], $currentUrl);
							$subSubMenu .= '</ul>';
						}
						
						$active = ($currentUrl == $menu['url']) ? 'active' : '';
						
						if ($active) {
							$GLOBALS['parent_active'] = true;
							$GLOBALS['active'][$GLOBALS['sub_level'] - 1] = true;
						}
						if (!empty($GLOBALS['active'][$currentLevel])) {
							$active = '';
						}
						$subMenu .= '
							<li class="'. $hasSub .' '. $active .'" style="asd:asd;">
								<a href="'. $menu['url'] .'">'. $hasCaret . $hasTitle . $hasHighlight .'</a>
								'. $subSubMenu .'
							</li>
						';
					}
					return $subMenu;
				}
				
				if(Auth::user()->role == 'admin') {
					$optmenu = 'sidebar-admin.menu';
				} elseif(Auth::user()->role == 'rt') {
					$optmenu = 'sidebar-rt.menu';
				} elseif(Auth::user()->role == 'warga') {
					$optmenu = 'sidebar-warga.menu';
				} else {
					$optmenu = 'sidebar-guest.menu';
				}

				foreach (config($optmenu) as $key => $menu) {
					$GLOBALS['parent_active'] = '';
					
					$hasSub = (!empty($menu['sub_menu'])) ? 'has-sub' : '';
					$hasCaret = (!empty($menu['caret'])) ? '<b class="caret"></b>' : '';
					$hasIcon = (!empty($menu['icon'])) ? '<i class="'. $menu['icon'] .'"></i>' : '';
					$hasImg = (!empty($menu['img'])) ? '<div class="icon-img"><img src="'. $menu['img'] .'" /></div>' : '';
					$hasLabel = (!empty($menu['label'])) ? '<span class="label label-theme m-l-5">'. $menu['label'] .'</span>' : '';
					$hasTitle = (!empty($menu['title'])) ? '<span>'. $menu['title'] . $hasLabel .'</span>' : '';
					$hasBadge = (!empty($menu['badge'])) ? '<span class="badge pull-right">'. $menu['badge'] .'</span>' : '';
					
					$subMenu = '';
					
					if (!empty($menu['sub_menu'])) {
						$GLOBALS['sub_level'] = 0;
						$subMenu .= '<ul class="sub-menu">';
						$subMenu .= renderSubMenu($menu['sub_menu'], $currentUrl);
						$subMenu .= '</ul>';
					}
					$active = ($currentUrl == $menu['url']) ? 'active' : '';
					$active = (empty($active) && !empty($GLOBALS['parent_active'])) ? 'active' : $active;
					echo '
						<li class="'. $hasSub .' '. $active .'">
							<a href="'. $menu['url'] .'">
								'. $hasImg .'
								'. $hasBadge .'
								'. $hasCaret .'
								'. $hasIcon .'
								'. $hasTitle .'
							</a>
							'. $subMenu .'
						</li>
					';
				}
			@endphp
			<!-- begin sidebar minify button -->
			<li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
			<!-- end sidebar minify button -->
		</ul>
		<!-- end sidebar nav -->
	</div>
	<!-- end sidebar scrollbar -->
</div>
<div class="sidebar-bg"></div>
<!-- end #sidebar -->
<div class="modal fade" id="modal-changepp">
	<div class="modal-dialog">
		<form method="post" action="{{ route('rest.changepp', ['id' => Auth::user()->id_users]) }}"  enctype="multipart/form-data">
			{{ csrf_field() }}
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Change Photo Profile</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
				</div>
				<div class="modal-body">
					<label class="control-label">New image <span class="text-danger">*</span></label>
					<div class="row row-space-10 {{ $errors->has('image') ? ' has-error' : '' }}">
						<div class="col-md-12 m-b-15">
							<input type="file" id="image" name="image" class="form-control" required>
							@if ($errors->has('image'))
								<span class="help-block">
									<strong>{{ $errors->first('image') }}</strong>
								</span>
							@endif
						</div>
					</div>

				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn btn-white" data-dismiss="modal">Close</a>
					<button type="submit" class="btn btn-warning">Submit</button>
				</div>
			</div>
		</form>
	</div>
</div>
