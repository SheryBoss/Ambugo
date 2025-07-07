-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2025 at 08:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ambugo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `Name`, `Phone`, `Email`, `Role`) VALUES
(1, 'John Smith', '+12025550123', 'john.smith@ambugo.com', 'Super Admin'),
(2, 'Emily Johnson', '+12025550124', 'emily.j@ambugo.com', 'Moderator'),
(3, 'Michael Brown', '+12025550125', 'michael.b@ambugo.com', 'Super Admin'),
(4, 'Sarah Davis', '+12025550126', 'sarah.davis@ambugo.com', 'Moderator'),
(5, 'David Wilson', '+12025550127', 'david.w@ambugo.com', 'Admin'),
(6, 'Laura Martinez', '+12025550128', 'laura.m@ambugo.com', 'Moderator'),
(7, 'James Taylor', '+12025550129', 'james.t@ambugo.com', 'Super Admin'),
(8, 'Anna Lee', '+12025550130', 'anna.lee@ambugo.com', 'Admin'),
(9, 'Robert Harris', '+12025550131', 'robert.h@ambugo.com', 'Moderator'),
(10, 'Linda Clark', '+12025550132', 'linda.clark@ambugo.com', 'Admin'),
(11, 'Thomas Lewis', '+12025550133', 'thomas.l@ambugo.com', 'Super Admin'),
(12, 'Maria Walker', '+12025550134', 'maria.w@ambugo.com', 'Moderator'),
(13, 'Charles Hall', '+12025550135', 'charles.h@ambugo.com', 'Admin'),
(14, 'Patricia Allen', '+12025550136', 'patricia.a@ambugo.com', 'Moderator'),
(15, 'Steven Young', '+12025550137', 'steven.y@ambugo.com', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `Ambulance_id` int(11) NOT NULL,
  `Plate_No` varchar(50) NOT NULL,
  `Type_id` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Driver_id` int(11) NOT NULL,
  `Zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`Ambulance_id`, `Plate_No`, `Type_id`, `Status`, `Driver_id`, `Zone_id`) VALUES
(1, 'ABC-1234', 1, 'Available', 101, 1),
(2, 'XYZ-5678', 2, 'In Use', 102, 2),
(3, 'DEF-9012', 1, 'Under Maintenance', 103, 3),
(4, 'GHI-3456', 2, 'Available', 104, 1),
(5, 'JKL-7890', 1, 'In Use', 105, 2),
(6, 'MNO-2345', 2, 'Available', 106, 3),
(7, 'PQR-6789', 1, 'Under Maintenance', 107, 1),
(8, 'STU-0123', 2, 'In Use', 108, 2),
(9, 'VWX-4567', 1, 'Available', 109, 3),
(10, 'YZA-8901', 2, 'In Use', 110, 1),
(11, 'BCD-2345', 1, 'Available', 111, 2),
(12, 'EFG-6789', 2, 'Under Maintenance', 112, 3),
(13, 'HIJ-0123', 1, 'In Use', 113, 1),
(14, 'KLM-4567', 2, 'Available', 114, 2),
(15, 'NOP-8901', 1, 'In Use', 115, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ambulance_type`
--

CREATE TABLE `ambulance_type` (
  `Ambulance_Type_id` int(11) NOT NULL,
  `Type_Name` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambulance_type`
--

INSERT INTO `ambulance_type` (`Ambulance_Type_id`, `Type_Name`, `Description`) VALUES
(1, 'Basic', 'Equipped for basic life support and transport.'),
(2, 'Advanced', 'Equipped with advanced life support systems.'),
(3, 'Neonatal', 'Specialized for transporting newborns.'),
(4, 'Cardiac', 'Equipped for cardiac emergencies with ECG.'),
(5, 'Trauma', 'Designed for severe trauma cases with surgical tools.'),
(6, 'Pediatric', 'Specialized for pediatric emergencies.'),
(7, 'Mobile ICU', 'Fully equipped ICU for critical care transport.'),
(8, 'Bariatric', 'Designed for transporting bariatric patients.'),
(9, 'Air Ambulance', 'Helicopter or plane for air medical transport.'),
(10, 'Disaster Response', 'Equipped for mass casualty and disaster scenarios.'),
(11, 'Obstetric', 'Specialized for maternity and childbirth emergencies.'),
(12, 'Burn Unit', 'Equipped for burn victims with sterile environment.'),
(13, 'Stroke Unit', 'Specialized for stroke patients with imaging tools.'),
(14, 'Psychiatric', 'Designed for safe transport of psychiatric patients.'),
(15, 'Rescue', 'Equipped for search and rescue operations.');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_id` int(11) NOT NULL,
  `Hospital_id` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Ambulance_id` int(11) NOT NULL,
  `Driver_id` int(11) NOT NULL,
  `Location_id` int(11) NOT NULL,
  `Ambulance_Type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_id`, `Hospital_id`, `Status`, `User_id`, `Ambulance_id`, `Driver_id`, `Location_id`, `Ambulance_Type_id`) VALUES
