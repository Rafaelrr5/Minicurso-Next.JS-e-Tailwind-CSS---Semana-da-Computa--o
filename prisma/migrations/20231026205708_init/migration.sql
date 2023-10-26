-- CreateTable
CREATE TABLE "Treino" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "label" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Interval" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "label" TEXT NOT NULL,
    "seconds" INTEGER NOT NULL,
    "intensity" INTEGER NOT NULL,
    "treinoId" TEXT NOT NULL,
    CONSTRAINT "Interval_treinoId_fkey" FOREIGN KEY ("treinoId") REFERENCES "Treino" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Treino_id_key" ON "Treino"("id");

-- CreateIndex
CREATE UNIQUE INDEX "Interval_id_key" ON "Interval"("id");
