{%- if posts|length -%}
<div class="container">
	<div class="row push-down">
		<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
			<h1 class="page-title">Recent tricks</h1>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<form accept-charset="UTF-8" action="" method="GET">
				<input type="text" value="" placeholder="Search..." class="search-box form-control" name="q">
			<input type="submit" value="search" style="display:none;">
			</form>			
		</div>
	</div>
	<div class="row push-down">
		<div class="col-lg-12">
			<ul class="nav nav-pills">
				{%- set orders = [
			'new': 'All Tips',
			'hot': 'Hot',
			'unanswered': 'Uncomment',
			'my': 'My tip',
			'answers':'My comment'
		] -%}
		{%- for order, label in orders -%}
			{%- if (order == 'my' or order == 'answers') and !session.get('identity') -%}
				{%- continue -%}
			{% endif -%}
			{%- if order == currentOrder -%}
				<li class="active">
			{%- else -%}
				<li>
			{%- endif -%}
				{{ link_to('discussions/' ~ order, label) }}
			</li>
		{%- endfor -%}
			
			</ul>
		</div>
	</div>
	<div class="row js-trick-container" style="position: relative; height: 761.5px;">
	{%- for post in posts -%}
		<div class="trick-card col-lg-4 col-md-6 col-sm-6 col-xs-12">
			<div data-slug="test-product" class="trick-card-inner js-goto-trick">
				{{- link_to('discussion/' ~ post.id ~ '/' ~ post.slug, post.title|e ,'class':'trick-card-title') -}}

				<div class="trick-card-stats trick-card-by">by<b>							
						{%- cache "post-users-" ~ post.id -%}
						{%- for id, user in post.getRecentUsers() -%}
						 	<a href="{{ url("user/" ~ id ~ "/" ~ user[0]) }}" title="{{ user[0] }}">						 	{{ post.user.login }}

								<img src="https://secure.gravatar.com/avatar/{{ user[1] }}?s=24&amp;r=pg&amp;d=identicon" width="24" height="24" class="img-rounded">
							</a>
						{%- endfor -%}
					{%- endcache -%}
				</b></div>
				<div class="trick-card-stats clearfix">
					<div class="trick-card-timeago">Submitted {{ post.getHumanCreatedAt() }} in 
					{{ link_to('category/' ~ post.category.id ~ '/' ~ post.category.slug, post.category.name) }}

					</div>
					<div class="trick-card-stat-block"><span class="fa fa-eye"></span>
						{{ post.getHumanNumberViews() }}
					</div>
					<div class="trick-card-stat-block text-center"><span class="fa fa-comment"></span> 
					
					{{ link_to('category/' ~ post.category.id ~ '/' ~ post.category.slug,  post.number_replies) }}

					</div>

					<div class="trick-card-stat-block text-right"><span class="fa fa-heart"></span> {{ post.votes_up - post.votes_down }}</div>
				</div>
			</div>
		</div>
	{%- endfor -%}
	</div>
	<div class="row">
		<ul class="pager">
			{%- if offset > 0 -%}
				<li class="previous">{{ link_to(paginatorUri ~ '/' ~ (offset - 40), 'Prev', 'rel': 'prev') }}</li>
			{%- endif -%}

			{%- if totalPosts.count > 40 -%}
				<li class="next">{{ link_to(paginatorUri ~ '/' ~ (offset + 40), 'Next', 'rel': 'next') }}</li>
			{%- endif -%}
		</ul>
	</div>
</div>
{%- else -%}
<div class="container">
	<div class="alert alert-info">There are no posts here</div>
</div>
{%- endif -%}