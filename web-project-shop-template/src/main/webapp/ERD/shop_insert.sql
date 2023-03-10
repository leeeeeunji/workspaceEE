/**********************member insert************************/
insert into userinfo(userid,password,name,email) values('guard1','1111','김경호1','guard1@korea.com');
insert into userinfo(userid,password,name,email) values('guard2','2222','김경호2','guard2@korea.com');
insert into userinfo(userid,password,name,email) values('guard3','3333','김경호3','guard3@korea.com');

/**********************product insert************************/

insert into product values(product_p_no_SEQ.nextval, '비글', 550000, 'bigle.png','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '달마시안', 500000, 'dalma.jpg','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '퍼그', 400000, 'pug.jpg','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '페키니즈', 450000, 'pekiniz.png','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '포메라니안', 800000, 'pomeranian.jpg','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '샤페이', 700000, 'shaipei.jpg','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '닥스훈트', 800000, 'dachshund.jpg','기타 상세 정보 등...', 0);
insert into product values(product_p_no_SEQ.nextval, '사모예드', 800000, 'samoyed.jpg','기타 상세 정보 등...', 0);


/**********************cart insert************************/
--guard1님 1번 2개, 3번 1개, 7번 3개 제품 담기
insert into cart(cart_no, userId, p_no, cart_qty) values(cart_cart_no_seq.nextval, 'guard1', 1, 2);
insert into cart(cart_no, userId, p_no, cart_qty) values(cart_cart_no_seq.nextval, 'guard1', 3, 1);
insert into cart(cart_no, userId, p_no, cart_qty) values(cart_cart_no_seq.nextval, 'guard1', 7, 3);

--guard2님 1번 2개, 3번 1개 제품 담기
insert into cart(cart_no, userId, p_no, cart_qty) values(cart_cart_no_seq.nextval, 'guard1', 1, 2);
insert into cart(cart_no, userId, p_no, cart_qty) values(cart_cart_no_seq.nextval, 'guard1', 3, 1);



/**********************orders insert************************/
--guard1
--제품 상세보기에서 주문
insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외0종',sysdate,550000,'guard1');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);

--카트에서 주문
insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외2종',sysdate,1800000,'guard1');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,3);

insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외4종',sysdate,5000000,'guard1');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,3);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,4);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,5);

--guard2
--제품 상세보기에서 주문
insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외0종',sysdate,550000,'guard2');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);

--카트에서 주문
insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외2종',sysdate,1800000,'guard2');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,1);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,3);


insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'페키니즈외1종',sysdate,1450000,'guard1');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,4);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,2,orders_o_no_SEQ.currval,2);



insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'달마시안외0종',sysdate-1,500000,'guard2');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);

insert into orders(o_no,o_desc,o_date,o_price,userid) values (orders_o_no_SEQ.nextval,'비글외1종',sysdate,1000000,'guard2');
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,2);
insert into order_item(oi_no,oi_qty,o_no,p_no) values(order_item_oi_no_SEQ.nextval,1,orders_o_no_SEQ.currval,4);


commit;
desc order_item;


