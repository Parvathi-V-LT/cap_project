using my.sales as db from '../db/schema';

service SalesService {
    entity Sales as projection on db.Sales;
}