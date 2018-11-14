ALTER TABLE `cart`
 ADD CONSTRAINT `cart_FK` FOREIGN KEY ( `customer_ID` )
 REFERENCES person (`ID` );

ALTER TABLE `cart`
 ADD CONSTRAINT `cart_FK1` FOREIGN KEY ( `p_code`,`seller_ID` )
 REFERENCES sell_list (`p_code`,`seller_ID` );



ALTER TABLE `favorites`
 ADD CONSTRAINT `favorites_FK` FOREIGN KEY ( `p_code`,`seller_ID` )
 REFERENCES sell_list (`p_code`,`seller_ID` );

ALTER TABLE `favorites`
 ADD CONSTRAINT `favorites_FK1` FOREIGN KEY ( `customer_ID` )
 REFERENCES person (`ID` );



ALTER TABLE `log`
 ADD CONSTRAINT `log_FK` FOREIGN KEY ( `seller_ID` )
 REFERENCES person (`ID` ) ON UPDATE CASCADE;

ALTER TABLE `log`
 ADD CONSTRAINT `log_FK1` FOREIGN KEY ( `p_code`,`customer_ID`,`seller_ID` )
 REFERENCES cart (`p_code`,`customer_ID`,`seller_ID` );



ALTER TABLE `product`
 ADD CONSTRAINT `product_UK` UNIQUE ( `p_name` );



ALTER TABLE `sell_list`
 ADD CONSTRAINT `sell_list_FK` FOREIGN KEY ( `p_code` )
 REFERENCES product (`p_code` );

ALTER TABLE `sell_list`
 ADD CONSTRAINT `sell_list_FK1` FOREIGN KEY ( `seller_ID` )
 REFERENCES person (`ID` );



ALTER TABLE `type`
 ADD CONSTRAINT `type_FK` FOREIGN KEY ( `c_code` )
 REFERENCES category (`c_code` );

ALTER TABLE `type`
 ADD CONSTRAINT `type_FK1` FOREIGN KEY ( `p_code` )
 REFERENCES product (`p_code` );