use `hillel-qauto`;

select * from user_profiles where name like "%am%";

select max(expenses.totalCost) as max_expense from expenses join cars on expenses.carId = cars.id join car_models on cars.carModelId = car_models.id join car_brands on car_models.carBrandId = car_brands.id where car_brands.title = 'AUDI';

select car_brands.id as car_id, count(car_models.id) as count_models from car_brands join car_models on car_brands.id = car_models.carBrandId where car_brands.title in ('AUDI', 'BMW') group by car_brands.id;

select car_models.title as car_model,car_brands.title as car_brand,count(distinct cars.userId) as user_count from cars join car_models on cars.carModelId = car_models.id join car_brands on car_models.carBrandId = car_brands.id group by car_models.title, car_brands.title;

select name from user_profiles join users on user_profiles.userId = users.id join cars on users.id = cars.userId where cars.carBrandId is not null;