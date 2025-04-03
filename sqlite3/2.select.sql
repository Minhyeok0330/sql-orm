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