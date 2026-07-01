create database ola ;
use ola;

create view Successful_Bookings as 
select*from bookings
where Booking_Status = 'Success';

#1. Retrieve all the sucessful bookings
select *from Successful_Bookings ;

#2 Find the average ride distance from each vehicle type ;
Create View ride_distance_for_each_vehicle as 
select Vehicle_Type , avg(Ride_Distance) as avg_distance from bookings
group by Vehicle_Type;

#2 Find the average ride distance from each vehicle type ;
select*from ride_distance_for_each_vehicle;


#3 Get the total number of canceled rides by customer: 
create view Canceled_rides_by_customer as
select count(*) from bookings where Booking_Status ='Canceled by Customer';

#3 Get the total number of canceled rides by customer: 
select* from Canceled_rides_by_customer;

#4. List the top 5 customers who booked the highest number of rides :

create view  top_5_customers as 
select Customer_ID , count(Booking_ID)  as total_rides from bookings 
group by customer_id order by total_rides desc   limit 5 ;


#4. List the top 5 customers who booked the highest number of rides :
select*from top_5_customers;

# 5 Get the number of rides canceled by drivers due to personal and car-related issues :
create view Rides_Canceled_by_Drivers_P_C_Issues  as  
select count(*)from bookings where Canceled_Rides_by_Driver = "Personal & Car related issue";

# 5 Get the number of rides canceled by drivers due to personal and car-related issues :
select*from Rides_Canceled_by_Drivers_P_C_Issues ;

#6 . find the maximum and minimum driver ratings for  Prime Sedan bookings :

create view  Max_Min_Driver_Rating as 
select max(Driver_Ratings) as max_rating, min(Driver_Ratings) as min_rating  from bookings 
where Vehicle_Type = 'Prime Sedan';

#6 . find the maximum and minimum driver ratings for  Prime Sedan bookings :
select*from  Max_Min_Driver_Rating ;

#7 Retrieve all rides where payment was made using UPI :
create view UPI_Payment as 
select*from bookings where Payment_Method = "UPI";

#7 Retrieve all rides where payment was made using UPI :
select*from UPI_Payment;

#8 Find the average customer rating per vechicle type :
create view   AVG_Cust_Rating as 
select Vehicle_Type , avg(Customer_Rating) as avg_customer_rating  from bookings group 
by vehicle_type ;

#8 Find the average customer rating per vechicle type :
select*from AVG_Cust_Rating;

#9 Calculate the total booking value of rides completed successfully ;
create view total_successful_ride_value  as
 select  sum(Booking_Value)  as total_successful_ride_value  from bookings where Booking_Status = "Success";
 
#9 Calculate the total booking value of rides completed successfully ;
select*from total_successful_ride_value ;

#10 . List all incomplete rides along with the reason 
CREATE view Incomplete_Rides_Reason as 
select Booking_Status  , Incomplete_Rides_Reason from bookings where 
Incomplete_Rides = 'YES';

#10 . List all incomplete rides along with the reason 
select*from Incomplete_Rides_Reason 