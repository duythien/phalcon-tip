<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
			<button data-target=".header-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>

			<a href="http://www.laravel-tricks.com" class="navbar-brand">
				<img width="207" height="50" src="http://www.laravel-tricks.com/img/logo@2x.1.png">
			</a>
		</div>
		<div class="collapse navbar-collapse header-collapse">
				<ul class="nav navbar-nav">
				{%- set menus = [
	              'Browse': null,
	              'Create New': 'profiles'
	            ] -%}
	            {% for value, key in menus %}
	              {% if value == this.view.getControllerName() or value == null %}
	              <li class="active">{{ link_to(key, value) }}

	              </li>
	              {% else %}
	              <li>{{ link_to('', value) }}</li>
	              {% endif %}

	            {% endfor %}
		            <li class="dropdown">
						<a href="#" class="dropdown-toggle categories-link" data-toggle="dropdown" title="Categories">
							<span class="glyphicon glyphicon-th-list"></span> <b class="caret"></b>
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
				{{ link_to('post/discussion', '<span class="glyphicon glyphicon-plus"></span> Start a Discussion', 'class': 'btn btn-default btn-primary navbar-btn navbar-right', 'rel': 'nofollow') }}
			{%- else -%}
				{{ link_to('login/oauth/authorize', '<span class="glyphicon glyphicon-user"></span> Log In with Github', 'class': 'btn btn-default btn-primary navbar-btn navbar-right', 'rel': 'nofollow') }}
			{%- endif -%}
			</div>
		</div>
	</div>
</div>