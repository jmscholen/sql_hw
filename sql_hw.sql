sql_hw.sql

 SELECT * FROM professors, subjects, courses;

  SELECT professors.id, courses.name, subjects.name FROM Professors, Courses, Subjects;

  SELECT professors.name, courses.name FROM Professors JOIN Courses where professors.subject_id = courses.subject_id;

 SELECT professors.name FROM professors JOIN courses ON professors.subject_id = courses.subject_id JOIN subjects ON courses.subject_id = subjects.id WHERE subjects.name = "English";

 SELECT courses.name, professors.name FROM Courses JOIN Professors INNER JOIN Subjects ON subjects.id = professors.subject_id;