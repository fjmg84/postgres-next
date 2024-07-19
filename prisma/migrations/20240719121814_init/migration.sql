-- CreateTable
CREATE TABLE "Pets" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "owner" TEXT,
    "age" INTEGER,

    CONSTRAINT "Pets_pkey" PRIMARY KEY ("id")
);
