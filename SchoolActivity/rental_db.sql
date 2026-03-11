CREATE DATABASE rental_db;

CREATE TABLE rentals (
	rental_id INT PRIMARY KEY AUTO_INCREMENT,
    license_plate VARCHAR(10) UNIQUE NOT NULL,
    renter_firstname VARCHAR(50) NOT NULL,
    renter_lastname VARCHAR(50) NOT NULL,
    rental_date DATE NOT NULL,
    daily_rate DECIMAL(10, 2) DEFAULT 0.0,
    is_returned TINYINT(1) DEFAULT 0,
    damage_report TEXT
);

INSERT INTO rentals (license_plate, renter_firstname, renter_lastname, rental_date, daily_rate, is_returned, damage_report) VALUES
('ABC123', 'Master', 'Coco', '2026-03-10', 500.00, 0, 'have a scratch under the windshield')

ALTER TABLE rentals
ADD COLUMN car_model VARCHAR(30);

ALTER TABLE rentals
MODIFY COLUMN license_plate VARCHAR(20) UNIQUE NOT NULL;

ALTER TABLE rentals DROP COLUMN damage_report;

UPDATE rentals SET daily_rate = 65.75 WHERE rental_id = 1;

DELETE FROM rentals
WHERE rental_id = 2;

DROP TABLE rentals;

DROP DATABASE rental_db;