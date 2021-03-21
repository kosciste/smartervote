create table question (
    id uuid,
    text varchar(255),
    creation_time timestamp,
    change_time timestamp
);

insert into question values ('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'What is the purpose of life?', current_timestamp, current_timestamp);