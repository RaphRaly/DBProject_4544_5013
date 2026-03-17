INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(1, 385, TO_DATE('2024-06-26','YYYY-MM-DD'), TO_DATE('2029-06-25','YYYY-MM-DD'), 6924.48, 'Premium', '24/7 emergency support with 4-hour response time'),
(2, 247, TO_DATE('2024-08-26','YYYY-MM-DD'), TO_DATE('2025-08-26','YYYY-MM-DD'), 8301.87, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(3, 194, TO_DATE('2025-09-24','YYYY-MM-DD'), TO_DATE('2027-09-24','YYYY-MM-DD'), 20355.53, 'Full Service', 'Emergency callout coverage during business hours only'),
(4, 80, TO_DATE('2024-01-21','YYYY-MM-DD'), TO_DATE('2026-01-20','YYYY-MM-DD'), 34027.76, 'Full Service', 'Annual inspection and certification services'),
(5, 99, TO_DATE('2024-09-12','YYYY-MM-DD'), TO_DATE('2027-09-12','YYYY-MM-DD'), 46174.79, 'Full Service', '24/7 emergency support with 4-hour response time'),
(6, 50, TO_DATE('2024-08-21','YYYY-MM-DD'), TO_DATE('2025-08-21','YYYY-MM-DD'), 36015.58, 'Premium', 'Basic annual inspection with written report'),
(7, 275, TO_DATE('2024-12-23','YYYY-MM-DD'), TO_DATE('2026-12-23','YYYY-MM-DD'), 5611.35, 'Extended Warranty', 'Comprehensive coverage including consumables and filters'),
(8, 253, TO_DATE('2023-02-09','YYYY-MM-DD'), TO_DATE('2028-02-08','YYYY-MM-DD'), 33003.97, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(9, 433, TO_DATE('2022-01-03','YYYY-MM-DD'), TO_DATE('2027-01-02','YYYY-MM-DD'), 34696.98, 'Full Service', 'Annual inspection and certification services'),
(10, 152, TO_DATE('2025-08-12','YYYY-MM-DD'), TO_DATE('2027-08-12','YYYY-MM-DD'), 17653.33, 'Parts Only', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(11, 459, TO_DATE('2025-12-31','YYYY-MM-DD'), TO_DATE('2030-12-30','YYYY-MM-DD'), 48867.18, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(12, 174, TO_DATE('2025-12-16','YYYY-MM-DD'), TO_DATE('2026-12-16','YYYY-MM-DD'), 11810.32, 'Full Service', '24/7 emergency support with 4-hour response time'),
(13, 7, TO_DATE('2022-01-16','YYYY-MM-DD'), TO_DATE('2024-01-16','YYYY-MM-DD'), 17554.22, 'Labor Only', 'Annual inspection and certification services'),
(14, 66, TO_DATE('2025-10-31','YYYY-MM-DD'), TO_DATE('2026-10-31','YYYY-MM-DD'), 9950.58, 'Preventive', 'Includes quarterly inspections and all replacement parts'),
(15, 225, TO_DATE('2024-07-30','YYYY-MM-DD'), TO_DATE('2025-07-30','YYYY-MM-DD'), 11657.84, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(16, 63, TO_DATE('2025-06-19','YYYY-MM-DD'), TO_DATE('2026-06-19','YYYY-MM-DD'), 47455.65, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(17, 7, TO_DATE('2022-10-27','YYYY-MM-DD'), TO_DATE('2025-10-26','YYYY-MM-DD'), 4371.18, 'Emergency Only', 'Extended manufacturer warranty with on-site service'),
(18, 285, TO_DATE('2023-01-29','YYYY-MM-DD'), TO_DATE('2026-01-28','YYYY-MM-DD'), 11148.93, 'Annual Inspection', 'Parts replacement covered, labor billed at standard rate'),
(19, 297, TO_DATE('2025-09-27','YYYY-MM-DD'), TO_DATE('2028-09-26','YYYY-MM-DD'), 22597.76, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(20, 186, TO_DATE('2022-11-08','YYYY-MM-DD'), TO_DATE('2023-11-08','YYYY-MM-DD'), 27389.11, 'Preventive', 'Covers labor costs only, parts billed separately');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(21, 127, TO_DATE('2022-05-09','YYYY-MM-DD'), TO_DATE('2024-05-08','YYYY-MM-DD'), 18171.41, 'Basic', 'Annual inspection and certification services'),
(22, 92, TO_DATE('2022-02-01','YYYY-MM-DD'), TO_DATE('2027-01-31','YYYY-MM-DD'), 5113.43, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits'),
(23, 470, TO_DATE('2025-04-11','YYYY-MM-DD'), TO_DATE('2026-04-11','YYYY-MM-DD'), 18690.88, 'Extended Warranty', 'Comprehensive coverage including consumables and filters'),
(24, 85, TO_DATE('2022-10-20','YYYY-MM-DD'), TO_DATE('2027-10-19','YYYY-MM-DD'), 33998.97, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(25, 199, TO_DATE('2022-01-29','YYYY-MM-DD'), TO_DATE('2024-01-29','YYYY-MM-DD'), 11880.14, 'Labor Only', 'Basic annual inspection with written report'),
(26, 207, TO_DATE('2022-02-01','YYYY-MM-DD'), TO_DATE('2027-01-31','YYYY-MM-DD'), 17734.54, 'Extended Warranty', 'Includes quarterly inspections and all replacement parts'),
(27, 40, TO_DATE('2024-10-01','YYYY-MM-DD'), TO_DATE('2026-10-01','YYYY-MM-DD'), 29870.61, 'Preventive', 'Basic annual inspection with written report'),
(28, 436, TO_DATE('2022-03-05','YYYY-MM-DD'), TO_DATE('2023-03-05','YYYY-MM-DD'), 23634.7, 'Premium', 'Parts replacement covered, labor billed at standard rate'),
(29, 264, TO_DATE('2025-05-11','YYYY-MM-DD'), TO_DATE('2030-05-10','YYYY-MM-DD'), 30858.57, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(30, 188, TO_DATE('2022-06-23','YYYY-MM-DD'), TO_DATE('2023-06-23','YYYY-MM-DD'), 19170.3, 'Basic', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(31, 35, TO_DATE('2024-04-19','YYYY-MM-DD'), TO_DATE('2026-04-19','YYYY-MM-DD'), 3278.28, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(32, 459, TO_DATE('2023-06-18','YYYY-MM-DD'), TO_DATE('2028-06-16','YYYY-MM-DD'), 45074.75, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(33, 494, TO_DATE('2022-01-02','YYYY-MM-DD'), TO_DATE('2025-01-01','YYYY-MM-DD'), 21528.81, 'Annual Inspection', 'Covers labor costs only, parts billed separately'),
(34, 139, TO_DATE('2024-12-16','YYYY-MM-DD'), TO_DATE('2025-12-16','YYYY-MM-DD'), 46585.15, 'Full Service', 'Extended manufacturer warranty with on-site service'),
(35, 293, TO_DATE('2023-07-02','YYYY-MM-DD'), TO_DATE('2025-07-01','YYYY-MM-DD'), 6626.37, 'Parts Only', 'Annual inspection and certification services'),
(36, 2, TO_DATE('2024-03-10','YYYY-MM-DD'), TO_DATE('2026-03-10','YYYY-MM-DD'), 37058.21, 'Annual Inspection', 'Parts replacement covered, labor billed at standard rate'),
(37, 343, TO_DATE('2023-12-18','YYYY-MM-DD'), TO_DATE('2025-12-17','YYYY-MM-DD'), 23852.91, 'Full Service', 'Annual inspection and certification services'),
(38, 268, TO_DATE('2025-03-19','YYYY-MM-DD'), TO_DATE('2026-03-19','YYYY-MM-DD'), 7596.94, 'Parts Only', 'Includes quarterly inspections and all replacement parts'),
(39, 389, TO_DATE('2023-11-01','YYYY-MM-DD'), TO_DATE('2025-10-31','YYYY-MM-DD'), 39812.69, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(40, 345, TO_DATE('2024-12-03','YYYY-MM-DD'), TO_DATE('2029-12-02','YYYY-MM-DD'), 20381.58, 'Basic', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(41, 295, TO_DATE('2022-01-11','YYYY-MM-DD'), TO_DATE('2025-01-10','YYYY-MM-DD'), 27180.28, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(42, 427, TO_DATE('2025-12-25','YYYY-MM-DD'), TO_DATE('2028-12-24','YYYY-MM-DD'), 8562.58, 'Premium', 'Comprehensive coverage including consumables and filters'),
(43, 163, TO_DATE('2023-09-16','YYYY-MM-DD'), TO_DATE('2024-09-15','YYYY-MM-DD'), 19124.67, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(44, 391, TO_DATE('2025-05-09','YYYY-MM-DD'), TO_DATE('2026-05-09','YYYY-MM-DD'), 5032.27, 'Basic', 'Parts replacement covered, labor billed at standard rate'),
(45, 360, TO_DATE('2023-08-25','YYYY-MM-DD'), TO_DATE('2025-08-24','YYYY-MM-DD'), 26875.39, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(46, 445, TO_DATE('2025-06-16','YYYY-MM-DD'), TO_DATE('2030-06-15','YYYY-MM-DD'), 17004.65, 'Full Service', 'Annual inspection and certification services'),
(47, 214, TO_DATE('2024-05-21','YYYY-MM-DD'), TO_DATE('2027-05-21','YYYY-MM-DD'), 40118.87, 'Labor Only', 'Covers labor costs only, parts billed separately'),
(48, 228, TO_DATE('2024-07-01','YYYY-MM-DD'), TO_DATE('2025-07-01','YYYY-MM-DD'), 49017.34, 'Labor Only', 'Preventive maintenance schedule with monthly visits'),
(49, 287, TO_DATE('2025-11-14','YYYY-MM-DD'), TO_DATE('2028-11-13','YYYY-MM-DD'), 35339.48, 'Emergency Only', 'Parts replacement covered, labor billed at standard rate'),
(50, 248, TO_DATE('2022-10-25','YYYY-MM-DD'), TO_DATE('2024-10-24','YYYY-MM-DD'), 44429.63, 'Full Service', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(51, 436, TO_DATE('2022-01-12','YYYY-MM-DD'), TO_DATE('2023-01-12','YYYY-MM-DD'), 31001.06, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(52, 150, TO_DATE('2024-07-23','YYYY-MM-DD'), TO_DATE('2026-07-23','YYYY-MM-DD'), 22497.61, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(53, 326, TO_DATE('2023-07-07','YYYY-MM-DD'), TO_DATE('2025-07-06','YYYY-MM-DD'), 9385.13, 'Premium', 'Covers labor costs only, parts billed separately'),
(54, 267, TO_DATE('2022-01-23','YYYY-MM-DD'), TO_DATE('2023-01-23','YYYY-MM-DD'), 25434.7, 'Preventive', 'Covers labor costs only, parts billed separately'),
(55, 59, TO_DATE('2025-07-09','YYYY-MM-DD'), TO_DATE('2026-07-09','YYYY-MM-DD'), 9890.77, 'Preventive', 'Emergency callout coverage during business hours only'),
(56, 250, TO_DATE('2024-09-30','YYYY-MM-DD'), TO_DATE('2026-09-30','YYYY-MM-DD'), 18575.14, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(57, 448, TO_DATE('2023-07-24','YYYY-MM-DD'), TO_DATE('2025-07-23','YYYY-MM-DD'), 8700.58, 'Basic', 'Basic annual inspection with written report'),
(58, 202, TO_DATE('2023-02-17','YYYY-MM-DD'), TO_DATE('2025-02-16','YYYY-MM-DD'), 9736.61, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(59, 473, TO_DATE('2024-01-11','YYYY-MM-DD'), TO_DATE('2026-01-10','YYYY-MM-DD'), 9007.97, 'Emergency Only', 'Extended manufacturer warranty with on-site service'),
(60, 274, TO_DATE('2022-01-15','YYYY-MM-DD'), TO_DATE('2025-01-14','YYYY-MM-DD'), 7586.95, 'Preventive', 'Annual inspection and certification services');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(61, 86, TO_DATE('2022-09-24','YYYY-MM-DD'), TO_DATE('2023-09-24','YYYY-MM-DD'), 13890.6, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(62, 452, TO_DATE('2024-04-15','YYYY-MM-DD'), TO_DATE('2026-04-15','YYYY-MM-DD'), 48014.94, 'Extended Warranty', 'Parts replacement covered, labor billed at standard rate'),
(63, 189, TO_DATE('2025-11-05','YYYY-MM-DD'), TO_DATE('2026-11-05','YYYY-MM-DD'), 4754.21, 'Preventive', 'Annual inspection and certification services'),
(64, 366, TO_DATE('2025-05-03','YYYY-MM-DD'), TO_DATE('2027-05-03','YYYY-MM-DD'), 21272.35, 'Parts Only', 'Comprehensive coverage including consumables and filters'),
(65, 166, TO_DATE('2024-08-09','YYYY-MM-DD'), TO_DATE('2025-08-09','YYYY-MM-DD'), 45733.81, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(66, 53, TO_DATE('2024-04-16','YYYY-MM-DD'), TO_DATE('2027-04-16','YYYY-MM-DD'), 27622.24, 'Basic', 'Covers labor costs only, parts billed separately'),
(67, 243, TO_DATE('2025-04-03','YYYY-MM-DD'), TO_DATE('2028-04-02','YYYY-MM-DD'), 24859.32, 'Preventive', 'Basic annual inspection with written report'),
(68, 174, TO_DATE('2024-02-11','YYYY-MM-DD'), TO_DATE('2025-02-10','YYYY-MM-DD'), 39412.74, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(69, 427, TO_DATE('2023-04-22','YYYY-MM-DD'), TO_DATE('2025-04-21','YYYY-MM-DD'), 36261.6, 'Basic', 'Basic annual inspection with written report'),
(70, 272, TO_DATE('2024-11-24','YYYY-MM-DD'), TO_DATE('2027-11-24','YYYY-MM-DD'), 21306.84, 'Extended Warranty', 'Extended manufacturer warranty with on-site service');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(71, 129, TO_DATE('2023-10-13','YYYY-MM-DD'), TO_DATE('2025-10-12','YYYY-MM-DD'), 39916.01, 'Preventive', 'Annual inspection and certification services'),
(72, 130, TO_DATE('2024-02-09','YYYY-MM-DD'), TO_DATE('2025-02-08','YYYY-MM-DD'), 8874.13, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(73, 197, TO_DATE('2023-11-24','YYYY-MM-DD'), TO_DATE('2025-11-23','YYYY-MM-DD'), 39634.44, 'Parts Only', 'Extended manufacturer warranty with on-site service'),
(74, 39, TO_DATE('2023-03-28','YYYY-MM-DD'), TO_DATE('2025-03-27','YYYY-MM-DD'), 20672.9, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(75, 69, TO_DATE('2024-07-05','YYYY-MM-DD'), TO_DATE('2026-07-05','YYYY-MM-DD'), 44944.77, 'Full Service', 'Basic annual inspection with written report'),
(76, 75, TO_DATE('2025-12-18','YYYY-MM-DD'), TO_DATE('2028-12-17','YYYY-MM-DD'), 14437.15, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(77, 324, TO_DATE('2025-10-23','YYYY-MM-DD'), TO_DATE('2026-10-23','YYYY-MM-DD'), 21482.4, 'Extended Warranty', 'Basic annual inspection with written report'),
(78, 19, TO_DATE('2023-04-11','YYYY-MM-DD'), TO_DATE('2024-04-10','YYYY-MM-DD'), 31911.88, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(79, 267, TO_DATE('2023-05-13','YYYY-MM-DD'), TO_DATE('2025-05-12','YYYY-MM-DD'), 2243.4, 'Extended Warranty', 'Annual inspection and certification services'),
(80, 30, TO_DATE('2022-07-26','YYYY-MM-DD'), TO_DATE('2024-07-25','YYYY-MM-DD'), 17717.06, 'Premium', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(81, 97, TO_DATE('2025-10-01','YYYY-MM-DD'), TO_DATE('2027-10-01','YYYY-MM-DD'), 9322.99, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(82, 382, TO_DATE('2023-04-28','YYYY-MM-DD'), TO_DATE('2025-04-27','YYYY-MM-DD'), 13761.49, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(83, 42, TO_DATE('2024-08-13','YYYY-MM-DD'), TO_DATE('2029-08-12','YYYY-MM-DD'), 18097.3, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(84, 409, TO_DATE('2023-09-12','YYYY-MM-DD'), TO_DATE('2025-09-11','YYYY-MM-DD'), 10449.4, 'Annual Inspection', 'Parts replacement covered, labor billed at standard rate'),
(85, 384, TO_DATE('2025-11-11','YYYY-MM-DD'), TO_DATE('2026-11-11','YYYY-MM-DD'), 13995.85, 'Extended Warranty', 'Basic annual inspection with written report'),
(86, 90, TO_DATE('2025-11-24','YYYY-MM-DD'), TO_DATE('2026-11-24','YYYY-MM-DD'), 38071.9, 'Premium', 'Extended manufacturer warranty with on-site service'),
(87, 43, TO_DATE('2025-10-19','YYYY-MM-DD'), TO_DATE('2026-10-19','YYYY-MM-DD'), 36786.49, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(88, 326, TO_DATE('2022-05-02','YYYY-MM-DD'), TO_DATE('2023-05-02','YYYY-MM-DD'), 8660.11, 'Premium', 'Preventive maintenance schedule with monthly visits'),
(89, 415, TO_DATE('2022-02-28','YYYY-MM-DD'), TO_DATE('2024-02-28','YYYY-MM-DD'), 17330.3, 'Parts Only', 'Basic annual inspection with written report'),
(90, 340, TO_DATE('2023-04-23','YYYY-MM-DD'), TO_DATE('2026-04-22','YYYY-MM-DD'), 9465.23, 'Annual Inspection', '24/7 emergency support with 4-hour response time');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(91, 100, TO_DATE('2025-07-23','YYYY-MM-DD'), TO_DATE('2027-07-23','YYYY-MM-DD'), 5288.59, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits'),
(92, 495, TO_DATE('2025-09-28','YYYY-MM-DD'), TO_DATE('2026-09-28','YYYY-MM-DD'), 27378.73, 'Emergency Only', 'Annual inspection and certification services'),
(93, 152, TO_DATE('2024-05-11','YYYY-MM-DD'), TO_DATE('2027-05-11','YYYY-MM-DD'), 44953.63, 'Basic', 'Covers labor costs only, parts billed separately'),
(94, 457, TO_DATE('2024-04-20','YYYY-MM-DD'), TO_DATE('2029-04-19','YYYY-MM-DD'), 39751.13, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(95, 46, TO_DATE('2022-06-01','YYYY-MM-DD'), TO_DATE('2023-06-01','YYYY-MM-DD'), 34679.12, 'Full Service', 'Emergency callout coverage during business hours only'),
(96, 435, TO_DATE('2025-09-08','YYYY-MM-DD'), TO_DATE('2028-09-07','YYYY-MM-DD'), 36241.66, 'Basic', 'Emergency callout coverage during business hours only'),
(97, 329, TO_DATE('2024-11-06','YYYY-MM-DD'), TO_DATE('2027-11-06','YYYY-MM-DD'), 32266.48, 'Basic', 'Preventive maintenance schedule with monthly visits'),
(98, 109, TO_DATE('2024-12-04','YYYY-MM-DD'), TO_DATE('2026-12-04','YYYY-MM-DD'), 23450.27, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(99, 448, TO_DATE('2024-10-06','YYYY-MM-DD'), TO_DATE('2027-10-06','YYYY-MM-DD'), 14761.51, 'Extended Warranty', 'Emergency callout coverage during business hours only'),
(100, 262, TO_DATE('2023-01-25','YYYY-MM-DD'), TO_DATE('2026-01-24','YYYY-MM-DD'), 22949.05, 'Preventive', 'Annual inspection and certification services');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(101, 279, TO_DATE('2022-09-20','YYYY-MM-DD'), TO_DATE('2023-09-20','YYYY-MM-DD'), 25977.64, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(102, 470, TO_DATE('2023-02-11','YYYY-MM-DD'), TO_DATE('2024-02-11','YYYY-MM-DD'), 30619.9, 'Extended Warranty', 'Annual inspection and certification services'),
(103, 108, TO_DATE('2023-09-03','YYYY-MM-DD'), TO_DATE('2024-09-02','YYYY-MM-DD'), 41159.9, 'Labor Only', 'Preventive maintenance schedule with monthly visits'),
(104, 391, TO_DATE('2023-10-10','YYYY-MM-DD'), TO_DATE('2024-10-09','YYYY-MM-DD'), 13143.84, 'Extended Warranty', 'Parts replacement covered, labor billed at standard rate'),
(105, 13, TO_DATE('2025-10-16','YYYY-MM-DD'), TO_DATE('2030-10-15','YYYY-MM-DD'), 4380.72, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(106, 413, TO_DATE('2024-10-08','YYYY-MM-DD'), TO_DATE('2027-10-08','YYYY-MM-DD'), 9354.5, 'Full Service', 'Parts replacement covered, labor billed at standard rate'),
(107, 131, TO_DATE('2024-03-22','YYYY-MM-DD'), TO_DATE('2029-03-21','YYYY-MM-DD'), 44367.56, 'Labor Only', '24/7 emergency support with 4-hour response time'),
(108, 331, TO_DATE('2022-08-07','YYYY-MM-DD'), TO_DATE('2023-08-07','YYYY-MM-DD'), 11459.72, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(109, 378, TO_DATE('2022-08-15','YYYY-MM-DD'), TO_DATE('2027-08-14','YYYY-MM-DD'), 37190.1, 'Emergency Only', 'Parts replacement covered, labor billed at standard rate'),
(110, 234, TO_DATE('2022-07-30','YYYY-MM-DD'), TO_DATE('2024-07-29','YYYY-MM-DD'), 25883.19, 'Emergency Only', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(111, 170, TO_DATE('2024-09-11','YYYY-MM-DD'), TO_DATE('2025-09-11','YYYY-MM-DD'), 2336.27, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(112, 337, TO_DATE('2022-12-26','YYYY-MM-DD'), TO_DATE('2024-12-25','YYYY-MM-DD'), 5686.36, 'Basic', 'Basic annual inspection with written report'),
(113, 23, TO_DATE('2022-09-16','YYYY-MM-DD'), TO_DATE('2023-09-16','YYYY-MM-DD'), 40270.51, 'Full Service', '24/7 emergency support with 4-hour response time'),
(114, 356, TO_DATE('2023-06-05','YYYY-MM-DD'), TO_DATE('2024-06-04','YYYY-MM-DD'), 44070.06, 'Preventive', 'Covers labor costs only, parts billed separately'),
(115, 436, TO_DATE('2025-03-04','YYYY-MM-DD'), TO_DATE('2028-03-03','YYYY-MM-DD'), 5630.63, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(116, 301, TO_DATE('2023-07-02','YYYY-MM-DD'), TO_DATE('2025-07-01','YYYY-MM-DD'), 17397.95, 'Basic', 'Extended manufacturer warranty with on-site service'),
(117, 304, TO_DATE('2025-07-23','YYYY-MM-DD'), TO_DATE('2027-07-23','YYYY-MM-DD'), 27603.45, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(118, 80, TO_DATE('2024-06-09','YYYY-MM-DD'), TO_DATE('2026-06-09','YYYY-MM-DD'), 45080.85, 'Basic', 'Emergency callout coverage during business hours only'),
(119, 98, TO_DATE('2023-02-15','YYYY-MM-DD'), TO_DATE('2025-02-14','YYYY-MM-DD'), 7987.17, 'Premium', 'Covers labor costs only, parts billed separately'),
(120, 179, TO_DATE('2025-07-22','YYYY-MM-DD'), TO_DATE('2026-07-22','YYYY-MM-DD'), 45453.92, 'Annual Inspection', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(121, 464, TO_DATE('2024-01-06','YYYY-MM-DD'), TO_DATE('2025-01-05','YYYY-MM-DD'), 12834.77, 'Basic', 'Preventive maintenance schedule with monthly visits'),
(122, 260, TO_DATE('2023-08-28','YYYY-MM-DD'), TO_DATE('2024-08-27','YYYY-MM-DD'), 34614.15, 'Full Service', 'Annual inspection and certification services'),
(123, 233, TO_DATE('2022-01-13','YYYY-MM-DD'), TO_DATE('2027-01-12','YYYY-MM-DD'), 3246.91, 'Basic', '24/7 emergency support with 4-hour response time'),
(124, 480, TO_DATE('2024-06-26','YYYY-MM-DD'), TO_DATE('2027-06-26','YYYY-MM-DD'), 39104.69, 'Preventive', 'Emergency callout coverage during business hours only'),
(125, 18, TO_DATE('2023-09-05','YYYY-MM-DD'), TO_DATE('2028-09-03','YYYY-MM-DD'), 23952.78, 'Annual Inspection', 'Extended manufacturer warranty with on-site service'),
(126, 396, TO_DATE('2022-01-31','YYYY-MM-DD'), TO_DATE('2023-01-31','YYYY-MM-DD'), 7882.07, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(127, 216, TO_DATE('2025-03-17','YYYY-MM-DD'), TO_DATE('2028-03-16','YYYY-MM-DD'), 37628.56, 'Preventive', 'Emergency callout coverage during business hours only'),
(128, 166, TO_DATE('2023-07-10','YYYY-MM-DD'), TO_DATE('2025-07-09','YYYY-MM-DD'), 4718.84, 'Full Service', 'Parts replacement covered, labor billed at standard rate'),
(129, 291, TO_DATE('2023-01-24','YYYY-MM-DD'), TO_DATE('2028-01-23','YYYY-MM-DD'), 24581.2, 'Preventive', 'Includes quarterly inspections and all replacement parts'),
(130, 268, TO_DATE('2022-09-11','YYYY-MM-DD'), TO_DATE('2024-09-10','YYYY-MM-DD'), 21330.95, 'Basic', '24/7 emergency support with 4-hour response time');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(131, 375, TO_DATE('2023-08-02','YYYY-MM-DD'), TO_DATE('2028-07-31','YYYY-MM-DD'), 32128.19, 'Preventive', 'Includes quarterly inspections and all replacement parts'),
(132, 137, TO_DATE('2022-08-11','YYYY-MM-DD'), TO_DATE('2023-08-11','YYYY-MM-DD'), 20292.15, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(133, 81, TO_DATE('2024-04-24','YYYY-MM-DD'), TO_DATE('2029-04-23','YYYY-MM-DD'), 32969.77, 'Basic', 'Parts replacement covered, labor billed at standard rate'),
(134, 223, TO_DATE('2023-10-15','YYYY-MM-DD'), TO_DATE('2024-10-14','YYYY-MM-DD'), 46329.44, 'Full Service', 'Emergency callout coverage during business hours only'),
(135, 171, TO_DATE('2024-04-05','YYYY-MM-DD'), TO_DATE('2027-04-05','YYYY-MM-DD'), 38844.15, 'Annual Inspection', 'Includes quarterly inspections and all replacement parts'),
(136, 454, TO_DATE('2023-12-12','YYYY-MM-DD'), TO_DATE('2026-12-11','YYYY-MM-DD'), 40686.79, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(137, 470, TO_DATE('2023-11-22','YYYY-MM-DD'), TO_DATE('2025-11-21','YYYY-MM-DD'), 9347.2, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(138, 38, TO_DATE('2023-08-02','YYYY-MM-DD'), TO_DATE('2024-08-01','YYYY-MM-DD'), 41938.51, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(139, 183, TO_DATE('2023-04-19','YYYY-MM-DD'), TO_DATE('2028-04-17','YYYY-MM-DD'), 30300.17, 'Parts Only', 'Emergency callout coverage during business hours only'),
(140, 112, TO_DATE('2022-06-01','YYYY-MM-DD'), TO_DATE('2023-06-01','YYYY-MM-DD'), 29589.39, 'Premium', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(141, 305, TO_DATE('2022-07-04','YYYY-MM-DD'), TO_DATE('2023-07-04','YYYY-MM-DD'), 28473.32, 'Annual Inspection', 'Covers labor costs only, parts billed separately'),
(142, 111, TO_DATE('2022-12-01','YYYY-MM-DD'), TO_DATE('2023-12-01','YYYY-MM-DD'), 15293.81, 'Labor Only', 'Annual inspection and certification services'),
(143, 460, TO_DATE('2025-11-07','YYYY-MM-DD'), TO_DATE('2030-11-06','YYYY-MM-DD'), 10874.13, 'Basic', 'Parts replacement covered, labor billed at standard rate'),
(144, 294, TO_DATE('2023-11-26','YYYY-MM-DD'), TO_DATE('2024-11-25','YYYY-MM-DD'), 27838.37, 'Labor Only', 'Basic annual inspection with written report'),
(145, 246, TO_DATE('2025-02-09','YYYY-MM-DD'), TO_DATE('2026-02-09','YYYY-MM-DD'), 27104.28, 'Preventive', 'Basic annual inspection with written report'),
(146, 52, TO_DATE('2024-09-12','YYYY-MM-DD'), TO_DATE('2027-09-12','YYYY-MM-DD'), 10248.81, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(147, 424, TO_DATE('2025-06-30','YYYY-MM-DD'), TO_DATE('2027-06-30','YYYY-MM-DD'), 42699.7, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits'),
(148, 444, TO_DATE('2023-01-30','YYYY-MM-DD'), TO_DATE('2025-01-29','YYYY-MM-DD'), 33377.42, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(149, 212, TO_DATE('2025-01-11','YYYY-MM-DD'), TO_DATE('2027-01-11','YYYY-MM-DD'), 2254.63, 'Premium', 'Extended manufacturer warranty with on-site service'),
(150, 240, TO_DATE('2023-07-11','YYYY-MM-DD'), TO_DATE('2026-07-10','YYYY-MM-DD'), 28781.77, 'Labor Only', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(151, 179, TO_DATE('2023-08-15','YYYY-MM-DD'), TO_DATE('2026-08-14','YYYY-MM-DD'), 47055.41, 'Parts Only', 'Comprehensive coverage including consumables and filters'),
(152, 42, TO_DATE('2023-12-07','YYYY-MM-DD'), TO_DATE('2024-12-06','YYYY-MM-DD'), 11798.81, 'Premium', 'Parts replacement covered, labor billed at standard rate'),
(153, 358, TO_DATE('2024-11-04','YYYY-MM-DD'), TO_DATE('2027-11-04','YYYY-MM-DD'), 7081.57, 'Preventive', 'Covers labor costs only, parts billed separately'),
(154, 65, TO_DATE('2023-04-24','YYYY-MM-DD'), TO_DATE('2028-04-22','YYYY-MM-DD'), 22381.59, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(155, 120, TO_DATE('2023-07-01','YYYY-MM-DD'), TO_DATE('2024-06-30','YYYY-MM-DD'), 2905.29, 'Premium', 'Emergency callout coverage during business hours only'),
(156, 368, TO_DATE('2023-07-26','YYYY-MM-DD'), TO_DATE('2025-07-25','YYYY-MM-DD'), 44791.72, 'Basic', 'Covers labor costs only, parts billed separately'),
(157, 395, TO_DATE('2025-10-22','YYYY-MM-DD'), TO_DATE('2030-10-21','YYYY-MM-DD'), 22232.54, 'Labor Only', 'Basic annual inspection with written report'),
(158, 293, TO_DATE('2024-07-11','YYYY-MM-DD'), TO_DATE('2027-07-11','YYYY-MM-DD'), 3225.18, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(159, 7, TO_DATE('2022-02-12','YYYY-MM-DD'), TO_DATE('2023-02-12','YYYY-MM-DD'), 4769.28, 'Preventive', 'Covers labor costs only, parts billed separately'),
(160, 265, TO_DATE('2022-08-08','YYYY-MM-DD'), TO_DATE('2023-08-08','YYYY-MM-DD'), 33401.77, 'Parts Only', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(161, 161, TO_DATE('2022-07-28','YYYY-MM-DD'), TO_DATE('2025-07-27','YYYY-MM-DD'), 4082.0, 'Preventive', 'Emergency callout coverage during business hours only'),
(162, 297, TO_DATE('2024-12-12','YYYY-MM-DD'), TO_DATE('2027-12-12','YYYY-MM-DD'), 15409.91, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(163, 475, TO_DATE('2023-05-04','YYYY-MM-DD'), TO_DATE('2025-05-03','YYYY-MM-DD'), 36142.91, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(164, 497, TO_DATE('2024-06-21','YYYY-MM-DD'), TO_DATE('2027-06-21','YYYY-MM-DD'), 11165.43, 'Preventive', 'Covers labor costs only, parts billed separately'),
(165, 85, TO_DATE('2025-05-08','YYYY-MM-DD'), TO_DATE('2026-05-08','YYYY-MM-DD'), 20844.32, 'Emergency Only', 'Extended manufacturer warranty with on-site service'),
(166, 484, TO_DATE('2022-04-09','YYYY-MM-DD'), TO_DATE('2023-04-09','YYYY-MM-DD'), 33048.88, 'Premium', 'Basic annual inspection with written report'),
(167, 353, TO_DATE('2024-06-10','YYYY-MM-DD'), TO_DATE('2029-06-09','YYYY-MM-DD'), 6468.28, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(168, 432, TO_DATE('2025-11-19','YYYY-MM-DD'), TO_DATE('2026-11-19','YYYY-MM-DD'), 2762.07, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(169, 438, TO_DATE('2025-11-18','YYYY-MM-DD'), TO_DATE('2027-11-18','YYYY-MM-DD'), 43875.87, 'Preventive', 'Parts replacement covered, labor billed at standard rate'),
(170, 400, TO_DATE('2022-07-03','YYYY-MM-DD'), TO_DATE('2025-07-02','YYYY-MM-DD'), 34621.15, 'Premium', 'Annual inspection and certification services');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(171, 4, TO_DATE('2024-02-29','YYYY-MM-DD'), TO_DATE('2025-02-28','YYYY-MM-DD'), 49809.6, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(172, 32, TO_DATE('2022-07-26','YYYY-MM-DD'), TO_DATE('2023-07-26','YYYY-MM-DD'), 27385.31, 'Annual Inspection', 'Extended manufacturer warranty with on-site service'),
(173, 190, TO_DATE('2022-04-20','YYYY-MM-DD'), TO_DATE('2024-04-19','YYYY-MM-DD'), 35037.96, 'Premium', '24/7 emergency support with 4-hour response time'),
(174, 375, TO_DATE('2025-10-28','YYYY-MM-DD'), TO_DATE('2027-10-28','YYYY-MM-DD'), 23167.7, 'Basic', 'Extended manufacturer warranty with on-site service'),
(175, 416, TO_DATE('2024-11-19','YYYY-MM-DD'), TO_DATE('2026-11-19','YYYY-MM-DD'), 48213.39, 'Emergency Only', 'Annual inspection and certification services'),
(176, 300, TO_DATE('2023-02-10','YYYY-MM-DD'), TO_DATE('2025-02-09','YYYY-MM-DD'), 25666.13, 'Labor Only', 'Emergency callout coverage during business hours only'),
(177, 40, TO_DATE('2022-02-05','YYYY-MM-DD'), TO_DATE('2025-02-04','YYYY-MM-DD'), 44417.32, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(178, 485, TO_DATE('2024-07-29','YYYY-MM-DD'), TO_DATE('2025-07-29','YYYY-MM-DD'), 36251.71, 'Full Service', 'Annual inspection and certification services'),
(179, 340, TO_DATE('2025-07-22','YYYY-MM-DD'), TO_DATE('2027-07-22','YYYY-MM-DD'), 26454.15, 'Emergency Only', 'Preventive maintenance schedule with monthly visits'),
(180, 67, TO_DATE('2024-03-04','YYYY-MM-DD'), TO_DATE('2027-03-04','YYYY-MM-DD'), 21174.12, 'Extended Warranty', 'Covers labor costs only, parts billed separately');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(181, 50, TO_DATE('2023-10-10','YYYY-MM-DD'), TO_DATE('2025-10-09','YYYY-MM-DD'), 46298.63, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits'),
(182, 261, TO_DATE('2022-07-11','YYYY-MM-DD'), TO_DATE('2025-07-10','YYYY-MM-DD'), 45028.14, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits'),
(183, 464, TO_DATE('2025-02-24','YYYY-MM-DD'), TO_DATE('2026-02-24','YYYY-MM-DD'), 34207.4, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(184, 159, TO_DATE('2022-02-26','YYYY-MM-DD'), TO_DATE('2023-02-26','YYYY-MM-DD'), 25594.36, 'Annual Inspection', 'Comprehensive coverage including consumables and filters'),
(185, 197, TO_DATE('2022-03-02','YYYY-MM-DD'), TO_DATE('2024-03-01','YYYY-MM-DD'), 49280.19, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(186, 145, TO_DATE('2023-01-18','YYYY-MM-DD'), TO_DATE('2025-01-17','YYYY-MM-DD'), 46707.98, 'Preventive', '24/7 emergency support with 4-hour response time'),
(187, 178, TO_DATE('2024-02-16','YYYY-MM-DD'), TO_DATE('2029-02-14','YYYY-MM-DD'), 36404.01, 'Basic', '24/7 emergency support with 4-hour response time'),
(188, 107, TO_DATE('2024-07-06','YYYY-MM-DD'), TO_DATE('2026-07-06','YYYY-MM-DD'), 22146.02, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(189, 183, TO_DATE('2024-12-13','YYYY-MM-DD'), TO_DATE('2027-12-13','YYYY-MM-DD'), 20068.39, 'Premium', 'Preventive maintenance schedule with monthly visits'),
(190, 436, TO_DATE('2024-10-10','YYYY-MM-DD'), TO_DATE('2026-10-10','YYYY-MM-DD'), 44999.68, 'Emergency Only', 'Comprehensive coverage including consumables and filters');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(191, 269, TO_DATE('2025-12-27','YYYY-MM-DD'), TO_DATE('2027-12-27','YYYY-MM-DD'), 36236.71, 'Annual Inspection', 'Basic annual inspection with written report'),
(192, 109, TO_DATE('2025-05-01','YYYY-MM-DD'), TO_DATE('2027-05-01','YYYY-MM-DD'), 27613.95, 'Emergency Only', 'Basic annual inspection with written report'),
(193, 171, TO_DATE('2024-09-25','YYYY-MM-DD'), TO_DATE('2026-09-25','YYYY-MM-DD'), 33410.66, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(194, 171, TO_DATE('2025-12-28','YYYY-MM-DD'), TO_DATE('2027-12-28','YYYY-MM-DD'), 30937.72, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(195, 473, TO_DATE('2025-03-29','YYYY-MM-DD'), TO_DATE('2030-03-28','YYYY-MM-DD'), 25042.8, 'Preventive', 'Covers labor costs only, parts billed separately'),
(196, 310, TO_DATE('2025-12-21','YYYY-MM-DD'), TO_DATE('2026-12-21','YYYY-MM-DD'), 22737.94, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(197, 300, TO_DATE('2024-02-21','YYYY-MM-DD'), TO_DATE('2027-02-20','YYYY-MM-DD'), 14642.64, 'Emergency Only', 'Basic annual inspection with written report'),
(198, 284, TO_DATE('2025-11-20','YYYY-MM-DD'), TO_DATE('2026-11-20','YYYY-MM-DD'), 13084.65, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(199, 77, TO_DATE('2025-01-18','YYYY-MM-DD'), TO_DATE('2027-01-18','YYYY-MM-DD'), 47441.08, 'Extended Warranty', 'Extended manufacturer warranty with on-site service'),
(200, 125, TO_DATE('2022-07-13','YYYY-MM-DD'), TO_DATE('2024-07-12','YYYY-MM-DD'), 7508.68, 'Preventive', '24/7 emergency support with 4-hour response time');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(201, 314, TO_DATE('2022-08-23','YYYY-MM-DD'), TO_DATE('2023-08-23','YYYY-MM-DD'), 7297.61, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits'),
(202, 190, TO_DATE('2023-05-29','YYYY-MM-DD'), TO_DATE('2028-05-27','YYYY-MM-DD'), 2425.68, 'Premium', 'Covers labor costs only, parts billed separately'),
(203, 87, TO_DATE('2025-09-22','YYYY-MM-DD'), TO_DATE('2030-09-21','YYYY-MM-DD'), 43464.02, 'Extended Warranty', 'Comprehensive coverage including consumables and filters'),
(204, 386, TO_DATE('2023-07-01','YYYY-MM-DD'), TO_DATE('2025-06-30','YYYY-MM-DD'), 28976.49, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(205, 435, TO_DATE('2025-07-07','YYYY-MM-DD'), TO_DATE('2027-07-07','YYYY-MM-DD'), 25571.56, 'Premium', 'Annual inspection and certification services'),
(206, 293, TO_DATE('2025-05-04','YYYY-MM-DD'), TO_DATE('2028-05-03','YYYY-MM-DD'), 44621.16, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(207, 264, TO_DATE('2024-10-27','YYYY-MM-DD'), TO_DATE('2026-10-27','YYYY-MM-DD'), 20096.66, 'Full Service', '24/7 emergency support with 4-hour response time'),
(208, 413, TO_DATE('2024-04-06','YYYY-MM-DD'), TO_DATE('2026-04-06','YYYY-MM-DD'), 38824.05, 'Emergency Only', 'Annual inspection and certification services'),
(209, 481, TO_DATE('2023-10-19','YYYY-MM-DD'), TO_DATE('2025-10-18','YYYY-MM-DD'), 45609.5, 'Full Service', 'Parts replacement covered, labor billed at standard rate'),
(210, 75, TO_DATE('2022-05-13','YYYY-MM-DD'), TO_DATE('2025-05-12','YYYY-MM-DD'), 13273.29, 'Extended Warranty', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(211, 43, TO_DATE('2023-01-31','YYYY-MM-DD'), TO_DATE('2026-01-30','YYYY-MM-DD'), 40677.42, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(212, 212, TO_DATE('2024-05-19','YYYY-MM-DD'), TO_DATE('2027-05-19','YYYY-MM-DD'), 28051.43, 'Extended Warranty', 'Parts replacement covered, labor billed at standard rate'),
(213, 78, TO_DATE('2022-09-03','YYYY-MM-DD'), TO_DATE('2027-09-02','YYYY-MM-DD'), 45141.4, 'Premium', 'Annual inspection and certification services'),
(214, 82, TO_DATE('2025-05-26','YYYY-MM-DD'), TO_DATE('2026-05-26','YYYY-MM-DD'), 22925.57, 'Preventive', 'Covers labor costs only, parts billed separately'),
(215, 54, TO_DATE('2025-07-20','YYYY-MM-DD'), TO_DATE('2030-07-19','YYYY-MM-DD'), 36626.06, 'Annual Inspection', 'Comprehensive coverage including consumables and filters'),
(216, 44, TO_DATE('2025-11-30','YYYY-MM-DD'), TO_DATE('2026-11-30','YYYY-MM-DD'), 35422.02, 'Parts Only', 'Extended manufacturer warranty with on-site service'),
(217, 33, TO_DATE('2025-07-07','YYYY-MM-DD'), TO_DATE('2026-07-07','YYYY-MM-DD'), 45930.31, 'Emergency Only', 'Annual inspection and certification services'),
(218, 379, TO_DATE('2022-12-09','YYYY-MM-DD'), TO_DATE('2025-12-08','YYYY-MM-DD'), 30906.47, 'Extended Warranty', 'Extended manufacturer warranty with on-site service'),
(219, 118, TO_DATE('2024-05-04','YYYY-MM-DD'), TO_DATE('2027-05-04','YYYY-MM-DD'), 18500.8, 'Labor Only', 'Includes quarterly inspections and all replacement parts'),
(220, 207, TO_DATE('2025-05-27','YYYY-MM-DD'), TO_DATE('2026-05-27','YYYY-MM-DD'), 26203.16, 'Parts Only', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(221, 340, TO_DATE('2025-03-01','YYYY-MM-DD'), TO_DATE('2028-02-29','YYYY-MM-DD'), 24186.94, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(222, 85, TO_DATE('2023-02-24','YYYY-MM-DD'), TO_DATE('2028-02-23','YYYY-MM-DD'), 26252.6, 'Parts Only', 'Emergency callout coverage during business hours only'),
(223, 412, TO_DATE('2025-11-09','YYYY-MM-DD'), TO_DATE('2030-11-08','YYYY-MM-DD'), 24502.74, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(224, 492, TO_DATE('2023-12-13','YYYY-MM-DD'), TO_DATE('2025-12-12','YYYY-MM-DD'), 27852.83, 'Extended Warranty', 'Emergency callout coverage during business hours only'),
(225, 189, TO_DATE('2023-10-06','YYYY-MM-DD'), TO_DATE('2028-10-04','YYYY-MM-DD'), 2008.46, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(226, 125, TO_DATE('2024-03-03','YYYY-MM-DD'), TO_DATE('2026-03-03','YYYY-MM-DD'), 30829.8, 'Basic', '24/7 emergency support with 4-hour response time'),
(227, 450, TO_DATE('2025-01-29','YYYY-MM-DD'), TO_DATE('2027-01-29','YYYY-MM-DD'), 35201.92, 'Preventive', '24/7 emergency support with 4-hour response time'),
(228, 361, TO_DATE('2024-09-29','YYYY-MM-DD'), TO_DATE('2025-09-29','YYYY-MM-DD'), 48812.67, 'Full Service', '24/7 emergency support with 4-hour response time'),
(229, 271, TO_DATE('2023-05-14','YYYY-MM-DD'), TO_DATE('2028-05-12','YYYY-MM-DD'), 43849.11, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(230, 328, TO_DATE('2025-06-03','YYYY-MM-DD'), TO_DATE('2028-06-02','YYYY-MM-DD'), 42618.03, 'Premium', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(231, 497, TO_DATE('2022-05-30','YYYY-MM-DD'), TO_DATE('2023-05-30','YYYY-MM-DD'), 22017.34, 'Emergency Only', 'Extended manufacturer warranty with on-site service'),
(232, 375, TO_DATE('2025-12-10','YYYY-MM-DD'), TO_DATE('2030-12-09','YYYY-MM-DD'), 26040.71, 'Premium', 'Emergency callout coverage during business hours only'),
(233, 250, TO_DATE('2022-07-18','YYYY-MM-DD'), TO_DATE('2023-07-18','YYYY-MM-DD'), 33025.56, 'Annual Inspection', 'Includes quarterly inspections and all replacement parts'),
(234, 285, TO_DATE('2022-04-12','YYYY-MM-DD'), TO_DATE('2023-04-12','YYYY-MM-DD'), 21988.16, 'Basic', 'Extended manufacturer warranty with on-site service'),
(235, 281, TO_DATE('2024-08-31','YYYY-MM-DD'), TO_DATE('2025-08-31','YYYY-MM-DD'), 12092.69, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(236, 458, TO_DATE('2023-10-18','YYYY-MM-DD'), TO_DATE('2026-10-17','YYYY-MM-DD'), 13345.47, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(237, 394, TO_DATE('2022-05-23','YYYY-MM-DD'), TO_DATE('2025-05-22','YYYY-MM-DD'), 27216.47, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(238, 154, TO_DATE('2024-06-13','YYYY-MM-DD'), TO_DATE('2026-06-13','YYYY-MM-DD'), 47595.99, 'Preventive', 'Basic annual inspection with written report'),
(239, 357, TO_DATE('2023-04-27','YYYY-MM-DD'), TO_DATE('2024-04-26','YYYY-MM-DD'), 11761.29, 'Full Service', 'Annual inspection and certification services'),
(240, 300, TO_DATE('2024-12-27','YYYY-MM-DD'), TO_DATE('2026-12-27','YYYY-MM-DD'), 7853.58, 'Labor Only', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(241, 359, TO_DATE('2024-08-01','YYYY-MM-DD'), TO_DATE('2026-08-01','YYYY-MM-DD'), 46619.45, 'Labor Only', 'Emergency callout coverage during business hours only'),
(242, 287, TO_DATE('2025-06-08','YYYY-MM-DD'), TO_DATE('2028-06-07','YYYY-MM-DD'), 31020.22, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(243, 57, TO_DATE('2023-02-06','YYYY-MM-DD'), TO_DATE('2025-02-05','YYYY-MM-DD'), 5570.17, 'Parts Only', 'Emergency callout coverage during business hours only'),
(244, 326, TO_DATE('2024-06-08','YYYY-MM-DD'), TO_DATE('2026-06-08','YYYY-MM-DD'), 17166.32, 'Extended Warranty', 'Emergency callout coverage during business hours only'),
(245, 169, TO_DATE('2025-09-14','YYYY-MM-DD'), TO_DATE('2027-09-14','YYYY-MM-DD'), 18577.66, 'Annual Inspection', 'Covers labor costs only, parts billed separately'),
(246, 450, TO_DATE('2023-11-26','YYYY-MM-DD'), TO_DATE('2024-11-25','YYYY-MM-DD'), 11792.05, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(247, 33, TO_DATE('2025-05-30','YYYY-MM-DD'), TO_DATE('2026-05-30','YYYY-MM-DD'), 28188.26, 'Annual Inspection', 'Basic annual inspection with written report'),
(248, 79, TO_DATE('2022-10-11','YYYY-MM-DD'), TO_DATE('2024-10-10','YYYY-MM-DD'), 2274.64, 'Preventive', 'Basic annual inspection with written report'),
(249, 104, TO_DATE('2023-10-21','YYYY-MM-DD'), TO_DATE('2024-10-20','YYYY-MM-DD'), 20855.61, 'Premium', 'Covers labor costs only, parts billed separately'),
(250, 293, TO_DATE('2024-07-22','YYYY-MM-DD'), TO_DATE('2025-07-22','YYYY-MM-DD'), 33330.86, 'Annual Inspection', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(251, 189, TO_DATE('2023-12-31','YYYY-MM-DD'), TO_DATE('2025-12-30','YYYY-MM-DD'), 49960.17, 'Preventive', 'Annual inspection and certification services'),
(252, 216, TO_DATE('2024-04-21','YYYY-MM-DD'), TO_DATE('2026-04-21','YYYY-MM-DD'), 12767.63, 'Premium', 'Comprehensive coverage including consumables and filters'),
(253, 422, TO_DATE('2023-05-07','YYYY-MM-DD'), TO_DATE('2025-05-06','YYYY-MM-DD'), 38484.99, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits'),
(254, 484, TO_DATE('2022-06-14','YYYY-MM-DD'), TO_DATE('2023-06-14','YYYY-MM-DD'), 33559.18, 'Preventive', 'Parts replacement covered, labor billed at standard rate'),
(255, 444, TO_DATE('2025-03-13','YYYY-MM-DD'), TO_DATE('2026-03-13','YYYY-MM-DD'), 13480.49, 'Parts Only', 'Emergency callout coverage during business hours only'),
(256, 457, TO_DATE('2022-07-25','YYYY-MM-DD'), TO_DATE('2024-07-24','YYYY-MM-DD'), 45505.67, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(257, 101, TO_DATE('2022-05-31','YYYY-MM-DD'), TO_DATE('2025-05-30','YYYY-MM-DD'), 5482.07, 'Emergency Only', 'Basic annual inspection with written report'),
(258, 38, TO_DATE('2022-03-04','YYYY-MM-DD'), TO_DATE('2025-03-03','YYYY-MM-DD'), 29966.32, 'Extended Warranty', 'Includes quarterly inspections and all replacement parts'),
(259, 318, TO_DATE('2024-02-04','YYYY-MM-DD'), TO_DATE('2025-02-03','YYYY-MM-DD'), 22037.18, 'Annual Inspection', 'Annual inspection and certification services'),
(260, 277, TO_DATE('2025-08-09','YYYY-MM-DD'), TO_DATE('2028-08-08','YYYY-MM-DD'), 7672.02, 'Basic', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(261, 50, TO_DATE('2022-01-16','YYYY-MM-DD'), TO_DATE('2023-01-16','YYYY-MM-DD'), 8541.06, 'Parts Only', 'Extended manufacturer warranty with on-site service'),
(262, 441, TO_DATE('2022-11-17','YYYY-MM-DD'), TO_DATE('2027-11-16','YYYY-MM-DD'), 23364.32, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(263, 290, TO_DATE('2024-12-19','YYYY-MM-DD'), TO_DATE('2025-12-19','YYYY-MM-DD'), 10608.7, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(264, 237, TO_DATE('2024-12-23','YYYY-MM-DD'), TO_DATE('2025-12-23','YYYY-MM-DD'), 48412.5, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(265, 194, TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2027-11-10','YYYY-MM-DD'), 28373.86, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(266, 35, TO_DATE('2022-06-20','YYYY-MM-DD'), TO_DATE('2023-06-20','YYYY-MM-DD'), 22657.24, 'Basic', 'Emergency callout coverage during business hours only'),
(267, 74, TO_DATE('2022-11-08','YYYY-MM-DD'), TO_DATE('2025-11-07','YYYY-MM-DD'), 5115.38, 'Emergency Only', 'Extended manufacturer warranty with on-site service'),
(268, 295, TO_DATE('2025-04-12','YYYY-MM-DD'), TO_DATE('2026-04-12','YYYY-MM-DD'), 47342.82, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits'),
(269, 399, TO_DATE('2024-07-22','YYYY-MM-DD'), TO_DATE('2026-07-22','YYYY-MM-DD'), 36260.4, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(270, 407, TO_DATE('2022-06-18','YYYY-MM-DD'), TO_DATE('2024-06-17','YYYY-MM-DD'), 44595.42, 'Annual Inspection', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(271, 138, TO_DATE('2024-10-02','YYYY-MM-DD'), TO_DATE('2025-10-02','YYYY-MM-DD'), 49768.84, 'Labor Only', 'Basic annual inspection with written report'),
(272, 480, TO_DATE('2023-02-14','YYYY-MM-DD'), TO_DATE('2026-02-13','YYYY-MM-DD'), 23326.83, 'Emergency Only', 'Emergency callout coverage during business hours only'),
(273, 161, TO_DATE('2025-07-19','YYYY-MM-DD'), TO_DATE('2028-07-18','YYYY-MM-DD'), 29598.65, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(274, 88, TO_DATE('2025-08-12','YYYY-MM-DD'), TO_DATE('2026-08-12','YYYY-MM-DD'), 49584.33, 'Preventive', 'Emergency callout coverage during business hours only'),
(275, 455, TO_DATE('2025-11-30','YYYY-MM-DD'), TO_DATE('2028-11-29','YYYY-MM-DD'), 10844.21, 'Full Service', 'Annual inspection and certification services'),
(276, 363, TO_DATE('2024-03-30','YYYY-MM-DD'), TO_DATE('2025-03-30','YYYY-MM-DD'), 44447.03, 'Premium', 'Emergency callout coverage during business hours only'),
(277, 42, TO_DATE('2025-06-26','YYYY-MM-DD'), TO_DATE('2026-06-26','YYYY-MM-DD'), 11791.25, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(278, 371, TO_DATE('2023-02-18','YYYY-MM-DD'), TO_DATE('2028-02-17','YYYY-MM-DD'), 5524.2, 'Labor Only', 'Basic annual inspection with written report'),
(279, 453, TO_DATE('2025-11-10','YYYY-MM-DD'), TO_DATE('2026-11-10','YYYY-MM-DD'), 32268.66, 'Premium', 'Extended manufacturer warranty with on-site service'),
(280, 148, TO_DATE('2025-08-10','YYYY-MM-DD'), TO_DATE('2026-08-10','YYYY-MM-DD'), 10953.06, 'Extended Warranty', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(281, 240, TO_DATE('2023-06-07','YYYY-MM-DD'), TO_DATE('2025-06-06','YYYY-MM-DD'), 4920.8, 'Emergency Only', 'Basic annual inspection with written report'),
(282, 322, TO_DATE('2025-06-28','YYYY-MM-DD'), TO_DATE('2028-06-27','YYYY-MM-DD'), 26478.89, 'Labor Only', 'Preventive maintenance schedule with monthly visits'),
(283, 270, TO_DATE('2024-05-29','YYYY-MM-DD'), TO_DATE('2025-05-29','YYYY-MM-DD'), 10899.49, 'Emergency Only', 'Comprehensive coverage including consumables and filters'),
(284, 450, TO_DATE('2025-03-18','YYYY-MM-DD'), TO_DATE('2026-03-18','YYYY-MM-DD'), 16021.33, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(285, 24, TO_DATE('2024-03-08','YYYY-MM-DD'), TO_DATE('2026-03-08','YYYY-MM-DD'), 38596.6, 'Premium', 'Extended manufacturer warranty with on-site service'),
(286, 302, TO_DATE('2024-07-02','YYYY-MM-DD'), TO_DATE('2027-07-02','YYYY-MM-DD'), 46533.39, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(287, 64, TO_DATE('2022-10-20','YYYY-MM-DD'), TO_DATE('2025-10-19','YYYY-MM-DD'), 33342.59, 'Emergency Only', 'Emergency callout coverage during business hours only'),
(288, 120, TO_DATE('2022-08-20','YYYY-MM-DD'), TO_DATE('2024-08-19','YYYY-MM-DD'), 10275.01, 'Preventive', 'Extended manufacturer warranty with on-site service'),
(289, 273, TO_DATE('2022-11-29','YYYY-MM-DD'), TO_DATE('2024-11-28','YYYY-MM-DD'), 12708.52, 'Preventive', 'Covers labor costs only, parts billed separately'),
(290, 3, TO_DATE('2024-01-22','YYYY-MM-DD'), TO_DATE('2026-01-21','YYYY-MM-DD'), 7367.16, 'Emergency Only', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(291, 132, TO_DATE('2024-06-15','YYYY-MM-DD'), TO_DATE('2025-06-15','YYYY-MM-DD'), 36092.22, 'Preventive', 'Covers labor costs only, parts billed separately'),
(292, 282, TO_DATE('2025-11-03','YYYY-MM-DD'), TO_DATE('2026-11-03','YYYY-MM-DD'), 18261.39, 'Emergency Only', 'Emergency callout coverage during business hours only'),
(293, 152, TO_DATE('2022-06-18','YYYY-MM-DD'), TO_DATE('2024-06-17','YYYY-MM-DD'), 33651.85, 'Preventive', 'Includes quarterly inspections and all replacement parts'),
(294, 171, TO_DATE('2025-07-09','YYYY-MM-DD'), TO_DATE('2027-07-09','YYYY-MM-DD'), 26154.78, 'Extended Warranty', 'Annual inspection and certification services'),
(295, 49, TO_DATE('2023-12-21','YYYY-MM-DD'), TO_DATE('2024-12-20','YYYY-MM-DD'), 9962.97, 'Emergency Only', 'Annual inspection and certification services'),
(296, 308, TO_DATE('2022-04-11','YYYY-MM-DD'), TO_DATE('2023-04-11','YYYY-MM-DD'), 11597.45, 'Emergency Only', 'Emergency callout coverage during business hours only'),
(297, 111, TO_DATE('2025-01-24','YYYY-MM-DD'), TO_DATE('2026-01-24','YYYY-MM-DD'), 48140.57, 'Emergency Only', 'Comprehensive coverage including consumables and filters'),
(298, 76, TO_DATE('2024-01-22','YYYY-MM-DD'), TO_DATE('2025-01-21','YYYY-MM-DD'), 27653.2, 'Emergency Only', '24/7 emergency support with 4-hour response time'),
(299, 334, TO_DATE('2024-03-14','YYYY-MM-DD'), TO_DATE('2025-03-14','YYYY-MM-DD'), 39383.08, 'Basic', 'Basic annual inspection with written report'),
(300, 327, TO_DATE('2023-04-08','YYYY-MM-DD'), TO_DATE('2026-04-07','YYYY-MM-DD'), 45315.05, 'Annual Inspection', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(301, 317, TO_DATE('2025-06-05','YYYY-MM-DD'), TO_DATE('2028-06-04','YYYY-MM-DD'), 16980.77, 'Full Service', 'Emergency callout coverage during business hours only'),
(302, 138, TO_DATE('2023-05-26','YYYY-MM-DD'), TO_DATE('2024-05-25','YYYY-MM-DD'), 11020.24, 'Parts Only', 'Basic annual inspection with written report'),
(303, 45, TO_DATE('2025-03-30','YYYY-MM-DD'), TO_DATE('2027-03-30','YYYY-MM-DD'), 48887.18, 'Extended Warranty', 'Includes quarterly inspections and all replacement parts'),
(304, 303, TO_DATE('2024-02-24','YYYY-MM-DD'), TO_DATE('2027-02-23','YYYY-MM-DD'), 7092.68, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(305, 96, TO_DATE('2023-07-27','YYYY-MM-DD'), TO_DATE('2024-07-26','YYYY-MM-DD'), 29024.6, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(306, 379, TO_DATE('2022-08-19','YYYY-MM-DD'), TO_DATE('2024-08-18','YYYY-MM-DD'), 22353.05, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(307, 420, TO_DATE('2023-01-10','YYYY-MM-DD'), TO_DATE('2025-01-09','YYYY-MM-DD'), 41645.15, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(308, 297, TO_DATE('2022-10-02','YYYY-MM-DD'), TO_DATE('2023-10-02','YYYY-MM-DD'), 27007.09, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(309, 161, TO_DATE('2024-12-15','YYYY-MM-DD'), TO_DATE('2026-12-15','YYYY-MM-DD'), 5006.04, 'Preventive', '24/7 emergency support with 4-hour response time'),
(310, 320, TO_DATE('2023-09-25','YYYY-MM-DD'), TO_DATE('2025-09-24','YYYY-MM-DD'), 37000.21, 'Emergency Only', 'Comprehensive coverage including consumables and filters');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(311, 268, TO_DATE('2025-05-27','YYYY-MM-DD'), TO_DATE('2030-05-26','YYYY-MM-DD'), 27882.1, 'Basic', 'Basic annual inspection with written report'),
(312, 226, TO_DATE('2024-06-01','YYYY-MM-DD'), TO_DATE('2027-06-01','YYYY-MM-DD'), 17069.55, 'Basic', 'Includes quarterly inspections and all replacement parts'),
(313, 119, TO_DATE('2024-03-18','YYYY-MM-DD'), TO_DATE('2025-03-18','YYYY-MM-DD'), 42830.25, 'Extended Warranty', 'Includes quarterly inspections and all replacement parts'),
(314, 284, TO_DATE('2022-06-25','YYYY-MM-DD'), TO_DATE('2023-06-25','YYYY-MM-DD'), 38180.13, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(315, 374, TO_DATE('2023-09-06','YYYY-MM-DD'), TO_DATE('2028-09-04','YYYY-MM-DD'), 35819.83, 'Parts Only', 'Basic annual inspection with written report'),
(316, 12, TO_DATE('2024-10-18','YYYY-MM-DD'), TO_DATE('2025-10-18','YYYY-MM-DD'), 19815.48, 'Preventive', 'Basic annual inspection with written report'),
(317, 147, TO_DATE('2024-01-03','YYYY-MM-DD'), TO_DATE('2025-01-02','YYYY-MM-DD'), 39497.93, 'Parts Only', 'Extended manufacturer warranty with on-site service'),
(318, 337, TO_DATE('2024-08-13','YYYY-MM-DD'), TO_DATE('2026-08-13','YYYY-MM-DD'), 10361.55, 'Parts Only', 'Annual inspection and certification services'),
(319, 178, TO_DATE('2023-08-01','YYYY-MM-DD'), TO_DATE('2024-07-31','YYYY-MM-DD'), 7640.3, 'Preventive', '24/7 emergency support with 4-hour response time'),
(320, 60, TO_DATE('2023-12-02','YYYY-MM-DD'), TO_DATE('2025-12-01','YYYY-MM-DD'), 47473.37, 'Parts Only', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(321, 261, TO_DATE('2022-11-04','YYYY-MM-DD'), TO_DATE('2024-11-03','YYYY-MM-DD'), 2823.94, 'Premium', 'Emergency callout coverage during business hours only'),
(322, 79, TO_DATE('2025-01-25','YYYY-MM-DD'), TO_DATE('2027-01-25','YYYY-MM-DD'), 23250.27, 'Preventive', 'Includes quarterly inspections and all replacement parts'),
(323, 334, TO_DATE('2022-06-27','YYYY-MM-DD'), TO_DATE('2027-06-26','YYYY-MM-DD'), 23878.21, 'Full Service', 'Emergency callout coverage during business hours only'),
(324, 52, TO_DATE('2024-04-19','YYYY-MM-DD'), TO_DATE('2026-04-19','YYYY-MM-DD'), 14700.69, 'Emergency Only', 'Preventive maintenance schedule with monthly visits'),
(325, 126, TO_DATE('2022-12-21','YYYY-MM-DD'), TO_DATE('2024-12-20','YYYY-MM-DD'), 9550.37, 'Extended Warranty', 'Extended manufacturer warranty with on-site service'),
(326, 268, TO_DATE('2024-09-27','YYYY-MM-DD'), TO_DATE('2026-09-27','YYYY-MM-DD'), 2800.57, 'Full Service', 'Annual inspection and certification services'),
(327, 183, TO_DATE('2024-07-14','YYYY-MM-DD'), TO_DATE('2026-07-14','YYYY-MM-DD'), 3437.6, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(328, 398, TO_DATE('2024-06-10','YYYY-MM-DD'), TO_DATE('2027-06-10','YYYY-MM-DD'), 39045.3, 'Extended Warranty', 'Comprehensive coverage including consumables and filters'),
(329, 278, TO_DATE('2025-02-01','YYYY-MM-DD'), TO_DATE('2030-01-31','YYYY-MM-DD'), 41169.95, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(330, 215, TO_DATE('2022-10-05','YYYY-MM-DD'), TO_DATE('2024-10-04','YYYY-MM-DD'), 8388.68, 'Emergency Only', 'Covers labor costs only, parts billed separately');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(331, 125, TO_DATE('2023-09-25','YYYY-MM-DD'), TO_DATE('2024-09-24','YYYY-MM-DD'), 11117.0, 'Full Service', 'Emergency callout coverage during business hours only'),
(332, 288, TO_DATE('2023-11-29','YYYY-MM-DD'), TO_DATE('2028-11-27','YYYY-MM-DD'), 3613.71, 'Annual Inspection', 'Extended manufacturer warranty with on-site service'),
(333, 206, TO_DATE('2023-12-08','YYYY-MM-DD'), TO_DATE('2024-12-07','YYYY-MM-DD'), 34376.35, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(334, 299, TO_DATE('2025-02-20','YYYY-MM-DD'), TO_DATE('2030-02-19','YYYY-MM-DD'), 29195.24, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(335, 391, TO_DATE('2022-04-14','YYYY-MM-DD'), TO_DATE('2024-04-13','YYYY-MM-DD'), 23586.22, 'Preventive', 'Preventive maintenance schedule with monthly visits'),
(336, 440, TO_DATE('2022-03-24','YYYY-MM-DD'), TO_DATE('2024-03-23','YYYY-MM-DD'), 3654.66, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(337, 145, TO_DATE('2024-02-05','YYYY-MM-DD'), TO_DATE('2026-02-04','YYYY-MM-DD'), 24632.45, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(338, 478, TO_DATE('2022-06-19','YYYY-MM-DD'), TO_DATE('2027-06-18','YYYY-MM-DD'), 36275.96, 'Parts Only', 'Emergency callout coverage during business hours only'),
(339, 332, TO_DATE('2025-09-27','YYYY-MM-DD'), TO_DATE('2027-09-27','YYYY-MM-DD'), 6211.27, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(340, 216, TO_DATE('2023-11-22','YYYY-MM-DD'), TO_DATE('2024-11-21','YYYY-MM-DD'), 39442.3, 'Labor Only', 'Extended manufacturer warranty with on-site service');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(341, 367, TO_DATE('2025-06-28','YYYY-MM-DD'), TO_DATE('2030-06-27','YYYY-MM-DD'), 34312.68, 'Annual Inspection', 'Extended manufacturer warranty with on-site service'),
(342, 402, TO_DATE('2022-03-30','YYYY-MM-DD'), TO_DATE('2024-03-29','YYYY-MM-DD'), 32931.55, 'Premium', 'Annual inspection and certification services'),
(343, 151, TO_DATE('2025-09-07','YYYY-MM-DD'), TO_DATE('2026-09-07','YYYY-MM-DD'), 21270.43, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(344, 169, TO_DATE('2023-11-06','YYYY-MM-DD'), TO_DATE('2025-11-05','YYYY-MM-DD'), 22570.59, 'Basic', 'Preventive maintenance schedule with monthly visits'),
(345, 208, TO_DATE('2023-04-23','YYYY-MM-DD'), TO_DATE('2026-04-22','YYYY-MM-DD'), 27905.79, 'Extended Warranty', 'Annual inspection and certification services'),
(346, 449, TO_DATE('2022-03-14','YYYY-MM-DD'), TO_DATE('2024-03-13','YYYY-MM-DD'), 27820.37, 'Basic', 'Emergency callout coverage during business hours only'),
(347, 202, TO_DATE('2023-04-14','YYYY-MM-DD'), TO_DATE('2028-04-12','YYYY-MM-DD'), 27228.94, 'Extended Warranty', 'Basic annual inspection with written report'),
(348, 190, TO_DATE('2025-01-21','YYYY-MM-DD'), TO_DATE('2027-01-21','YYYY-MM-DD'), 30434.08, 'Annual Inspection', 'Annual inspection and certification services'),
(349, 176, TO_DATE('2024-12-28','YYYY-MM-DD'), TO_DATE('2026-12-28','YYYY-MM-DD'), 21964.13, 'Preventive', '24/7 emergency support with 4-hour response time'),
(350, 141, TO_DATE('2025-09-11','YYYY-MM-DD'), TO_DATE('2027-09-11','YYYY-MM-DD'), 35758.96, 'Emergency Only', 'Parts replacement covered, labor billed at standard rate');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(351, 317, TO_DATE('2024-01-11','YYYY-MM-DD'), TO_DATE('2026-01-10','YYYY-MM-DD'), 17683.7, 'Preventive', 'Parts replacement covered, labor billed at standard rate'),
(352, 200, TO_DATE('2023-09-06','YYYY-MM-DD'), TO_DATE('2028-09-04','YYYY-MM-DD'), 16197.92, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(353, 337, TO_DATE('2024-08-26','YYYY-MM-DD'), TO_DATE('2025-08-26','YYYY-MM-DD'), 14064.77, 'Full Service', 'Basic annual inspection with written report'),
(354, 321, TO_DATE('2025-09-18','YYYY-MM-DD'), TO_DATE('2027-09-18','YYYY-MM-DD'), 37570.92, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(355, 349, TO_DATE('2022-11-21','YYYY-MM-DD'), TO_DATE('2024-11-20','YYYY-MM-DD'), 19661.67, 'Parts Only', 'Comprehensive coverage including consumables and filters'),
(356, 189, TO_DATE('2023-05-05','YYYY-MM-DD'), TO_DATE('2025-05-04','YYYY-MM-DD'), 24645.41, 'Emergency Only', 'Annual inspection and certification services'),
(357, 367, TO_DATE('2023-07-04','YYYY-MM-DD'), TO_DATE('2026-07-03','YYYY-MM-DD'), 19253.21, 'Emergency Only', 'Annual inspection and certification services'),
(358, 400, TO_DATE('2022-09-04','YYYY-MM-DD'), TO_DATE('2023-09-04','YYYY-MM-DD'), 47699.88, 'Full Service', 'Includes quarterly inspections and all replacement parts'),
(359, 157, TO_DATE('2024-01-24','YYYY-MM-DD'), TO_DATE('2025-01-23','YYYY-MM-DD'), 8190.73, 'Premium', 'Annual inspection and certification services'),
(360, 45, TO_DATE('2025-11-19','YYYY-MM-DD'), TO_DATE('2026-11-19','YYYY-MM-DD'), 10830.05, 'Basic', 'Basic annual inspection with written report');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(361, 427, TO_DATE('2023-12-15','YYYY-MM-DD'), TO_DATE('2028-12-13','YYYY-MM-DD'), 38246.84, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(362, 146, TO_DATE('2025-06-06','YYYY-MM-DD'), TO_DATE('2027-06-06','YYYY-MM-DD'), 42126.25, 'Preventive', 'Emergency callout coverage during business hours only'),
(363, 181, TO_DATE('2022-07-19','YYYY-MM-DD'), TO_DATE('2023-07-19','YYYY-MM-DD'), 3373.19, 'Annual Inspection', 'Basic annual inspection with written report'),
(364, 405, TO_DATE('2024-12-30','YYYY-MM-DD'), TO_DATE('2025-12-30','YYYY-MM-DD'), 32530.43, 'Basic', 'Includes quarterly inspections and all replacement parts'),
(365, 362, TO_DATE('2023-01-17','YYYY-MM-DD'), TO_DATE('2024-01-17','YYYY-MM-DD'), 4667.06, 'Annual Inspection', 'Includes quarterly inspections and all replacement parts'),
(366, 374, TO_DATE('2024-03-17','YYYY-MM-DD'), TO_DATE('2025-03-17','YYYY-MM-DD'), 24090.71, 'Labor Only', '24/7 emergency support with 4-hour response time'),
(367, 375, TO_DATE('2024-02-11','YYYY-MM-DD'), TO_DATE('2026-02-10','YYYY-MM-DD'), 15812.26, 'Basic', 'Preventive maintenance schedule with monthly visits'),
(368, 61, TO_DATE('2022-04-25','YYYY-MM-DD'), TO_DATE('2024-04-24','YYYY-MM-DD'), 14145.42, 'Full Service', 'Extended manufacturer warranty with on-site service'),
(369, 362, TO_DATE('2025-05-21','YYYY-MM-DD'), TO_DATE('2026-05-21','YYYY-MM-DD'), 28354.03, 'Emergency Only', 'Annual inspection and certification services'),
(370, 223, TO_DATE('2022-09-03','YYYY-MM-DD'), TO_DATE('2023-09-03','YYYY-MM-DD'), 27781.41, 'Labor Only', 'Annual inspection and certification services');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(371, 185, TO_DATE('2022-02-08','YYYY-MM-DD'), TO_DATE('2024-02-08','YYYY-MM-DD'), 6551.12, 'Premium', 'Comprehensive coverage including consumables and filters'),
(372, 354, TO_DATE('2023-07-14','YYYY-MM-DD'), TO_DATE('2025-07-13','YYYY-MM-DD'), 14754.7, 'Annual Inspection', 'Comprehensive coverage including consumables and filters'),
(373, 495, TO_DATE('2022-01-12','YYYY-MM-DD'), TO_DATE('2025-01-11','YYYY-MM-DD'), 14604.85, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(374, 256, TO_DATE('2024-01-30','YYYY-MM-DD'), TO_DATE('2026-01-29','YYYY-MM-DD'), 38203.67, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(375, 51, TO_DATE('2023-03-22','YYYY-MM-DD'), TO_DATE('2028-03-20','YYYY-MM-DD'), 41920.11, 'Full Service', 'Covers labor costs only, parts billed separately'),
(376, 26, TO_DATE('2022-01-05','YYYY-MM-DD'), TO_DATE('2024-01-05','YYYY-MM-DD'), 43157.13, 'Premium', 'Parts replacement covered, labor billed at standard rate'),
(377, 131, TO_DATE('2025-03-06','YYYY-MM-DD'), TO_DATE('2030-03-05','YYYY-MM-DD'), 43906.06, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(378, 261, TO_DATE('2025-02-12','YYYY-MM-DD'), TO_DATE('2026-02-12','YYYY-MM-DD'), 34697.56, 'Premium', 'Basic annual inspection with written report'),
(379, 263, TO_DATE('2025-10-31','YYYY-MM-DD'), TO_DATE('2026-10-31','YYYY-MM-DD'), 7611.17, 'Annual Inspection', 'Comprehensive coverage including consumables and filters'),
(380, 231, TO_DATE('2024-02-01','YYYY-MM-DD'), TO_DATE('2029-01-30','YYYY-MM-DD'), 18425.94, 'Basic', 'Parts replacement covered, labor billed at standard rate');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(381, 302, TO_DATE('2025-12-17','YYYY-MM-DD'), TO_DATE('2028-12-16','YYYY-MM-DD'), 29125.58, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(382, 190, TO_DATE('2022-01-19','YYYY-MM-DD'), TO_DATE('2025-01-18','YYYY-MM-DD'), 25701.91, 'Full Service', 'Annual inspection and certification services'),
(383, 265, TO_DATE('2024-05-19','YYYY-MM-DD'), TO_DATE('2026-05-19','YYYY-MM-DD'), 16608.91, 'Premium', 'Preventive maintenance schedule with monthly visits'),
(384, 156, TO_DATE('2023-04-29','YYYY-MM-DD'), TO_DATE('2024-04-28','YYYY-MM-DD'), 31414.41, 'Basic', 'Extended manufacturer warranty with on-site service'),
(385, 112, TO_DATE('2024-10-04','YYYY-MM-DD'), TO_DATE('2029-10-03','YYYY-MM-DD'), 43925.32, 'Premium', '24/7 emergency support with 4-hour response time'),
(386, 50, TO_DATE('2025-07-25','YYYY-MM-DD'), TO_DATE('2030-07-24','YYYY-MM-DD'), 8113.7, 'Labor Only', 'Covers labor costs only, parts billed separately'),
(387, 141, TO_DATE('2022-05-16','YYYY-MM-DD'), TO_DATE('2027-05-15','YYYY-MM-DD'), 27386.74, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(388, 41, TO_DATE('2024-09-16','YYYY-MM-DD'), TO_DATE('2025-09-16','YYYY-MM-DD'), 4728.11, 'Basic', 'Extended manufacturer warranty with on-site service'),
(389, 271, TO_DATE('2022-05-01','YYYY-MM-DD'), TO_DATE('2023-05-01','YYYY-MM-DD'), 8348.07, 'Full Service', 'Extended manufacturer warranty with on-site service'),
(390, 377, TO_DATE('2022-04-04','YYYY-MM-DD'), TO_DATE('2023-04-04','YYYY-MM-DD'), 6233.43, 'Parts Only', 'Parts replacement covered, labor billed at standard rate');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(391, 394, TO_DATE('2024-06-06','YYYY-MM-DD'), TO_DATE('2026-06-06','YYYY-MM-DD'), 44186.87, 'Basic', '24/7 emergency support with 4-hour response time'),
(392, 229, TO_DATE('2023-05-21','YYYY-MM-DD'), TO_DATE('2024-05-20','YYYY-MM-DD'), 14759.09, 'Full Service', 'Basic annual inspection with written report'),
(393, 224, TO_DATE('2022-02-26','YYYY-MM-DD'), TO_DATE('2023-02-26','YYYY-MM-DD'), 12693.62, 'Annual Inspection', 'Basic annual inspection with written report'),
(394, 361, TO_DATE('2022-06-30','YYYY-MM-DD'), TO_DATE('2027-06-29','YYYY-MM-DD'), 6025.97, 'Premium', '24/7 emergency support with 4-hour response time'),
(395, 194, TO_DATE('2023-10-07','YYYY-MM-DD'), TO_DATE('2024-10-06','YYYY-MM-DD'), 30003.15, 'Premium', 'Includes quarterly inspections and all replacement parts'),
(396, 80, TO_DATE('2023-02-27','YYYY-MM-DD'), TO_DATE('2025-02-26','YYYY-MM-DD'), 12197.72, 'Parts Only', 'Basic annual inspection with written report'),
(397, 300, TO_DATE('2023-10-13','YYYY-MM-DD'), TO_DATE('2024-10-12','YYYY-MM-DD'), 49709.51, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(398, 298, TO_DATE('2024-02-17','YYYY-MM-DD'), TO_DATE('2025-02-16','YYYY-MM-DD'), 40894.43, 'Full Service', '24/7 emergency support with 4-hour response time'),
(399, 421, TO_DATE('2022-04-04','YYYY-MM-DD'), TO_DATE('2023-04-04','YYYY-MM-DD'), 5904.14, 'Labor Only', 'Annual inspection and certification services'),
(400, 454, TO_DATE('2022-07-27','YYYY-MM-DD'), TO_DATE('2023-07-27','YYYY-MM-DD'), 36577.9, 'Preventive', '24/7 emergency support with 4-hour response time');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(401, 73, TO_DATE('2023-03-25','YYYY-MM-DD'), TO_DATE('2024-03-24','YYYY-MM-DD'), 23932.1, 'Basic', 'Annual inspection and certification services'),
(402, 351, TO_DATE('2024-08-01','YYYY-MM-DD'), TO_DATE('2026-08-01','YYYY-MM-DD'), 4209.62, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(403, 377, TO_DATE('2023-03-15','YYYY-MM-DD'), TO_DATE('2028-03-13','YYYY-MM-DD'), 2644.86, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(404, 418, TO_DATE('2022-09-08','YYYY-MM-DD'), TO_DATE('2024-09-07','YYYY-MM-DD'), 19285.47, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(405, 69, TO_DATE('2024-07-13','YYYY-MM-DD'), TO_DATE('2025-07-13','YYYY-MM-DD'), 2223.58, 'Premium', 'Annual inspection and certification services'),
(406, 170, TO_DATE('2023-12-11','YYYY-MM-DD'), TO_DATE('2025-12-10','YYYY-MM-DD'), 32066.42, 'Extended Warranty', 'Parts replacement covered, labor billed at standard rate'),
(407, 239, TO_DATE('2023-12-30','YYYY-MM-DD'), TO_DATE('2026-12-29','YYYY-MM-DD'), 45362.92, 'Full Service', 'Basic annual inspection with written report'),
(408, 195, TO_DATE('2023-07-07','YYYY-MM-DD'), TO_DATE('2025-07-06','YYYY-MM-DD'), 46522.29, 'Parts Only', 'Preventive maintenance schedule with monthly visits'),
(409, 472, TO_DATE('2022-05-08','YYYY-MM-DD'), TO_DATE('2024-05-07','YYYY-MM-DD'), 4919.62, 'Labor Only', 'Covers labor costs only, parts billed separately'),
(410, 164, TO_DATE('2022-05-10','YYYY-MM-DD'), TO_DATE('2024-05-09','YYYY-MM-DD'), 24598.27, 'Basic', 'Parts replacement covered, labor billed at standard rate');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(411, 468, TO_DATE('2022-12-01','YYYY-MM-DD'), TO_DATE('2023-12-01','YYYY-MM-DD'), 9462.79, 'Annual Inspection', 'Covers labor costs only, parts billed separately'),
(412, 304, TO_DATE('2023-07-24','YYYY-MM-DD'), TO_DATE('2026-07-23','YYYY-MM-DD'), 17714.25, 'Premium', 'Covers labor costs only, parts billed separately'),
(413, 462, TO_DATE('2022-03-10','YYYY-MM-DD'), TO_DATE('2025-03-09','YYYY-MM-DD'), 48472.31, 'Emergency Only', 'Basic annual inspection with written report'),
(414, 38, TO_DATE('2024-02-17','YYYY-MM-DD'), TO_DATE('2025-02-16','YYYY-MM-DD'), 18289.76, 'Labor Only', 'Emergency callout coverage during business hours only'),
(415, 465, TO_DATE('2023-08-22','YYYY-MM-DD'), TO_DATE('2024-08-21','YYYY-MM-DD'), 33821.4, 'Full Service', 'Covers labor costs only, parts billed separately'),
(416, 302, TO_DATE('2024-06-08','YYYY-MM-DD'), TO_DATE('2029-06-07','YYYY-MM-DD'), 19596.11, 'Premium', 'Comprehensive coverage including consumables and filters'),
(417, 361, TO_DATE('2023-02-25','YYYY-MM-DD'), TO_DATE('2028-02-24','YYYY-MM-DD'), 27183.92, 'Basic', 'Extended manufacturer warranty with on-site service'),
(418, 495, TO_DATE('2025-03-26','YYYY-MM-DD'), TO_DATE('2027-03-26','YYYY-MM-DD'), 25131.33, 'Full Service', 'Emergency callout coverage during business hours only'),
(419, 185, TO_DATE('2022-10-29','YYYY-MM-DD'), TO_DATE('2023-10-29','YYYY-MM-DD'), 32644.8, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(420, 435, TO_DATE('2023-10-26','YYYY-MM-DD'), TO_DATE('2025-10-25','YYYY-MM-DD'), 16452.14, 'Premium', 'Includes quarterly inspections and all replacement parts');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(421, 428, TO_DATE('2025-10-14','YYYY-MM-DD'), TO_DATE('2028-10-13','YYYY-MM-DD'), 31861.79, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(422, 44, TO_DATE('2023-02-14','YYYY-MM-DD'), TO_DATE('2025-02-13','YYYY-MM-DD'), 27536.81, 'Preventive', 'Covers labor costs only, parts billed separately'),
(423, 350, TO_DATE('2024-02-16','YYYY-MM-DD'), TO_DATE('2026-02-15','YYYY-MM-DD'), 28990.37, 'Basic', 'Basic annual inspection with written report'),
(424, 226, TO_DATE('2022-02-03','YYYY-MM-DD'), TO_DATE('2027-02-02','YYYY-MM-DD'), 38763.17, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(425, 313, TO_DATE('2023-05-27','YYYY-MM-DD'), TO_DATE('2024-05-26','YYYY-MM-DD'), 47036.15, 'Preventive', 'Parts replacement covered, labor billed at standard rate'),
(426, 101, TO_DATE('2022-03-04','YYYY-MM-DD'), TO_DATE('2024-03-03','YYYY-MM-DD'), 15006.28, 'Basic', 'Comprehensive coverage including consumables and filters'),
(427, 23, TO_DATE('2025-02-19','YYYY-MM-DD'), TO_DATE('2026-02-19','YYYY-MM-DD'), 46985.39, 'Annual Inspection', 'Comprehensive coverage including consumables and filters'),
(428, 483, TO_DATE('2025-12-24','YYYY-MM-DD'), TO_DATE('2030-12-23','YYYY-MM-DD'), 12499.31, 'Full Service', 'Covers labor costs only, parts billed separately'),
(429, 100, TO_DATE('2024-08-17','YYYY-MM-DD'), TO_DATE('2029-08-16','YYYY-MM-DD'), 31270.89, 'Basic', 'Comprehensive coverage including consumables and filters'),
(430, 324, TO_DATE('2023-11-11','YYYY-MM-DD'), TO_DATE('2026-11-10','YYYY-MM-DD'), 4869.6, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(431, 47, TO_DATE('2023-08-04','YYYY-MM-DD'), TO_DATE('2025-08-03','YYYY-MM-DD'), 11708.15, 'Emergency Only', 'Parts replacement covered, labor billed at standard rate'),
(432, 5, TO_DATE('2022-04-27','YYYY-MM-DD'), TO_DATE('2024-04-26','YYYY-MM-DD'), 36712.17, 'Emergency Only', 'Comprehensive coverage including consumables and filters'),
(433, 470, TO_DATE('2025-10-11','YYYY-MM-DD'), TO_DATE('2026-10-11','YYYY-MM-DD'), 8069.37, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits'),
(434, 403, TO_DATE('2023-10-30','YYYY-MM-DD'), TO_DATE('2025-10-29','YYYY-MM-DD'), 29039.29, 'Labor Only', 'Covers labor costs only, parts billed separately'),
(435, 285, TO_DATE('2024-12-18','YYYY-MM-DD'), TO_DATE('2025-12-18','YYYY-MM-DD'), 9720.6, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(436, 83, TO_DATE('2024-11-28','YYYY-MM-DD'), TO_DATE('2025-11-28','YYYY-MM-DD'), 26656.78, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(437, 358, TO_DATE('2022-07-08','YYYY-MM-DD'), TO_DATE('2023-07-08','YYYY-MM-DD'), 21457.85, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(438, 429, TO_DATE('2024-02-28','YYYY-MM-DD'), TO_DATE('2027-02-27','YYYY-MM-DD'), 44685.16, 'Basic', 'Extended manufacturer warranty with on-site service'),
(439, 269, TO_DATE('2023-12-28','YYYY-MM-DD'), TO_DATE('2024-12-27','YYYY-MM-DD'), 25851.07, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(440, 351, TO_DATE('2024-01-20','YYYY-MM-DD'), TO_DATE('2025-01-19','YYYY-MM-DD'), 2264.98, 'Annual Inspection', 'Emergency callout coverage during business hours only');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(441, 129, TO_DATE('2025-06-12','YYYY-MM-DD'), TO_DATE('2026-06-12','YYYY-MM-DD'), 49448.6, 'Parts Only', 'Includes quarterly inspections and all replacement parts'),
(442, 458, TO_DATE('2024-08-24','YYYY-MM-DD'), TO_DATE('2029-08-23','YYYY-MM-DD'), 30378.93, 'Basic', 'Includes quarterly inspections and all replacement parts'),
(443, 322, TO_DATE('2024-01-12','YYYY-MM-DD'), TO_DATE('2026-01-11','YYYY-MM-DD'), 40256.95, 'Full Service', 'Emergency callout coverage during business hours only'),
(444, 50, TO_DATE('2025-05-19','YYYY-MM-DD'), TO_DATE('2027-05-19','YYYY-MM-DD'), 20230.46, 'Labor Only', 'Comprehensive coverage including consumables and filters'),
(445, 160, TO_DATE('2024-08-16','YYYY-MM-DD'), TO_DATE('2027-08-16','YYYY-MM-DD'), 5637.43, 'Annual Inspection', '24/7 emergency support with 4-hour response time'),
(446, 386, TO_DATE('2022-07-28','YYYY-MM-DD'), TO_DATE('2023-07-28','YYYY-MM-DD'), 44548.69, 'Premium', '24/7 emergency support with 4-hour response time'),
(447, 11, TO_DATE('2023-09-30','YYYY-MM-DD'), TO_DATE('2026-09-29','YYYY-MM-DD'), 7558.39, 'Emergency Only', 'Emergency callout coverage during business hours only'),
(448, 313, TO_DATE('2023-04-15','YYYY-MM-DD'), TO_DATE('2024-04-14','YYYY-MM-DD'), 39013.19, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(449, 182, TO_DATE('2022-05-14','YYYY-MM-DD'), TO_DATE('2023-05-14','YYYY-MM-DD'), 39883.09, 'Full Service', 'Preventive maintenance schedule with monthly visits'),
(450, 132, TO_DATE('2023-04-18','YYYY-MM-DD'), TO_DATE('2024-04-17','YYYY-MM-DD'), 11628.3, 'Extended Warranty', 'Covers labor costs only, parts billed separately');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(451, 412, TO_DATE('2025-01-10','YYYY-MM-DD'), TO_DATE('2030-01-09','YYYY-MM-DD'), 12782.2, 'Emergency Only', 'Preventive maintenance schedule with monthly visits'),
(452, 342, TO_DATE('2025-07-06','YYYY-MM-DD'), TO_DATE('2030-07-05','YYYY-MM-DD'), 24110.6, 'Emergency Only', 'Includes quarterly inspections and all replacement parts'),
(453, 249, TO_DATE('2023-06-27','YYYY-MM-DD'), TO_DATE('2025-06-26','YYYY-MM-DD'), 39978.2, 'Parts Only', 'Annual inspection and certification services'),
(454, 186, TO_DATE('2024-02-28','YYYY-MM-DD'), TO_DATE('2026-02-27','YYYY-MM-DD'), 4356.44, 'Emergency Only', 'Covers labor costs only, parts billed separately'),
(455, 282, TO_DATE('2024-09-18','YYYY-MM-DD'), TO_DATE('2026-09-18','YYYY-MM-DD'), 16958.57, 'Extended Warranty', '24/7 emergency support with 4-hour response time'),
(456, 112, TO_DATE('2023-06-07','YYYY-MM-DD'), TO_DATE('2024-06-06','YYYY-MM-DD'), 21312.47, 'Premium', 'Parts replacement covered, labor billed at standard rate'),
(457, 421, TO_DATE('2022-07-06','YYYY-MM-DD'), TO_DATE('2024-07-05','YYYY-MM-DD'), 34912.61, 'Preventive', 'Comprehensive coverage including consumables and filters'),
(458, 341, TO_DATE('2024-04-19','YYYY-MM-DD'), TO_DATE('2027-04-19','YYYY-MM-DD'), 32039.91, 'Parts Only', 'Basic annual inspection with written report'),
(459, 96, TO_DATE('2024-08-18','YYYY-MM-DD'), TO_DATE('2025-08-18','YYYY-MM-DD'), 43127.1, 'Extended Warranty', 'Emergency callout coverage during business hours only'),
(460, 45, TO_DATE('2022-08-14','YYYY-MM-DD'), TO_DATE('2023-08-14','YYYY-MM-DD'), 44633.05, 'Annual Inspection', '24/7 emergency support with 4-hour response time');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(461, 108, TO_DATE('2025-07-08','YYYY-MM-DD'), TO_DATE('2027-07-08','YYYY-MM-DD'), 40244.42, 'Premium', 'Extended manufacturer warranty with on-site service'),
(462, 413, TO_DATE('2024-04-13','YYYY-MM-DD'), TO_DATE('2025-04-13','YYYY-MM-DD'), 26730.73, 'Full Service', '24/7 emergency support with 4-hour response time'),
(463, 147, TO_DATE('2023-05-14','YYYY-MM-DD'), TO_DATE('2025-05-13','YYYY-MM-DD'), 31738.9, 'Premium', 'Comprehensive coverage including consumables and filters'),
(464, 447, TO_DATE('2025-05-09','YYYY-MM-DD'), TO_DATE('2030-05-08','YYYY-MM-DD'), 30166.19, 'Basic', 'Covers labor costs only, parts billed separately'),
(465, 165, TO_DATE('2022-02-12','YYYY-MM-DD'), TO_DATE('2023-02-12','YYYY-MM-DD'), 8038.49, 'Annual Inspection', 'Includes quarterly inspections and all replacement parts'),
(466, 244, TO_DATE('2025-07-29','YYYY-MM-DD'), TO_DATE('2026-07-29','YYYY-MM-DD'), 4174.94, 'Full Service', 'Annual inspection and certification services'),
(467, 231, TO_DATE('2025-07-05','YYYY-MM-DD'), TO_DATE('2026-07-05','YYYY-MM-DD'), 14753.1, 'Labor Only', 'Annual inspection and certification services'),
(468, 264, TO_DATE('2023-08-31','YYYY-MM-DD'), TO_DATE('2026-08-30','YYYY-MM-DD'), 10095.82, 'Extended Warranty', 'Extended manufacturer warranty with on-site service'),
(469, 402, TO_DATE('2023-08-30','YYYY-MM-DD'), TO_DATE('2025-08-29','YYYY-MM-DD'), 33134.4, 'Extended Warranty', 'Annual inspection and certification services'),
(470, 28, TO_DATE('2022-01-01','YYYY-MM-DD'), TO_DATE('2024-12-31','YYYY-MM-DD'), 9547.4, 'Emergency Only', 'Extended manufacturer warranty with on-site service');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(471, 75, TO_DATE('2025-01-06','YYYY-MM-DD'), TO_DATE('2026-01-06','YYYY-MM-DD'), 19207.57, 'Extended Warranty', 'Preventive maintenance schedule with monthly visits'),
(472, 190, TO_DATE('2025-09-22','YYYY-MM-DD'), TO_DATE('2027-09-22','YYYY-MM-DD'), 23607.98, 'Parts Only', 'Emergency callout coverage during business hours only'),
(473, 356, TO_DATE('2025-01-25','YYYY-MM-DD'), TO_DATE('2026-01-25','YYYY-MM-DD'), 22558.98, 'Labor Only', 'Parts replacement covered, labor billed at standard rate'),
(474, 91, TO_DATE('2024-08-29','YYYY-MM-DD'), TO_DATE('2025-08-29','YYYY-MM-DD'), 23372.09, 'Premium', 'Emergency callout coverage during business hours only'),
(475, 249, TO_DATE('2023-09-17','YYYY-MM-DD'), TO_DATE('2025-09-16','YYYY-MM-DD'), 13763.93, 'Basic', 'Extended manufacturer warranty with on-site service'),
(476, 424, TO_DATE('2024-08-08','YYYY-MM-DD'), TO_DATE('2029-08-07','YYYY-MM-DD'), 29952.56, 'Parts Only', 'Annual inspection and certification services'),
(477, 319, TO_DATE('2025-03-17','YYYY-MM-DD'), TO_DATE('2026-03-17','YYYY-MM-DD'), 42557.49, 'Basic', 'Parts replacement covered, labor billed at standard rate'),
(478, 222, TO_DATE('2024-12-04','YYYY-MM-DD'), TO_DATE('2025-12-04','YYYY-MM-DD'), 37111.2, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(479, 160, TO_DATE('2024-05-02','YYYY-MM-DD'), TO_DATE('2026-05-02','YYYY-MM-DD'), 14719.53, 'Annual Inspection', 'Emergency callout coverage during business hours only'),
(480, 475, TO_DATE('2025-08-08','YYYY-MM-DD'), TO_DATE('2030-08-07','YYYY-MM-DD'), 22475.13, 'Basic', 'Annual inspection and certification services');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(481, 272, TO_DATE('2023-09-13','YYYY-MM-DD'), TO_DATE('2025-09-12','YYYY-MM-DD'), 33566.76, 'Labor Only', 'Extended manufacturer warranty with on-site service'),
(482, 20, TO_DATE('2023-08-04','YYYY-MM-DD'), TO_DATE('2025-08-03','YYYY-MM-DD'), 21683.98, 'Parts Only', '24/7 emergency support with 4-hour response time'),
(483, 117, TO_DATE('2024-02-06','YYYY-MM-DD'), TO_DATE('2027-02-05','YYYY-MM-DD'), 4943.38, 'Extended Warranty', 'Annual inspection and certification services'),
(484, 321, TO_DATE('2022-08-10','YYYY-MM-DD'), TO_DATE('2025-08-09','YYYY-MM-DD'), 41608.13, 'Premium', 'Basic annual inspection with written report'),
(485, 492, TO_DATE('2024-10-08','YYYY-MM-DD'), TO_DATE('2029-10-07','YYYY-MM-DD'), 44448.33, 'Preventive', 'Annual inspection and certification services'),
(486, 241, TO_DATE('2024-04-26','YYYY-MM-DD'), TO_DATE('2027-04-26','YYYY-MM-DD'), 7611.44, 'Emergency Only', '24/7 emergency support with 4-hour response time'),
(487, 211, TO_DATE('2023-12-19','YYYY-MM-DD'), TO_DATE('2024-12-18','YYYY-MM-DD'), 36351.08, 'Full Service', 'Basic annual inspection with written report'),
(488, 401, TO_DATE('2024-09-03','YYYY-MM-DD'), TO_DATE('2025-09-03','YYYY-MM-DD'), 28652.59, 'Extended Warranty', 'Covers labor costs only, parts billed separately'),
(489, 369, TO_DATE('2024-04-01','YYYY-MM-DD'), TO_DATE('2026-04-01','YYYY-MM-DD'), 16858.97, 'Parts Only', 'Parts replacement covered, labor billed at standard rate'),
(490, 500, TO_DATE('2024-03-14','YYYY-MM-DD'), TO_DATE('2026-03-14','YYYY-MM-DD'), 19429.06, 'Preventive', 'Extended manufacturer warranty with on-site service');

INSERT INTO MaintenanceContract (contract_id, supplier_id, start_date, end_date, annual_cost, contract_type, terms) VALUES
(491, 382, TO_DATE('2024-08-17','YYYY-MM-DD'), TO_DATE('2026-08-17','YYYY-MM-DD'), 41510.74, 'Labor Only', 'Includes quarterly inspections and all replacement parts'),
(492, 61, TO_DATE('2024-10-20','YYYY-MM-DD'), TO_DATE('2029-10-19','YYYY-MM-DD'), 38094.83, 'Parts Only', 'Covers labor costs only, parts billed separately'),
(493, 403, TO_DATE('2024-09-22','YYYY-MM-DD'), TO_DATE('2026-09-22','YYYY-MM-DD'), 22950.31, 'Labor Only', 'Emergency callout coverage during business hours only'),
(494, 370, TO_DATE('2023-02-22','YYYY-MM-DD'), TO_DATE('2025-02-21','YYYY-MM-DD'), 5429.34, 'Full Service', 'Comprehensive coverage including consumables and filters'),
(495, 392, TO_DATE('2023-03-21','YYYY-MM-DD'), TO_DATE('2025-03-20','YYYY-MM-DD'), 12226.69, 'Basic', 'Includes quarterly inspections and all replacement parts'),
(496, 441, TO_DATE('2025-09-16','YYYY-MM-DD'), TO_DATE('2027-09-16','YYYY-MM-DD'), 17487.84, 'Premium', 'Basic annual inspection with written report'),
(497, 404, TO_DATE('2024-12-12','YYYY-MM-DD'), TO_DATE('2029-12-11','YYYY-MM-DD'), 9007.48, 'Parts Only', 'Extended manufacturer warranty with on-site service'),
(498, 493, TO_DATE('2022-01-18','YYYY-MM-DD'), TO_DATE('2024-01-18','YYYY-MM-DD'), 26218.69, 'Extended Warranty', 'Basic annual inspection with written report'),
(499, 473, TO_DATE('2025-04-25','YYYY-MM-DD'), TO_DATE('2026-04-25','YYYY-MM-DD'), 19676.49, 'Labor Only', 'Preventive maintenance schedule with monthly visits'),
(500, 157, TO_DATE('2023-05-08','YYYY-MM-DD'), TO_DATE('2026-05-07','YYYY-MM-DD'), 27166.17, 'Labor Only', 'Preventive maintenance schedule with monthly visits');

