USE ssmbuild;

CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `dept_name` varchar(255) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `emp_name` varchar(255) NOT NULL COMMENT '员工名称',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `d_id` int(11) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;