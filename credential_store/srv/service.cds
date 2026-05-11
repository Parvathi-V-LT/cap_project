namespace stud.srv;

using {stud.db as db } from '../db/schema';
service api {
    entity students as projection on db.student;
}