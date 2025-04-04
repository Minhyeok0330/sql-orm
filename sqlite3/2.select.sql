-- Movie.objects.all()
select * from movies_movie;

-- User.objects.all()
select * from movies_user;

-- Movie.objects.all().order_by('year')
select * from movies_movie
order by year; 

-- Movie.objects.all().order_by(-'year')
select * from movies_movie
order by year desc;

--User.objects.filter(age=31)
select * from movies_user
where age=31;

-- django lookup filter
-- django orm은 python문법을 sql 문법으로 바꿔주는 함수를 사용가능하게 하기 때문에
-- age(함수이름임)=20, age__lt(함수이름임)=20 로 사용한다
-- User.objects.filter(age__lt=20, gt=20, lte=20, gte=20)
select * from movies_user
where age<20;

-- Movie.objects.filter(title__contains='the')
select * from movies_movie
where title like '%the%';

--Movie.objects.filter(title__startswith='the')
select * from movies_movie
where title like 'the%';
--Movie.objects.filter(title__endswith='on.')
select * from movies_movie
where title like '%on.';

--ORM에서는 정규표현식을 사용해야 합니다. / 정규표현식=미리 데이터의 형식을 상정한 식
select * from movies_movie
where title like '%g__d%';

-- User.objects.filter(age__gte=20, age__lt=30)
select * from movies_user
where age>20 and age<30;

-- Movie.objects.filter(Q(year__lt=2000,)| Q(year__gt=2010))
select * from movies_movie
where year<2000 or year>2010; 

-- Movie.objects.aggregate(Max('year'))
select title, max(year) from movies_movie;

-- User.objects.aggregate(Avg('age'))
select avg(age) from movies_user;

-- 1번 영화의 평균 평점과 최고 평점
-- Score.objects.filter(movie_id=1).aggregate(Max('value'), Avg('value'))
select max(value), avg(value) from movies_score
where movie_id=1;

--1번 유저의 평점 개수
-- Score.objects.filter(user_id=1).count()
select count(*) from movies_score
where user_id=1;

-- User.objects.values('country').distinct().count()
-- distinct는 중복을 제거합니다
select count(distinct country) from movies_user; 


-- User.objects.filter(age__range=[20, 29])
select * from movies_user
where age between 20 and 29;

-- Movie.objects.filter(year__in=[2000, 2005, 2010])
select * from movies_movie
where year in (2000, 2005, 2010);

