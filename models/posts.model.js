// Conectamos con la base de datos
const getAll = () => {
    return db.query('select * from Posts as p join Autores as a on p.autor_id=a.id');
}

const getAllPostsFrom = (author_id) => {
    return db.query('select * from Posts as p join Autores as a on p.autor_id=a.id where autor_id= ?', [author_id]);
}

const create = ({ titulo, descripcion, fecha, categoria, autor_id}) => {
    return db.query(
        'insert into Posts (titulo, descripcion, fecha, categoria, autor_id) values ( ?, ?, ?, ?, ?)',
        [titulo, descripcion, fecha, categoria, autor_id]
    );
}

module.exports = {
    getAll, create, getAllPostsFrom
}