(1, 1, 'Completed', 1, 1, 101, 1, 1),
(2, 2, 'In Progress', 2, 2, 102, 2, 2),
(3, 3, 'Cancelled', 3, 3, 103, 3, 1),
(4, 4, 'Completed', 4, 4, 104, 4, 2),
(5, 5, 'In Progress', 5, 5, 105, 5, 1),
(6, 6, 'Completed', 6, 6, 106, 6, 2),
(7, 7, 'Cancelled', 7, 7, 107, 7, 1),
(8, 8, 'In Progress', 8, 8, 108, 8, 2),
(9, 9, 'Completed', 9, 9, 109, 9, 1),
(10, 10, 'In Progress', 10, 10, 110, 10, 2),
(11, 11, 'Completed', 11, 11, 111, 11, 1),
(12, 12, 'Cancelled', 12, 12, 112, 12, 2),
(13, 13, 'In Progress', 13, 13, 113, 13, 1),
(14, 14, 'Completed', 14, 14, 114, 14, 2),
(15, 15, 'In Progress', 15, 15, 115, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `city_zone`
--

CREATE TABLE `city_zone` (
  `Zone_id` int(11) NOT NULL,
  `Zone_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_zone`
--

INSERT INTO `city_zone` (`Zone_id`, `Zone_name`) VALUES
(1, 'Downtown'),
(2, 'Suburbs'),
(3, 'Industrial'),
(4, 'Rural'),
(5, 'Coastal'),
(6, 'Uptown'),
(7, 'Midtown'),
(8, 'Eastside'),
(9, 'Westside'),
(10, 'Northside'),
(11, 'Southside'),
(12, 'Central'),
(13, 'Highlands'),
(14, 'Lakeside'),
(15, 'Parkview');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `Complaint_id` int(11) NOT NULL,
  `Contact_no` varchar(15) NOT NULL,
  `Driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`Complaint_id`, `Contact_no`, `Driver_id`) VALUES
(1, '+12025550401', 101),
(2, '+12025550402', 102),
(3, '+12025550403', 103),
(4, '+12025550404', 104),
(5, '+12025550405', 105),
(6, '+12025550406', 106),
(7, '+12025550407', 107),
(8, '+12025550408', 108),
(9, '+12025550409', 109),
(10, '+12025550410', 110),
(11, '+12025550411', 111),
(12, '+12025550412', 112),
(13, '+12025550413', 113),
(14, '+12025550414', 114),
(15, '+12025550415', 115);

-- --------------------------------------------------------

--
-- Table structure for table `corporate_booking`
--

CREATE TABLE `corporate_booking` (
  `Corporate_booking_id` int(11) NOT NULL,
  `Corporate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `corporate_booking`
--

INSERT INTO `corporate_booking` (`Corporate_booking_id`, `Corporate_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `corporate_client`
--

CREATE TABLE `corporate_client` (
  `Corporate_id` int(11) NOT NULL,
  `Company_name` varchar(255) NOT NULL,
  `Contact_person` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `corporate_client`
--

INSERT INTO `corporate_client` (`Corporate_id`, `Company_name`, `Contact_person`, `Phone`) VALUES
(1, 'TechCorp', 'Alice Brown', '+12025550201'),
(2, 'HealthPlus', 'Bob White', '+12025550202'),
(3, 'MediCare Inc.', 'Clara Green', '+12025550203'),
(4, 'SafeTrans', 'David Black', '+12025550204'),
(5, 'GlobalHealth', 'Emma Gray', '+12025550205'),
(6, 'CareFirst', 'Frank Blue', '+12025550206'),
(7, 'LifeLine', 'Grace Red', '+12025550207'),
(8, 'Wellness Co.', 'Henry Yellow', '+12025550208'),
(9, 'SecureHealth', 'Isla Pink', '+12025550209'),
(10, 'VitalCare', 'Jack Orange', '+12025550210'),
(11, 'MediTrans', 'Kelly Purple', '+12025550211'),
(12, 'HealthWave', 'Liam Brown', '+12025550212'),
(13, 'CareSync', 'Mia White', '+12025550213'),
(14, 'LifeSync', 'Noah Green', '+12025550214'),
(15, 'SafeCare', 'Olivia Black', '+12025550215');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `Driver_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `License_No` varchar(100) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Organization_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`Driver_id`, `Name`, `Phone`, `License_No`, `Rating`, `Status`, `Organization_id`) VALUES
(101, 'Mark Thompson', '+12025550101', 'D12345678', 5, 'Active', 1),
(102, 'Sarah Miller', '+12025550102', 'D23456789', 4, 'Active', 1),
(103, 'James Carter', '+12025550103', 'D34567890', 4, 'On Leave', 2),
(104, 'Emily Davis', '+12025550104', 'D45678901', 5, 'Active', 1),
(105, 'Robert Evans', '+12025550105', 'D56789012', 4, 'Active', 2),
(106, 'Linda Harris', '+12025550106', 'D67890123', 5, 'Inactive', 3),
(107, 'David Lee', '+12025550107', 'D78901234', 4, 'On Leave', 1),
(108, 'Anna Wilson', '+12025550108', 'D89012345', 5, 'Active', 2),
(109, 'Michael Brown', '+12025550109', 'D90123456', 4, 'Active', 3),
(110, 'Jessica Taylor', '+12025550110', 'D01234567', 5, 'Active', 1),
(111, 'Thomas Clark', '+12025550111', 'D12345098', 4, 'Inactive', 2),
(112, 'Patricia Adams', '+12025550112', 'D23456109', 4, 'On Leave', 3),
(113, 'Charles White', '+12025550113', 'D34567210', 5, 'Active', 1),
(114, 'Maria Garcia', '+12025550114', 'D45678321', 4, 'Active', 2),
(115, 'Steven Moore', '+12025550115', 'D56789432', 5, 'Active', 3);

-- --------------------------------------------------------

--
-- Table structure for table `driver_shift_schedule`
--

CREATE TABLE `driver_shift_schedule` (
  `Shift_id` int(11) NOT NULL,
  `Start_time` datetime NOT NULL,
  `End_time` datetime NOT NULL,
  `Driver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver_shift_schedule`
--

INSERT INTO `driver_shift_schedule` (`Shift_id`, `Start_time`, `End_time`, `Driver_id`) VALUES
(1, '2025-04-06 08:00:00', '2025-04-06 16:00:00', 101),
(2, '2025-04-06 16:00:00', '2025-04-07 00:00:00', 102),
(3, '2025-04-06 00:00:00', '2025-04-06 08:00:00', 103),
(4, '2025-04-07 08:00:00', '2025-04-07 16:00:00', 104),
(5, '2025-04-07 16:00:00', '2025-04-08 00:00:00', 105),
(6, '2025-04-07 00:00:00', '2025-04-07 08:00:00', 106),
(7, '2025-04-08 08:00:00', '2025-04-08 16:00:00', 107),
(8, '2025-04-08 16:00:00', '2025-04-09 00:00:00', 108),
(9, '2025-04-08 00:00:00', '2025-04-08 08:00:00', 109),
(10, '2025-04-09 08:00:00', '2025-04-09 16:00:00', 110),
(11, '2025-04-09 16:00:00', '2025-04-10 00:00:00', 111),
(12, '2025-04-09 00:00:00', '2025-04-09 08:00:00', 112),
(13, '2025-04-10 08:00:00', '2025-04-10 16:00:00', 113),
(14, '2025-04-10 16:00:00', '2025-04-11 00:00:00', 114),
(15, '2025-04-10 00:00:00', '2025-04-10 08:00:00', 115);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contact`
--

CREATE TABLE `emergency_contact` (
  `Emergency_Contact_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone_Relation` varchar(255) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emergency_contact`
--

INSERT INTO `emergency_contact` (`Emergency_Contact_id`, `Name`, `Phone_Relation`, `User_id`) VALUES
(1, 'Jane Brown', '+12025550601, Spouse', 1),
(2, 'Tom White', '+12025550602, Parent', 2),
(3, 'Sara Green', '+12025550603, Sibling', 3),
(4, 'Mike Black', '+12025550604, Spouse', 4),
(5, 'Lisa Gray', '+12025550605, Parent', 5),
(6, 'Paul Blue', '+12025550606, Sibling', 6),
(7, 'Anna Red', '+12025550607, Spouse', 7),
(8, 'Mark Yellow', '+12025550608, Parent', 8),
(9, 'Emma Pink', '+12025550609, Sibling', 9),
(10, 'Tom Orange', '+12025550610, Spouse', 10),
(11, 'Sara Purple', '+12025550611, Parent', 11),
(12, 'Mike Brown', '+12025550612, Sibling', 12),
(13, 'Lisa White', '+12025550613, Spouse', 13),
(14, 'Paul Green', '+12025550614, Parent', 14),
(15, 'Anna Black', '+12025550615, Sibling', 15);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_id` int(11) NOT NULL,
  `NewAttribute` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_id`, `NewAttribute`, `Name`, `Phone_Address`) VALUES
(1, 1, 'City General Hospital', '+12025550301, 123 Main St, Downtown'),
(2, 2, 'Suburban Medical Center', '+12025550302, 456 Oak Ave, Suburbs'),
(3, 1, 'Industrial Health Clinic', '+12025550303, 789 Pine Rd, Industrial'),
(4, 3, 'Rural Health Center', '+12025550304, 101 Maple Ln, Rural'),
(5, 2, 'Coastal Hospital', '+12025550305, 202 Beach Dr, Coastal'),
(6, 1, 'Uptown Medical', '+12025550306, 303 Elm St, Uptown'),
(7, 2, 'Midtown Clinic', '+12025550307, 404 Birch Ave, Midtown'),
(8, 3, 'Eastside Hospital', '+12025550308, 505 Cedar Rd, Eastside'),
(9, 1, 'Westside Medical', '+12025550309, 606 Spruce Ln, Westside'),
(10, 2, 'Northside Health', '+12025550310, 707 Willow Dr, Northside'),
(11, 1, 'Southside Clinic', '+12025550311, 808 Ash St, Southside'),
(12, 3, 'Central Hospital', '+12025550312, 909 Poplar Ave, Central'),
(13, 2, 'Highlands Medical', '+12025550313, 1010 Fir Rd, Highlands'),
(14, 1, 'Lakeside Health', '+12025550314, 1111 Lake Dr, Lakeside'),
(15, 2, 'Parkview Hospital', '+12025550315, 1212 Park Ave, Parkview');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_provider`
--

CREATE TABLE `insurance_provider` (
  `Insurance_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Payment_id` int(11) NOT NULL,
  `Organization_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `insurance_provider`
--

INSERT INTO `insurance_provider` (`Insurance_id`, `Name`, `Phone`, `Email`, `Payment_id`, `Organization_id`) VALUES
(1, 'HealthShield', '+12025550501', 'contact@healthshield.com', 1, 1),
(2, 'MediCover', '+12025550502', 'contact@medicover.com', 2, 1),
(3, 'SafeInsure', '+12025550503', 'contact@safeinsure.com', 3, 2),
(4, 'CareInsure', '+12025550504', 'contact@careinsure.com', 4, 1),
(5, 'LifeGuard', '+12025550505', 'contact@lifeguard.com', 5, 2),
(6, 'WellProtect', '+12025550506', 'contact@wellprotect.com', 6, 3),
(7, 'VitalInsure', '+12025550507', 'contact@vitalinsure.com', 7, 1),
(8, 'MediSafe', '+12025550508', 'contact@medisafe.com', 8, 2),
(9, 'HealthGuard', '+12025550509', 'contact@healthguard.com', 9, 3),
(10, 'SecureCare', '+12025550510', 'contact@securecare.com', 10, 1),
(11, 'LifeSafe', '+12025550511', 'contact@lifesafe.com', 11, 2),
(12, 'CareShield', '+12025550512', 'contact@careshield.com', 12, 3),
(13, 'WellGuard', '+12025550513', 'contact@wellguard.com', 13, 1),
(14, 'MediProtect', '+12025550514', 'contact@mediprotect.com', 14, 2),
(15, 'SafeGuard', '+12025550515', 'contact@safeguard.com', 15, 3);

-- --------------------------------------------------------

--
-- Table structure for table `live_tracking`
--

CREATE TABLE `live_tracking` (
  `Tracking_id` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Latitude` decimal(9,6) NOT NULL,
  `Longitude` decimal(9,6) NOT NULL,
  `Ambulance_id` int(11) NOT NULL,
  `Condition_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `live_tracking`
--

INSERT INTO `live_tracking` (`Tracking_id`, `Timestamp`, `Latitude`, `Longitude`, `Ambulance_id`, `Condition_id`) VALUES
(1, '2025-04-05 05:00:00', 37.774929, -122.419416, 1, 1),
(2, '2025-04-05 05:05:00', 37.754929, -122.399416, 2, 2),
(3, '2025-04-05 05:10:00', 37.734929, -122.379416, 3, 3),
(4, '2025-04-05 05:15:00', 37.714929, -122.359416, 4, 4),
(5, '2025-04-05 05:20:00', 37.694929, -122.339416, 5, 5),
(6, '2025-04-05 05:25:00', 37.674929, -122.319416, 6, 6),
(7, '2025-04-05 05:30:00', 37.654929, -122.299416, 7, 7),
(8, '2025-04-05 05:35:00', 37.634929, -122.279416, 8, 8),
(9, '2025-04-05 05:40:00', 37.614929, -122.259416, 9, 9),
(10, '2025-04-05 05:45:00', 37.594929, -122.239416, 10, 10),
(11, '2025-04-05 05:50:00', 37.574929, -122.219416, 11, 11),
(12, '2025-04-05 05:55:00', 37.554929, -122.199416, 12, 12),
(13, '2025-04-05 06:00:00', 37.534929, -122.179416, 13, 13),
(14, '2025-04-05 06:05:00', 37.514929, -122.159416, 14, 14),
(15, '2025-04-05 06:10:00', 37.494929, -122.139416, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_id` int(11) NOT NULL,
  `Longitude` decimal(9,6) NOT NULL,
  `Latitude` decimal(9,6) NOT NULL,
  `Address` text NOT NULL,
  `Ambulance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_id`, `Longitude`, `Latitude`, `Address`, `Ambulance_id`) VALUES
(1, -122.419416, 37.774929, '123 Main St, Downtown', 1),
(2, -122.399416, 37.754929, '456 Oak Ave, Suburbs', 2),
(3, -122.379416, 37.734929, '789 Pine Rd, Industrial', 3),
(4, -122.359416, 37.714929, '101 Maple Ln, Rural', 4),
(5, -122.339416, 37.694929, '202 Beach Dr, Coastal', 5),
(6, -122.319416, 37.674929, '303 Elm St, Uptown', 6),
(7, -122.299416, 37.654929, '404 Birch Ave, Midtown', 7),
(8, -122.279416, 37.634929, '505 Cedar Rd, Eastside', 8),
(9, -122.259416, 37.614929, '606 Spruce Ln, Westside', 9),
(10, -122.239416, 37.594929, '707 Willow Dr, Northside', 10),
(11, -122.219416, 37.574929, '808 Ash St, Southside', 11),
(12, -122.199416, 37.554929, '909 Poplar Ave, Central', 12),
(13, -122.179416, 37.534929, '1010 Fir Rd, Highlands', 13),
(14, -122.159416, 37.514929, '1111 Lake Dr, Lakeside', 14),
(15, -122.139416, 37.494929, '1212 Park Ave, Parkview', 15);

-- --------------------------------------------------------

--
-- Table structure for table `medical_report`
--

CREATE TABLE `medical_report` (
  `report_id` int(11) NOT NULL,
  `Report_type` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Booking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_report`
--

INSERT INTO `medical_report` (`report_id`, `Report_type`, `Description`, `Booking_id`) VALUES
(1, 'Initial Assessment', 'Patient stable, minor injuries.', 1),
(2, 'Transport Report', 'Patient critical, requires ICU.', 2),
(3, 'Cancellation Report', 'Booking cancelled, no transport.', 3),
(4, 'Initial Assessment', 'Patient stable, treated on-site.', 4),
(5, 'Transport Report', 'Patient critical, cardiac arrest.', 5),
(6, 'Initial Assessment', 'Patient stable, minor burns.', 6),
(7, 'Cancellation Report', 'Booking cancelled, patient refused.', 7),
(8, 'Transport Report', 'Patient critical, stroke symptoms.', 8),
(9, 'Initial Assessment', 'Patient stable, minor trauma.', 9),
(10, 'Transport Report', 'Patient critical, respiratory failure.', 10),
(11, 'Initial Assessment', 'Patient stable, minor injuries.', 11),
(12, 'Cancellation Report', 'Booking cancelled, no emergency.', 12),
(13, 'Transport Report', 'Patient critical, severe bleeding.', 13),
(14, 'Initial Assessment', 'Patient stable, minor fractures.', 14),
(15, 'Transport Report', 'Patient critical, maternity emergency.', 15);

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `Organization_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `ContactPerson` varchar(255) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` text NOT NULL,
  `Admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`Organization_id`, `Name`, `ContactPerson`, `Phone`, `Email`, `Address`, `Admin_id`) VALUES
(1, 'City Ambulance Co.', 'Alice Johnson', '+12025550001', 'contact@cityambulance.com', '123 Main St, Downtown', 1),
(2, 'Metro Health Services', 'Bob Smith', '+12025550002', 'contact@metrohealth.com', '456 Oak Ave, Suburbs', 2),
(3, 'Regional EMS', 'Clara Davis', '+12025550003', 'contact@regionalems.com', '789 Pine Rd, Industrial', 3),
(4, 'Rural EMS', 'David Wilson', '+12025550004', 'contact@ruralems.com', '101 Maple Ln, Rural', 4),
(5, 'Coastal EMS', 'Emma Brown', '+12025550005', 'contact@coastalems.com', '202 Beach Dr, Coastal', 5),
(6, 'Uptown EMS', 'Frank Green', '+12025550006', 'contact@uptownems.com', '303 Elm St, Uptown', 6),
(7, 'Midtown EMS', 'Grace White', '+12025550007', 'contact@midtownems.com', '404 Birch Ave, Midtown', 7),
(8, 'Eastside EMS', 'Henry Black', '+12025550008', 'contact@eastsideems.com', '505 Cedar Rd, Eastside', 8),
(9, 'Westside EMS', 'Isla Gray', '+12025550009', 'contact@westsideems.com', '606 Spruce Ln, Westside', 9),
(10, 'Northside EMS', 'Jack Blue', '+12025550010', 'contact@northsideems.com', '707 Willow Dr, Northside', 10),
(11, 'Southside EMS', 'Kelly Red', '+12025550011', 'contact@southsideems.com', '808 Ash St, Southside', 11),
(12, 'Central EMS', 'Liam Yellow', '+12025550012', 'contact@centralems.com', '909 Poplar Ave, Central', 12),
(13, 'Highlands EMS', 'Mia Pink', '+12025550013', 'contact@highlandsems.com', '1010 Fir Rd, Highlands', 13),
(14, 'Lakeside EMS', 'Noah Orange', '+12025550014', 'contact@lakesideems.com', '1111 Lake Dr, Lakeside', 14),
(15, 'Parkview EMS', 'Olivia Purple', '+12025550015', 'contact@parkviewems.com', '1212 Park Ave, Parkview', 15);

-- --------------------------------------------------------

--
-- Table structure for table `own`
--

CREATE TABLE `own` (
  `Organization_id` int(11) NOT NULL,
  `Ambulance_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `own`
--

INSERT INTO `own` (`Organization_id`, `Ambulance_id`) VALUES
(1, 1),
(1, 4),
(1, 7),
(1, 10),
(1, 13),
(2, 2),
(2, 5),
(2, 8),
(2, 11),
(2, 14),
(3, 3),
(3, 6),
(3, 9),
(3, 12),
(3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_id` int(11) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Payment_Method` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Booking_id` int(11) NOT NULL,
  `Organization_id` int(11) NOT NULL,
  `Corporate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_id`, `Amount`, `Payment_Method`, `Status`, `Booking_id`, `Organization_id`, `Corporate_id`) VALUES
(1, 150.00, 'Credit Card', 'Completed', 1, 1, 1),
(2, 200.00, 'Insurance', 'Pending', 2, 1, 2),
(3, 100.00, 'Cash', 'Failed', 3, 2, 3),
(4, 175.00, 'Credit Card', 'Completed', 4, 1, 4),
(5, 250.00, 'Insurance', 'Pending', 5, 2, 5),
(6, 180.00, 'Credit Card', 'Completed', 6, 3, 6),
(7, 120.00, 'Cash', 'Failed', 7, 1, 7),
(8, 220.00, 'Insurance', 'Pending', 8, 2, 8),
(9, 160.00, 'Credit Card', 'Completed', 9, 3, 9),
(10, 190.00, 'Insurance', 'Pending', 10, 1, 10),
(11, 140.00, 'Credit Card', 'Completed', 11, 2, 11),
(12, 110.00, 'Cash', 'Failed', 12, 3, 12),
(13, 230.00, 'Insurance', 'Pending', 13, 1, 13),
(14, 170.00, 'Credit Card', 'Completed', 14, 2, 14),
(15, 210.00, 'Insurance', 'Pending', 15, 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `Promo_id` int(11) NOT NULL,
  `Code` varchar(100) NOT NULL,
  `Discount_percentage` int(11) NOT NULL,
  `Expiry_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`Promo_id`, `Code`, `Discount_percentage`, `Expiry_date`) VALUES
(1, 'SAVE10', 10, '2025-12-31'),
(2, 'HEALTH20', 20, '2025-11-30'),
(3, 'CARE15', 15, '2025-10-31'),
(4, 'LIFE25', 25, '2025-09-30'),
(5, 'SAFE30', 30, '2025-08-31'),
(6, 'WELL10', 10, '2025-07-31'),
(7, 'VITAL15', 15, '2025-06-30'),
(8, 'MEDI20', 20, '2025-05-31'),
(9, 'SYNC25', 25, '2025-04-30'),
(10, 'HEALTH30', 30, '2025-03-31'),
(11, 'CARE10', 10, '2025-02-28'),
(12, 'LIFE15', 15, '2025-01-31'),
(13, 'SAFE20', 20, '2024-12-31'),
(14, 'WELL25', 25, '2024-11-30'),
(15, 'VITAL30', 30, '2024-10-31');

-- --------------------------------------------------------

--
-- Table structure for table `review_and_rating`
--

CREATE TABLE `review_and_rating` (
  `Review_id` int(11) NOT NULL,
  `Rating` int(11) NOT NULL,
  `Comments` text NOT NULL,
  `Driver_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_and_rating`
--

INSERT INTO `review_and_rating` (`Review_id`, `Rating`, `Comments`, `Driver_id`, `User_id`) VALUES
(1, 5, 'Excellent service!', 101, 1),
(2, 4, 'Very good, but a bit late.', 102, 2),
(3, 3, 'Average experience.', 103, 3),
(4, 5, 'Highly professional!', 104, 4),
(5, 4, 'Good service.', 105, 5),
(6, 5, 'Amazing driver!', 106, 6),
(7, 3, 'Could be better.', 107, 7),
(8, 4, 'Pretty good.', 108, 8),
(9, 5, 'Fantastic service!', 109, 9),
(10, 4, 'Reliable driver.', 110, 10),
(11, 3, 'Okay, but slow.', 111, 11),
(12, 5, 'Great experience!', 112, 12),
(13, 4, 'Very helpful.', 113, 13),
(14, 5, 'Top-notch service!', 114, 14),
(15, 4, 'Good job.', 115, 15);

-- --------------------------------------------------------

--
-- Table structure for table `ride_feedback`
--

CREATE TABLE `ride_feedback` (
  `Feedback_id` int(11) NOT NULL,
  `Feedback_text` text NOT NULL,
  `User_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ride_feedback`
--

INSERT INTO `ride_feedback` (`Feedback_id`, `Feedback_text`, `User_id`) VALUES
(1, 'Smooth ride, very professional.', 1),
(2, 'Driver was late, but helpful.', 2),
(3, 'Cancelled, no feedback.', 3),
(4, 'Excellent service, highly recommend.', 4),
(5, 'Good, but could be faster.', 5),
(6, 'Very caring driver.', 6),
(7, 'Cancelled, disappointed.', 7),
(8, 'Great experience, felt safe.', 8),
(9, 'Smooth and quick.', 9),
(10, 'Driver was very skilled.', 10),
(11, 'Good service, thank you.', 11),
(12, 'Cancelled, no comment.', 12),
(13, 'Very professional team.', 13),
(14, 'Excellent care during transport.', 14),
(15, 'Good, but communication could improve.', 15);

-- --------------------------------------------------------

--
-- Table structure for table `road_condition`
--

CREATE TABLE `road_condition` (
  `Condition_id` int(11) NOT NULL,
  `Condition_status` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Zone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `road_condition`
--

INSERT INTO `road_condition` (`Condition_id`, `Condition_status`, `Timestamp`, `Zone_id`) VALUES
(1, 'Clear', '2025-04-05 05:00:00', 1),
(2, 'Congested', '2025-04-05 05:05:00', 2),
(3, 'Accident', '2025-04-05 05:10:00', 3),
(4, 'Clear', '2025-04-05 05:15:00', 4),
(5, 'Flooded', '2025-04-05 05:20:00', 5),
(6, 'Clear', '2025-04-05 05:25:00', 6),
(7, 'Congested', '2025-04-05 05:30:00', 7),
(8, 'Accident', '2025-04-05 05:35:00', 8),
(9, 'Clear', '2025-04-05 05:40:00', 9),
(10, 'Flooded', '2025-04-05 05:45:00', 10),
(11, 'Clear', '2025-04-05 05:50:00', 11),
(12, 'Congested', '2025-04-05 05:55:00', 12),
(13, 'Accident', '2025-04-05 06:00:00', 13),
(14, 'Clear', '2025-04-05 06:05:00', 14),
(15, 'Flooded', '2025-04-05 06:10:00', 15);

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE `submit` (
  `User_id` int(11) NOT NULL,
  `Complaint_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submit`
--

INSERT INTO `submit` (`User_id`, `Complaint_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Patient` varchar(255) NOT NULL,
  `User_Type` varchar(100) NOT NULL,
  `Address` text NOT NULL,
  `User_insurance_id` int(11) NOT NULL,
  `Tracking_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Name`, `Email`, `Patient`, `User_Type`, `Address`, `User_insurance_id`, `Tracking_id`) VALUES
(1, 'Alice Brown', 'alice.brown@email.com', 'John Brown', 'Individual', '123 Main St, Downtown', 1, 1),
(2, 'Bob White', 'bob.white@email.com', 'Jane White', 'Individual', '456 Oak Ave, Suburbs', 2, 2),
(3, 'Clara Green', 'clara.green@email.com', 'Tom Green', 'Individual', '789 Pine Rd, Industrial', 3, 3),
(4, 'David Black', 'david.black@email.com', 'Sara Black', 'Individual', '101 Maple Ln, Rural', 4, 4),
(5, 'Emma Gray', 'emma.gray@email.com', 'Mike Gray', 'Individual', '202 Beach Dr, Coastal', 5, 5),
(6, 'Frank Blue', 'frank.blue@email.com', 'Lisa Blue', 'Individual', '303 Elm St, Uptown', 6, 6),
(7, 'Grace Red', 'grace.red@email.com', 'Paul Red', 'Individual', '404 Birch Ave, Midtown', 7, 7),
(8, 'Henry Yellow', 'henry.yellow@email.com', 'Anna Yellow', 'Individual', '505 Cedar Rd, Eastside', 8, 8),
(9, 'Isla Pink', 'isla.pink@email.com', 'Mark Pink', 'Individual', '606 Spruce Ln, Westside', 9, 9),
(10, 'Jack Orange', 'jack.orange@email.com', 'Emma Orange', 'Individual', '707 Willow Dr, Northside', 10, 10),
(11, 'Kelly Purple', 'kelly.purple@email.com', 'Tom Purple', 'Individual', '808 Ash St, Southside', 11, 11),
(12, 'Liam Brown', 'liam.brown@email.com', 'Sara Brown', 'Individual', '909 Poplar Ave, Central', 12, 12),
(13, 'Mia White', 'mia.white@email.com', 'Mike White', 'Individual', '1010 Fir Rd, Highlands', 13, 13),
(14, 'Noah Green', 'noah.green@email.com', 'Lisa Green', 'Individual', '1111 Lake Dr, Lakeside', 14, 14),
(15, 'Olivia Black', 'olivia.black@email.com', 'Paul Black', 'Individual', '1212 Park Ave, Parkview', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `user_insurance`
--

CREATE TABLE `user_insurance` (
  `User_insurance_id` int(11) NOT NULL,
  `Policy_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_insurance`
--

INSERT INTO `user_insurance` (`User_insurance_id`, `Policy_no`) VALUES
(1, 'POL123456'),
(2, 'POL234567'),
(3, 'POL345678'),
(4, 'POL456789'),
(5, 'POL567890'),
(6, 'POL678901'),
(7, 'POL789012'),
(8, 'POL890123'),
(9, 'POL901234'),
(10, 'POL012345'),
(11, 'POL123450'),
(12, 'POL234561'),
(13, 'POL345672'),
(14, 'POL456783'),
(15, 'POL567894');

-- --------------------------------------------------------

--
-- Table structure for table `user_promo`
--

CREATE TABLE `user_promo` (
  `User_id` int(11) NOT NULL,
  `Promo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_promo`
--

INSERT INTO `user_promo` (`User_id`, `Promo_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_maintenance`
--

CREATE TABLE `vehicle_maintenance` (
  `Maintenance_id` int(11) NOT NULL,
  `Maintenance_Date` date NOT NULL,
  `Cost` decimal(10,2) NOT NULL,
  `Insurance_id` int(11) DEFAULT NULL,
  `Payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_maintenance`
--

INSERT INTO `vehicle_maintenance` (`Maintenance_id`, `Maintenance_Date`, `Cost`, `Insurance_id`, `Payment_id`) VALUES
(1, '2025-03-01', 500.00, 1, 1),
(2, '2025-03-02', 600.00, 2, 2),
(3, '2025-03-03', 450.00, 3, 3),
(4, '2025-03-04', 700.00, 4, 4),
(5, '2025-03-05', 550.00, 5, 5),
(6, '2025-03-06', 650.00, 6, 6),
(7, '2025-03-07', 400.00, 7, 7),
(8, '2025-03-08', 750.00, 8, 8),
(9, '2025-03-09', 500.00, 9, 9),
(10, '2025-03-10', 600.00, 10, 10),
(11, '2025-03-11', 450.00, 11, 11),
(12, '2025-03-12', 700.00, 12, 12),
(13, '2025-03-13', 550.00, 13, 13),
(14, '2025-03-14', 650.00, 14, 14),
(15, '2025-03-15', 400.00, 15, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`Ambulance_id`),
  ADD KEY `Driver_id` (`Driver_id`),
  ADD KEY `Zone_id` (`Zone_id`),
  ADD KEY `Type_id` (`Type_id`);

--
-- Indexes for table `ambulance_type`
--
ALTER TABLE `ambulance_type`
  ADD PRIMARY KEY (`Ambulance_Type_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_id`),
  ADD KEY `User_id` (`User_id`),
  ADD KEY `Ambulance_id` (`Ambulance_id`),
  ADD KEY `Driver_id` (`Driver_id`),
  ADD KEY `Hospital_id` (`Hospital_id`),
  ADD KEY `Location_id` (`Location_id`),
  ADD KEY `Ambulance_Type_id` (`Ambulance_Type_id`);

--
-- Indexes for table `city_zone`
--
ALTER TABLE `city_zone`
  ADD PRIMARY KEY (`Zone_id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`Complaint_id`),
  ADD KEY `Driver_id` (`Driver_id`);

--
-- Indexes for table `corporate_booking`
--
ALTER TABLE `corporate_booking`
  ADD PRIMARY KEY (`Corporate_booking_id`),
  ADD KEY `Corporate_id` (`Corporate_id`);

--
-- Indexes for table `corporate_client`
--
ALTER TABLE `corporate_client`
  ADD PRIMARY KEY (`Corporate_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`Driver_id`),
  ADD KEY `Organization_id` (`Organization_id`);

--
-- Indexes for table `driver_shift_schedule`
--
ALTER TABLE `driver_shift_schedule`
  ADD PRIMARY KEY (`Shift_id`),
  ADD KEY `Driver_id` (`Driver_id`);

--
-- Indexes for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  ADD PRIMARY KEY (`Emergency_Contact_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_id`);

--
-- Indexes for table `insurance_provider`
--
ALTER TABLE `insurance_provider`
  ADD PRIMARY KEY (`Insurance_id`),
  ADD KEY `Payment_id` (`Payment_id`),
  ADD KEY `Organization_id` (`Organization_id`);

--
-- Indexes for table `live_tracking`
--
ALTER TABLE `live_tracking`
  ADD PRIMARY KEY (`Tracking_id`),
  ADD KEY `Ambulance_id` (`Ambulance_id`),
  ADD KEY `Condition_id` (`Condition_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_id`),
  ADD KEY `Ambulance_id` (`Ambulance_id`);

--
-- Indexes for table `medical_report`
--
ALTER TABLE `medical_report`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `Booking_id` (`Booking_id`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`Organization_id`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `own`
--
ALTER TABLE `own`
  ADD PRIMARY KEY (`Organization_id`,`Ambulance_id`),
  ADD KEY `Ambulance_id` (`Ambulance_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_id`),
  ADD KEY `Booking_id` (`Booking_id`),
  ADD KEY `Organization_id` (`Organization_id`),
  ADD KEY `Corporate_id` (`Corporate_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`Promo_id`);

--
-- Indexes for table `review_and_rating`
--
ALTER TABLE `review_and_rating`
  ADD PRIMARY KEY (`Review_id`),
  ADD KEY `Driver_id` (`Driver_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `ride_feedback`
--
ALTER TABLE `ride_feedback`
  ADD PRIMARY KEY (`Feedback_id`),
  ADD KEY `User_id` (`User_id`);

--
-- Indexes for table `road_condition`
--
ALTER TABLE `road_condition`
  ADD PRIMARY KEY (`Condition_id`),
  ADD KEY `Zone_id` (`Zone_id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`User_id`,`Complaint_id`),
  ADD KEY `Complaint_id` (`Complaint_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`),
  ADD KEY `User_insurance_id` (`User_insurance_id`),
  ADD KEY `Tracking_id` (`Tracking_id`);

--
-- Indexes for table `user_insurance`
--
ALTER TABLE `user_insurance`
  ADD PRIMARY KEY (`User_insurance_id`);

--
-- Indexes for table `user_promo`
--
ALTER TABLE `user_promo`
  ADD PRIMARY KEY (`User_id`,`Promo_id`),
  ADD KEY `Promo_id` (`Promo_id`);

--
-- Indexes for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD PRIMARY KEY (`Maintenance_id`),
  ADD KEY `Insurance_id` (`Insurance_id`),
  ADD KEY `Payment_id` (`Payment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `Ambulance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ambulance_type`
--
ALTER TABLE `ambulance_type`
  MODIFY `Ambulance_Type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `city_zone`
--
ALTER TABLE `city_zone`
  MODIFY `Zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `Complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `corporate_booking`
--
ALTER TABLE `corporate_booking`
  MODIFY `Corporate_booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `corporate_client`
--
ALTER TABLE `corporate_client`
  MODIFY `Corporate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `Driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `driver_shift_schedule`
--
ALTER TABLE `driver_shift_schedule`
  MODIFY `Shift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  MODIFY `Emergency_Contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `Hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `insurance_provider`
--
ALTER TABLE `insurance_provider`
  MODIFY `Insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `live_tracking`
--
ALTER TABLE `live_tracking`
  MODIFY `Tracking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `medical_report`
--
ALTER TABLE `medical_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `Organization_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `Promo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `review_and_rating`
--
ALTER TABLE `review_and_rating`
  MODIFY `Review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ride_feedback`
--
ALTER TABLE `ride_feedback`
  MODIFY `Feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `road_condition`
--
ALTER TABLE `road_condition`
  MODIFY `Condition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_insurance`
--
ALTER TABLE `user_insurance`
  MODIFY `User_insurance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  MODIFY `Maintenance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD CONSTRAINT `ambulance_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`),
  ADD CONSTRAINT `ambulance_ibfk_2` FOREIGN KEY (`Zone_id`) REFERENCES `city_zone` (`Zone_id`),
  ADD CONSTRAINT `ambulance_ibfk_3` FOREIGN KEY (`Type_id`) REFERENCES `ambulance_type` (`Ambulance_Type_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Ambulance_id`) REFERENCES `ambulance` (`Ambulance_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`Hospital_id`) REFERENCES `hospital` (`Hospital_id`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`Location_id`) REFERENCES `location` (`Location_id`),
  ADD CONSTRAINT `booking_ibfk_6` FOREIGN KEY (`Ambulance_Type_id`) REFERENCES `ambulance_type` (`Ambulance_Type_id`);

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`);

--
-- Constraints for table `corporate_booking`
--
ALTER TABLE `corporate_booking`
  ADD CONSTRAINT `corporate_booking_ibfk_1` FOREIGN KEY (`Corporate_id`) REFERENCES `corporate_client` (`Corporate_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`Organization_id`);

--
-- Constraints for table `driver_shift_schedule`
--
ALTER TABLE `driver_shift_schedule`
  ADD CONSTRAINT `driver_shift_schedule_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`);

--
-- Constraints for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  ADD CONSTRAINT `emergency_contact_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `insurance_provider`
--
ALTER TABLE `insurance_provider`
  ADD CONSTRAINT `insurance_provider_ibfk_1` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`Payment_id`),
  ADD CONSTRAINT `insurance_provider_ibfk_2` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`Organization_id`);

--
-- Constraints for table `live_tracking`
--
ALTER TABLE `live_tracking`
  ADD CONSTRAINT `live_tracking_ibfk_1` FOREIGN KEY (`Ambulance_id`) REFERENCES `ambulance` (`Ambulance_id`),
  ADD CONSTRAINT `live_tracking_ibfk_2` FOREIGN KEY (`Condition_id`) REFERENCES `road_condition` (`Condition_id`);

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Ambulance_id`) REFERENCES `ambulance` (`Ambulance_id`);

--
-- Constraints for table `medical_report`
--
ALTER TABLE `medical_report`
  ADD CONSTRAINT `medical_report_ibfk_1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `own`
--
ALTER TABLE `own`
  ADD CONSTRAINT `own_ibfk_1` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`Organization_id`),
  ADD CONSTRAINT `own_ibfk_2` FOREIGN KEY (`Ambulance_id`) REFERENCES `ambulance` (`Ambulance_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Booking_id`) REFERENCES `booking` (`Booking_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`Organization_id`) REFERENCES `organization` (`Organization_id`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`Corporate_id`) REFERENCES `corporate_client` (`Corporate_id`);

--
-- Constraints for table `review_and_rating`
--
ALTER TABLE `review_and_rating`
  ADD CONSTRAINT `review_and_rating_ibfk_1` FOREIGN KEY (`Driver_id`) REFERENCES `driver` (`Driver_id`),
  ADD CONSTRAINT `review_and_rating_ibfk_2` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `ride_feedback`
--
ALTER TABLE `ride_feedback`
  ADD CONSTRAINT `ride_feedback_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`);

--
-- Constraints for table `road_condition`
--
ALTER TABLE `road_condition`
  ADD CONSTRAINT `road_condition_ibfk_1` FOREIGN KEY (`Zone_id`) REFERENCES `city_zone` (`Zone_id`);

--
-- Constraints for table `submit`
--
ALTER TABLE `submit`
  ADD CONSTRAINT `submit_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `submit_ibfk_2` FOREIGN KEY (`Complaint_id`) REFERENCES `complaint` (`Complaint_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`User_insurance_id`) REFERENCES `user_insurance` (`User_insurance_id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`Tracking_id`) REFERENCES `live_tracking` (`Tracking_id`);

--
-- Constraints for table `user_promo`
--
ALTER TABLE `user_promo`
  ADD CONSTRAINT `user_promo_ibfk_1` FOREIGN KEY (`User_id`) REFERENCES `user` (`User_id`),
  ADD CONSTRAINT `user_promo_ibfk_2` FOREIGN KEY (`Promo_id`) REFERENCES `promo_code` (`Promo_id`);

--
-- Constraints for table `vehicle_maintenance`
--
ALTER TABLE `vehicle_maintenance`
  ADD CONSTRAINT `vehicle_maintenance_ibfk_1` FOREIGN KEY (`Insurance_id`) REFERENCES `insurance_provider` (`Insurance_id`),
  ADD CONSTRAINT `vehicle_maintenance_ibfk_2` FOREIGN KEY (`Payment_id`) REFERENCES `payment` (`Payment_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
