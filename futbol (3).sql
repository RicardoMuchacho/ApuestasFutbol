CREATE TABLE "usuarios" (
  "id_usuario" SERIAL PRIMARY KEY,
  "nombre" varchar,
  "pais" varchar,
  "fecha_nacimiento" date
);

CREATE TABLE "apuestas" (
  "id_apuesta" SERIAL PRIMARY KEY,
  "id_usuario" integer,
  "id_partido" integer,
  "id_jugador" integer,
  "monto_apuesta" float,
  "goles_mitad1_local" integer,
  "goles_mitad2_local" integer,
  "goles_mitad1_visitante" integer,
  "goles_mitad2_visitante" integer
);

CREATE TABLE "resultados_apuestas" (
  "id_resultado_apuesta" SERIAL PRIMARY KEY,
  "id_apuesta" integer,
  "ganada" boolean,
  "empatada" boolean DEFAULT false,
  "monto_ganado_perdido" integer
);

CREATE TABLE "paises" (
  "id_pais" SERIAL PRIMARY KEY,
  "pais" varchar
);

CREATE TABLE "ligas" (
  "id_liga" SERIAL PRIMARY KEY,
  "nombre" varchar,
  "id_pais" integer
);

CREATE TABLE "equipos" (
  "id_equipo" SERIAL PRIMARY KEY,
  "nombre" varchar,
  "id_liga" integer
);

CREATE TABLE "partidos" (
  "id_partido" SERIAL PRIMARY KEY,
  "id_equipo_local" integer,
  "id_equipo_visitante" integer,
  "id_liga" integer,
  "id_estadio" integer,
  "fecha" date,
  "temporada" varchar,
  "probabilidad_local" float
);

CREATE TABLE "estadios" (
  "id_estadio" SERIAL PRIMARY KEY,
  "nombre" varchar
);

CREATE TABLE "resultados_partidos" (
  "id_resultado" SERIAL PRIMARY KEY,
  "id_partido" integer,
  "puntaje_local" integer,
  "puntaje_visitante" integer
);

CREATE TABLE "jugadores" (
  "id_jugador" SERIAL PRIMARY KEY,
  "nombre" varchar,
  "posicion" varchar
);

CREATE TABLE "fichajes" (
  "id_fichaje" SERIAL PRIMARY KEY,
  "comienzo_contrato" date,
  "final_contrato" date,
  "id_jugador" integer,
  "id_equipo" integer
);

CREATE TABLE "goles" (
  "id_gol" SERIAL PRIMARY KEY,
  "id_jugador" integer,
  "id_partido" integer,
  "id_liga" integer
);

ALTER TABLE "apuestas" ADD FOREIGN KEY ("id_usuario") REFERENCES "usuarios" ("id_usuario");

ALTER TABLE "apuestas" ADD FOREIGN KEY ("id_partido") REFERENCES "partidos" ("id_partido");

ALTER TABLE "resultados_apuestas" ADD FOREIGN KEY ("id_apuesta") REFERENCES "apuestas" ("id_apuesta");

ALTER TABLE "ligas" ADD FOREIGN KEY ("id_pais") REFERENCES "paises" ("id_pais");

ALTER TABLE "equipos" ADD FOREIGN KEY ("id_liga") REFERENCES "ligas" ("id_liga");

ALTER TABLE "partidos" ADD FOREIGN KEY ("id_equipo_local") REFERENCES "equipos" ("id_equipo");

ALTER TABLE "partidos" ADD FOREIGN KEY ("id_equipo_visitante") REFERENCES "equipos" ("id_equipo");

ALTER TABLE "partidos" ADD FOREIGN KEY ("id_liga") REFERENCES "ligas" ("id_liga");

ALTER TABLE "partidos" ADD FOREIGN KEY ("id_estadio") REFERENCES "estadios" ("id_estadio");

ALTER TABLE "resultados_partidos" ADD FOREIGN KEY ("id_partido") REFERENCES "partidos" ("id_partido");

ALTER TABLE "fichajes" ADD FOREIGN KEY ("id_jugador") REFERENCES "jugadores" ("id_jugador");

ALTER TABLE "fichajes" ADD FOREIGN KEY ("id_equipo") REFERENCES "equipos" ("id_equipo");

ALTER TABLE "goles" ADD FOREIGN KEY ("id_partido") REFERENCES "partidos" ("id_partido");

ALTER TABLE "goles" ADD FOREIGN KEY ("id_liga") REFERENCES "jugadores" ("id_jugador");
