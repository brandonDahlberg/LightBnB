INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active);
VALUES (1, 'Penthouse', 'Ballin pad', 'Photo of kitchen/living room', 'Photo from street', 321, 2, 3, 4, 'Singapore', 'Oak', 'Punggol'. 'X9T 5E7', TRUE),
(1, 'Mansion', 'Super Ballin pad', 'Photo of gold toilet', 'Photo taken from my helicopter', 420, 6, 7, 10, 'US of A', 'Hollywood Blvd', 'California'. 'W0N LYF', TRUE),
(1, 'Cute Cabin in the Woods', 'Cute lil cabin.', 'Photo of out house', 'Photo of house from the forests edge', 50, 2, 1, 3, 'Canada', NULL, 'BC'. NULL, TRUE);

INSERT INTO users (name, email, password)
VALUES ('Chuck', 'Chuckwood@gmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Jerry', 'jerry@trix.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u'),
('Phil', 'iphilgreat@yahoo.ca', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u');

INSERT INTO property_reviews (guest_id, reservation_id, rating, message)
VALUES (3, 2, 5, 'Thanks for ballin pad, we balled so hard.'),
(1, 1, 5, 'Was great. Super ballin pad. Would recommend.'),
(2, 2, 5, 'Was great. Very cute lil cabin in the woods.');

INSERT INTO reservations (id, start_date, end_date, guest_id, property_id)
VALUES (1,'2018-09-11', '2018-09-26', 1, 1),
(2, '2019-01-04', '2019-02-01', 2, 2),
(3, '2021-10-01', '2021-10-14', 3, 3);