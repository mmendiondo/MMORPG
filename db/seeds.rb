# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Usuario.create(mail: 'matias_mendiondo@hotmail.com', password: 'Martin1234')

TipoPersonaje.create(nombre:'guerrero', descripcion:'un loco malo', imagen:'url...')

TipoItem.create(nombre:'espada')

Personaje.create(usuario_id: Usuario.first.id, nombre: 'mendiond', ataque: '1', defenza:'1',nivel:'1', experiencia: '0', especie: 'humano', familia: 'mendi', oro:'100', locacion_id: '1', vida: '100', vida_perdida:'0', tipo: TipoPersonaje.first.id)

Item.create(nombre:'espada', ataque:'1', defenza:'0', dureza:'100', nivel:'1', especie:'arma', valor:'1', imagen:'url...')

Locacion.create(nombre: 'xuae riad', imagen:'url...', distancia:'0')

PersonajeItem.create(item_id: Item.first.id, personaje_id:Personaje.first.id, equipado:'1', danio:'0')

Mision.create(nombre: 'ayuda a tu gente', descripcion:'protege a los aldeanos de la xuae raid', experiencia:'10', oro:'100', repetible:'0', nivel_necesario:'1', es_principal:'1', locacion_id: Locacion.first.id)

PersonajeMision.create(personaje_id: Personaje.first.id, mision_id:Mision.first.id, finalizada:'1')

MisionMision.create(mision_id:Mision.first.id)

RegistroPelea.create(personaje_id:Personaje.first.id, personaje_enemigo_id:'0', ganador_id:Personaje.first.id, perdedor_id:'0', danio_ganador:'0', danio_perdedor:'100',)

