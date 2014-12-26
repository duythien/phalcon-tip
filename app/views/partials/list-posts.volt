{%- if posts|length -%}
<div class="container">
	<div class="row push-down">
		<div class="col-lg-8 col-md-6 col-sm-6 col-xs-12">
			<h1 class="page-title">Recent Tips</h1>
		</div>
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12">
			{{ form('search', 'method': 'get', 'autocomplete': 'off') }}
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
			'unanswered': 'Uncommented',
			'my': 'My Tips',
			'answers':'My Comments'
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
					{{ link_to('user/' ~ post.user.id ~ '/' ~ post.user.login , post.user.name, '<img src="https://secure.gravatar.com/avatar/{{post.user.gravatar_id}}?s=24&amp;r=pg&amp;d=identicon" width="24" height="24" class="img-rounded') }}
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
				<li class="previous">{{ link_to(paginatorUri ~ '/' ~ (offset - limitPost), 'Prev', 'rel': 'prev') }}</li>
			{%- endif -%}

			{%- if totalPosts.count > limitPost -%}
				<li class="next">{{ link_to(paginatorUri ~ '/' ~ (offset + limitPost), 'Next', 'rel': 'next') }}</li>
			{%- endif -%}
		</ul>
	</div>
</div>
{%- else -%}
<div class="container">
	<div class="alert alert-info">There are no posts here</div>
</div>
{%- endif -%}
