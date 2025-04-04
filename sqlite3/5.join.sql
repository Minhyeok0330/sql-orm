-- user = User.objects.get(id=1)
-- user.score_set.all()

-- Score.objects.filter(user_id=1)

select * 
from movies_user join movies_score 
on movies_user.id = movies_score.user_id
where movies_user.id = 1

-- 100번 영화가 어떤 카테고리인지 확인
-- Movie.objects.get(id=100).categories.all()

select *
from movies_movie join movies_category_movies
on movies_movie.id = movies_category_movies.movie_id
join movies_category
on movies_category_movies.category_id = movies_category.id
where movies_movie.id = 100;

-- 드라마 카테고리의 모든 영화 출력
-- Category.objects.get(name='drama').movies.all()
-- Category.objects.filter(name='drama').movies.all()[0]
select *
from movies_category join movies_category_movies
on movies_category.id = movies_category_movies.category_id
join movies_movie
on movies_category_movies.movie_id = movies_movie.id
where movies_category.name = 'drama';

-- group by
select country, count() from movies_user
group by country;

select country, Avg(value) 
from movies_user join movies_score
on movies_user.id = movies_score.user_id
group by country;