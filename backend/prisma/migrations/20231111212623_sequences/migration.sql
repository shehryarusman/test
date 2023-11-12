CREATE SEQUENCE IF NOT EXISTS Gender_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS Country_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS User_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS Interactions_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS UserInteractions_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS UserDiscoverPeopleHistory_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS ChatType_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS Chat_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS PrivateChat_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS GroupChat_id_seq start 1;
CREATE SEQUENCE IF NOT EXISTS Messages_id_seq start 1;

select setval('Gender_id_seq',(select max(id) from "Gender"));
select setval('Country_id_seq',(select max(id) from "Country"));
select setval('User_id_seq',(select max(id) from "User"));
select setval('Interactions_id_seq',(select max(id) from "Interactions"));
select setval('UserInteractions_id_seq',(select max(id) from "UserInteractions"));
select setval('UserDiscoverPeopleHistory_id_seq',(select max(id) from "UserDiscoverPeopleHistory"));
select setval('ChatType_id_seq',(select max(id) from "ChatType"));
select setval('Chat_id_seq',(select max(id) from "Chat"));
select setval('PrivateChat_id_seq',(select max(id) from "PrivateChat"));
select setval('GroupChat_id_seq',(select max(id) from "GroupChat"));
select setval('Messages_id_seq',(select max(id) from "Messages"));

ALTER TABLE "Gender" ALTER COLUMN id SET DEFAULT nextval('Gender_id_seq');
ALTER TABLE "Country" ALTER COLUMN id SET DEFAULT nextval('Country_id_seq');
ALTER TABLE "User" ALTER COLUMN id SET DEFAULT nextval('User_id_seq');
ALTER TABLE "Interactions" ALTER COLUMN id SET DEFAULT nextval('Interactions_id_seq');
ALTER TABLE "UserInteractions" ALTER COLUMN id SET DEFAULT nextval('UserInteractions_id_seq');
ALTER TABLE "UserDiscoverPeopleHistory" ALTER COLUMN id SET DEFAULT nextval('UserDiscoverPeopleHistory_id_seq');
ALTER TABLE "ChatType" ALTER COLUMN id SET DEFAULT nextval('ChatType_id_seq');
ALTER TABLE "Chat" ALTER COLUMN id SET DEFAULT nextval('Chat_id_seq');
ALTER TABLE "PrivateChat" ALTER COLUMN id SET DEFAULT nextval('PrivateChat_id_seq');
ALTER TABLE "GroupChat" ALTER COLUMN id SET DEFAULT nextval('GroupChat_id_seq');
ALTER TABLE "Messages" ALTER COLUMN id SET DEFAULT nextval('Messages_id_seq');