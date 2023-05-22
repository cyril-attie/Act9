

const getAll = () => {
    return db.query(
        'Select * from Autores;'
    );
}


const create = ({ nombre, email, imagen}) => {
    return db.query(
        'insert into Autores (nombre, email, imagen) values (?, ?, ?)',
        [nombre, email,imagen]
    );
}



module.exports = {
    getAll, create
}