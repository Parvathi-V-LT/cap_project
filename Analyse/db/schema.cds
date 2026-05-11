namespace my.sales;

entity Sales {
    key ID    : String;
    product   : String;
    region    : String;
    amount    : Decimal(10,2);
    date      : Date;
}