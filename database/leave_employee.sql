--
-- Database: `employee_leave_managementt`
--
--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admincse@123', '2023-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `CreationDate`) VALUES
(1, 'Information Technologies', 'IT', '2019-11-01 07:19:37'),
(2, 'Computer Science', 'CSE', '2020-05-21 08:27:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `emp_id` int(11) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Av_leave` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(30) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`emp_id`, `FirstName`, `LastName`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `Av_leave`, `Phonenumber`, `Status`, `RegDate`, `role`, `location`) VALUES
(1, 'Imtiyaz', 'Hassan', 'imtiyaz@hassan.com', 'imtiyaz@123', 'Male', '3 February, 1890', 'IT', 'HYD', '30', '0248865955', 1, '2020-11-10 11:29:59', 'HOD', 'NO-IMAGE-AVAILABLE.jpg'),
(2, 'Pradeep', 'Kumar', 'pradeep@gmail.com', 'pradeep@123', 'Male', '3 February, 1890', 'IT', 'HYD', '30', '8587944255', 1, '2020-11-10 11:29:59', 'HOD', 'photo2.jpg'),
(3, 'admin', 'admin', 'admin@gmail.com', 'admin@123', 'Male', '3 February, 1990', 'IT', 'HYD', '30', '587944255', 1, '2020-11-10 11:29:59', 'Admin', 'NO-IMAGE-AVAILABLE.jpg'),
(4, 'Ulafth', 'Banu', 'ulfath@gmail.com', 'ulfath@123', 'Female', '3 February, 1990', 'CSE', 'HYD', '30', '587944255', 1, '2020-11-10 11:29:59', 'staff', 'photo5.jpg'),
(5, 'Kareem', 'Unnisa', 'kareema@gmail.com', 'kareema@2003', 'Female', '29 August, 2003', 'CSE', 'KNR', '30', '587944255', 1, '2020-11-10 13:40:02', 'Staff', 'NO-IMAGE-AVAILABLE.jpg'),
(6, 'Kishwar', 'Afsana', 'kishwar@gmail.com', 'kishwar@123', 'Female', '3 February, 2000', 'IT', 'Bihar', '1', '0596667981', 1, '2020-11-10 13:40:02', 'Staff', '1920_File_logo4.png'),
(7, 'skrma', 'nisasha', 'skrma@gmail.com', 'nisasha@2021', 'Female', '3 February, 1990', 'IT', 'Bihar', '30', '587944255', 1, '2021-11-10 13:40:02', 'staff', 'NO-IMAGE-AVAILABLE.jpg');

-- --------------------------------------------------------

--
--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` date NOT NULL,
  `AdminRemark` mediumtext,
  `registra_remarks` mediumtext NOT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT '0',
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL,
  `num_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `registra_remarks`, `AdminRemarkDate`, `Status`, `admin_status`, `IsRead`, `empid`, `num_days`) VALUES
(1, 'Casual Leave', '2023-05-02', '2023-05-12', 'I want to take a leave.', '2023-05-20', 'Ok', 'ok', '2023-05-24 20:26:19 ', 1, 1, 1, 7, 3),
(2, 'Medical Leave', '08-05-2023', '11-05-2023', 'Noted', '0000-00-00', 'Not this time', '', '2023-05-21 0:31:10 ', 0, 0, 1, 6, 4),
(3, 'Casual Leave', '02-05-2023', '05-05-2023', 'Nice Leave', '2023-05-20', 'Ok', 'Noted', '2023-05-24 20:42:18 ', 1, 1, 1, 7, 4),
(4, 'Casual Leave', '11-05-2023', '15-05-2023', 'Just', '2021-05-23', 'Leave Approved', 'Noted', '2023-05-24 19:56:45 ', 1, 1, 1, 7, 5);

-- --------------------------------------------------------

---
--- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `date_from` varchar(200) NOT NULL,
  `date_to` varchar(200) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
--

-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `date_from`, `date_to`, `CreationDate`) VALUES
(1, 'Casual Leave', 'Casual Leave', '2023-05-23', '2023-06-20', '2023-05-19 14:32:03'),
(2, 'Medical Leave', 'Medical Leave', '2023-05-05', '2023-05-28', '2023-05-19 15:29:05'),
(3, 'Other', 'Leave all staff', '31-05-2023', '04-06-2023', '2023-05-20 17:17:43');

-- --------------------------------------------------------

ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);