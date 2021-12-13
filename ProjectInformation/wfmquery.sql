use wfm;
-- Manager Screen

ALTER TABLE `wfm`.`skillmap` 
RENAME TO  `wfm`.`skillmaps` ;

ALTER TABLE `wfm`.`employees` 
ADD PRIMARY KEY (`employee_id`);

-- Soft lock request
ALTER TABLE `wfm`.`softlock` 
ADD CONSTRAINT `sl-emp-key`
FOREIGN KEY (`employee_id`)
REFERENCES `wfm`.`employee` (`employee_id`);

ALTER TABLE `wfm`.`softlock` 
RENAME TO  `wfm`.`softlocks` ;










