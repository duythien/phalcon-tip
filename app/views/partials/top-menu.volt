<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button data-target=".header-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			{{ link_to("", "class" : "navbar-brand", image(this.config.site.url ~ '/img/logo.jpg', false)) }}
		</div>
		<div class="collapse navbar-collapse header-collapse">
				<ul class="nav navbar-nav">
				{%- set menus = [
	              'Browse': null,
	              'Create New': 'post/discussion'
	            ] -%}
	            {% for value, key in menus %}
	              {% if value == this.view.getControllerName() or value == null %}
	              <li class="active">{{ link_to(key, value) }}

	              </li>
	              {% else %}
	              <li>{{ link_to(key, value) }}</li>
	              {% endif %}

	            {% endfor %}
		            <li class="dropdown">

						<a href="#" class="dropdown-toggle categories-link" data-toggle="dropdown" title="Categories">
							Category <span class="glyphicon glyphicon-th-list"></span> <b class="caret"></b>
						</a>
						<ul class="dropdown-menu" id="categories-dropdown">
						{%- cache "sidebar" -%}
								{%- if categories is defined -%}
									{%- for category in categories -%}
										<li>
											{{- link_to('category/' ~ category.id ~ '/' ~ category.slug,
												category.name ~ '<span class="label label-default" style="float: right">' ~ category.number_posts ~ '</span>')
											-}}
										</li>
									{%- endfor -%}
								{%- endif -%}
						{%- endcache -%}
						</ul>
					</li>
				</ul>
			<div class="navbar-right hidden-xs">
			{%- if session.get('identity') -%}
				{#{ link_to('post/discussion', '<span class="glyphicon glyphicon-plus"></span> Start a Discussion', 'class': 'btn btn-default btn-primary navbar-btn navbar-right', 'rel': 'nofollow') }#}
				<ul class="nav">
					<li class="dropdown">
					  <a data-toggle="dropdown" class="dropdown-toggle btn btn-primary" href="#">
					  <img src="https://secure.gravatar.com/avatar/{{ session.get('identity-gravatar') }}?s=64&amp;r=pg&amp;d=identicon" class="img-rounded"
					width="26px">Profile
					  <b class="caret"></b>
					  </a>
					  <ul class="dropdown-menu">
					  		<li>{{ link_to('settings', 'Settings') }}</li>
							<li>{{ link_to('logout', 'Logout')}}</li>
							<li>{{ link_to('activity', 'Active')}}</li>
							<li>{{link_to('notifications', 'Notifications')}}
								{%- if notifications.has() -%}
								<span class="notification-counter">{{ notifications.getNumber() }}</span>
								{%- endif -%}
							</li>
					  </ul>
					</li>
				</ul>
			{%- else -%}
				{{ link_to('login/oauth/authorize', '<span class="glyphicon glyphicon-user"></span> Log In with Github', 'class': 'btn btn-default btn-primary navbar-btn navbar-right', 'rel': 'nofollow') }}
			{%- endif -%}
			</div>
		</div>
	</div>
</div>
